#include 		"RF2400P.h"


#define BANK0_REG_LIST_CNT			21
#define BANK0_REGACT_LIST_CNT		2

volatile 	uint8_t 	g_RFIRQValid = FALSE;
volatile 	uint8_t 	g_DelayTick = 0;


volatile 	uint8_t 	g_RFRecvBuff[RFPKT_LEN];
volatile 	uint8_t 	g_RFSendBuff[RFPKT_LEN];

/*Bank1 register initialization value*/
//Reg0 to Reg13
const uint32_t Bank1_Reg0_13[]={
	0xE2014B40,
	0x00004BC0,
	0x028CFCD0,
	0x41390099,
	0x0B869ED9,     //Change REG4[29:27] from 00 to 11
	//0x21869ED9,   //For single carrier mode
	0xA67F0624,     //Disable RSSI measurement
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00000000,
	0x00127300,
	0x36B48000,
};
//Reg14,    Ramp curve
uint8_t Bank1_Reg14[11]=
	{
	0x41,0x20,0x08,0x04,0x81,0x20,0xCF,0xF7,0xFE,0xFF,0xFF
	};

/*Bank0 register initialization value*/
const uint8_t Bank0_Reg[BANK0_REG_LIST_CNT][2]={
	{CONFIG_REG,		0x0F},	//Power up, PRX
	{EN_AA_REG,			0x01},	//Enable pipe0 auto ACK
	{EN_RXADDR_REG,		0x01},	//Enable data pipe 0
	{SETUP_AW_REG,		0x03},	//Address width = 5Bytes
	{SETUP_RETR_REG,	0x25},	//Retransmit, ARD = 750us, ARC = 5
	{RF_CH_REG,			0x20},	//channel = 60
	{RF_SETUP_REG,		0x15},	//1Mbps data rate, output power=0dBm 
	{STATUS_REG,		0x70},	
	{OBSERVE_TX_REG,	0x00},	
	{CD_REG,			0x00},
	{RX_ADDR_P2_REG,	0xC3},
	{RX_ADDR_P3_REG,	0xC4},
	{RX_ADDR_P4_REG,	0xC5},
	{RX_ADDR_P5_REG,	0xC6},
	{RX_PW_P0_REG,		0x20},	//RX Payload Length = 32
	{RX_PW_P1_REG,		0x20},
	{RX_PW_P2_REG,		0x20},
	{RX_PW_P3_REG,		0x20},
	{RX_PW_P4_REG,		0x20},
	{RX_PW_P5_REG,		0x20},
	{FIFO_STATUS_REG,	0x11} 
};

const uint8_t Bank0_RegAct[BANK0_REGACT_LIST_CNT][2] = {
	{DYNPD_REG,		0x01},	//Enable pipe 0, Dynamic payload length
	{FEATURE_REG,	0x04}	//EN_DPL= 1, EN_ACK_PAY = 0, EN_DYN_ACK = 0
};

/*The Rx Address 5 bytes*/
const uint8_t RX_Address[5] = { 0x3a, 0x3b, 0x3c, 0x3d, 0x01 };

/*The Tx Address 5 bytes*/
const uint8_t TX_Address[5] = { 0x3a, 0x3b, 0x3c, 0x3d, 0x01 };

 //--------------Commands----------------
void RF2400P_Write_1byte_reg	(uint8_t reg, uint8_t value)
 	{
	SS_LOW;
	RF2400P_SPI_Write_read (reg | RF_WRITE_REG );
	RF2400P_SPI_Write_read (value);
	SS_HIGH;
	}

uint8_t RF2400P_Read_1byte_reg (uint8_t reg)
	{
	uint8_t	result;
	SS_LOW;
	RF2400P_SPI_Write_read (reg);
	result = RF2400P_SPI_Write_read (0xFF);
	SS_HIGH;
	return result;
	}

uint8_t RF2400P_Exe_command 	(uint8_t command, uint8_t argument)
	{
	
	uint8_t result;
	SS_LOW;
	RF2400P_SPI_Write_read (command);
	result = RF2400P_SPI_Write_read (argument);
	SS_HIGH;	
	return result ;	
	}

 void RF2400P_Switch_to_rx_mode (void)
	{
	uint8_t value;
	RF2400P_Write_1byte_reg (FLUSH_RX,0);
	value = RF2400P_Read_1byte_reg (STATUS_REG);
	RF2400P_Write_1byte_reg (STATUS_REG,value); //clear RX_DR or TX_DS or MAX_RT interrupt flag

	CE_LOW;
	value = RF2400P_Read_1byte_reg (CONFIG_REG);
	value |=RX_MODE;
	RF2400P_Write_1byte_reg (CONFIG_REG, value);
	CE_HIGH;
	}

void RF2400P_Switch_to_tx_mode (void)
	{
	uint8_t value;
	RF2400P_Exe_command (FLUSH_TX,0);
	CE_LOW;
	value = RF2400P_Read_1byte_reg (CONFIG_REG);
	value &= ~RX_MODE;
	RF2400P_Write_1byte_reg (CONFIG_REG, value);
	CE_HIGH;
	}

void RF2400P_Switch_bank (uint8_t bank)	  //1:bank1, 0:bank0
	{
	uint8_t	temp = 0;
	temp = RF2400P_Read_1byte_reg(0x07);
	if ( (bank && (!temp)) ||((!bank) && temp))
		{
		RF2400P_Exe_command (ACTIVATE_CMD,0x53);
		}
	RF2400P_Read_1byte_reg(0x07);
	};


//reads result of command to buffer, length - length of buffer4
void RF2400P_Read_buffer (uint8_t reg, uint8_t *buffer, uint8_t length)
	{
	SS_LOW;
	RF2400P_SPI_Write_read(reg); 
	while (length--)
		{
		//while ((SPI1->SR & SPI_SR_RXNE) != SPI_SR_RXNE)
		*buffer = RF2400P_SPI_Write_read (0xFF);;
		};
	SS_HIGH;
	}

//writes command and buffer to module
void RF2400P_Write_buffer (uint8_t reg, uint8_t *buffer, uint8_t length)
	{
	SS_LOW;
	RF2400P_SPI_Write_read (reg );
	while (length--)
		{
		RF2400P_SPI_Write_read ( *buffer++);
		};
	SS_HIGH;
	}				 
	
				  

void RF2400P_init ()
	{
	signed char i,j;
	uint8_t rData;	
	uint8_t WriteArr[4];
	delay_ms(100);
	RF2400P_Switch_bank (0);
	for (i = (BANK0_REG_LIST_CNT-1);i >= 0;i--)
		{
		RF2400P_Write_1byte_reg (Bank0_Reg[i][0],Bank0_Reg[i][1]);
		rData = RF2400P_Read_1byte_reg ( Bank0_Reg[i][0]);
		}

	    //reg 10 - Rx0 addr
    RF_SET_RX_ADDR( (uint8_t *)RX_Address );

    //REG 16 - TX addr
    RF_SET_TX_ADDR( (uint8_t *)TX_Address );
	i =  RF2400P_Read_1byte_reg (0x1D);
	if (i==0)
		{
		RF2400P_Exe_command (ACTIVATE_CMD, 0x73);
		}
	for (i = (BANK0_REGACT_LIST_CNT - 1); i >= 0; i--)
		{
		RF2400P_Write_1byte_reg (Bank0_RegAct[i][0],Bank0_RegAct[i][1]);
		RF2400P_Read_1byte_reg ( Bank0_RegAct[i][0]);
		}

	RF2400P_Switch_bank(1);

    for( i = 0; i <= 8; i++ )//reverse
    	{
        for( j = 0; j < 4; j++ )
        	{
            WriteArr[ j ] = ( Bank1_Reg0_13[i] >> ( 8 * (j) ) ) & 0xff;
        	}

        RF2400P_Write_buffer(RF_WRITE_REG| i, &(WriteArr[0]), 4 );
    	}

    for( i = 9; i <= 13; i++ )
   		{
        for( j = 0; j < 4; j++ )
        	{
            WriteArr[j] = ( Bank1_Reg0_13[i] >> ( 8 * ( 3 - j ) ) ) & 0xff;
        	}
        RF2400P_Write_buffer( RF_WRITE_REG|i, &(WriteArr[0]), 4 );
    	}

    RF2400P_Write_buffer(RF_WRITE_REG| 14, (uint8_t *)&(Bank1_Reg14[0]), 11 );

    //toggle REG4<25,26>
    for( j = 0; j < 4; j++ )
    	{
        WriteArr[j] = ( Bank1_Reg0_13[4] >> ( 8 * (j) ) ) & 0xff;
    	}

    WriteArr[0] = WriteArr[0] | 0x06;
    RF2400P_Write_buffer(RF_WRITE_REG|  4, &(WriteArr[0]), 4 );

    WriteArr[0] = WriteArr[0] & 0xf9;
    RF2400P_Write_buffer(RF_WRITE_REG| 4 , &(WriteArr[0] ), 4 );

    delay_ms( 100 );

//********************switch back to Bank0 register access******************
    RF2400P_Switch_bank( 0 );

    RF2400P_Switch_to_rx_mode ();//switch to RX mode

    RF_FLUSH_RX();
    RF_FLUSH_TX();

	}

void RF2400P_WriteTxPayload( uint8_t* pbuf, uint8_t len )
	{
    RF2400P_Write_buffer( WR_TX_PLOAD, pbuf, len ); // Writes data to TX FIFO
	}

/*****************************************************************************************
Function:       void RF_WriteAckPayload( uint8_t* pbuf, uint8_t len )
Parameter: 
                pbuf    [IN]    data buffer
                len     [IN]    data buffer length
Return: 
                None 
Description:
	            Write data to ACK FIFO
*****************************************************************************************/
void RF2400P_WriteAckPayload( uint8_t* pbuf, uint8_t len )
	{
    RF2400P_Write_buffer( W_ACK_PAYLOAD_CMD, pbuf, len ); // Writes data to ACK FIFO
	}


/*****************************************************************************************
Function:       uint8_t RF_ReadRxPayload( uint8_t *pbuf, uint8_t maxlen )
Parameter: 
                pbuf    [OUT]    receive data buffer
                len     [IN]    data buffer max length
Return: 
                The count wrote to buffer 
Description:
	            Read received data from RX FIFO
*****************************************************************************************/
uint8_t RF2400P_ReadRxPayload( uint8_t *pbuf, uint8_t maxlen )
	{
    uint8_t i = 0;
	uint8_t len = RF_GET_RX_PL_LEN();	        //Get Top of fifo packet length

	if( len > maxlen )
		{
		len = maxlen;
		}

    for ( i = 0; i < maxlen; i++ )          //Clear buffer
    	{
        pbuf[ i ] = 0;
   	 }

	RF2400P_Read_buffer(RD_RX_PLOAD, pbuf, len);   // read receive payload from RX_FIFO buffer
	
	return len;
	}



void RF2400P_SendPacket( uint8_t Key )
	{
    uint8_t sta;
    uint16_t temp = 100;

    g_RFSendBuff[0] = Key;

    RF2400P_Switch_to_tx_mode();   //Set RF to TX mode

    CE_LOW;
    RF2400P_Write_buffer(WR_TX_PLOAD, (uint8_t *)&g_RFSendBuff, RFPKT_LEN); // Writes data to TX FIFO
    g_RFIRQValid = FALSE;
    CE_HIGH;
    while( temp-- );    //Wait for Time > 10us
    CE_LOW;

    //Wait for send over
    g_DelayTick = 0;

    while( 1 )
    	{
	    if( g_RFIRQValid )
			{
            sta = RF2400P_Read_1byte_reg( STATUS_REG );   // read register STATUS's value
    
            if( (sta & STATUS_TX_DS) || (sta & STATUS_MAX_RT) )    //TX IRQ?
            	{
                if( sta & STATUS_MAX_RT )   //if send fail
                	{
                    RF_FLUSH_TX();
                	}  
    
                RF_CLR_IRQ( sta );  // clear RX_DR or TX_DS or MAX_RT interrupt flag

                //RLED_OFF();
				g_RFIRQValid = FALSE;
                break;
            	}
        	}
        else if( g_DelayTick >= 5 )  //if timeout
        	{
            RF_FLUSH_TX();
            break;
        	}
    }
	RF2400P_Switch_to_rx_mode();       
}

//bool RF2400P_Write_data (const void * buffer, uint8_t size)
//	{
//		}













