#ifndef 	RF2400P_H_
#define		RF2400P_H_

#include 	"main.h"
//****************************************************************************************
#define 	RF2400_IRQ_PIN			PB00
#define		RF2400_CE				PB01

#define		CE_LOW					GPIOB->BSRR 	|= GPIO_BSRR_BR1;
#define 	CE_HIGH					GPIOB->BSRR 	|= GPIO_BSRR_BS1;
		
//-------------------SPI-------------------
#define 	SS_HIGH					GPIOA->BSRR 	|= GPIO_BSRR_BS4;
#define 	SS_LOW					GPIOA->BSRR 	|= GPIO_BSRR_BR4;

//************************FSK COMMAND and REGISTER****************************************//
// SPI(BK2421) commands
#define 	RF_READ_REG        		0x00  // Define read command to register
#define 	RF_WRITE_REG       		0x20  // Define write command to register
#define 	RD_RX_PLOAD     		0x61  // Define RX payload register address
#define 	WR_TX_PLOAD     		0xA0  // Define TX payload register address
#define 	FLUSH_TX        		0xE1  // Define flush TX register command
#define 	FLUSH_RX        		0xE2  // Define flush RX register command
#define 	REUSE_TX_PL     		0xE3  // Define reuse TX payload register command
#define 	W_TX_PAYLOAD_NOACK_CMD	0xB0
#define 	W_ACK_PAYLOAD_CMD		0xA8
#define 	ACTIVATE_CMD			0x50
#define 	R_RX_PL_WID_CMD			0x60
//#define NOP             0xFF  // Define No Operation, might be used to read status register

// SPI(BK2421) registers(addresses)
#define 	CONFIG_REG          		0x00  // 'Config' register address
#define 	EN_AA_REG           		0x01  // 'Enable Auto Acknowledgment' register address
#define 	EN_RXADDR_REG       		0x02  // 'Enabled RX addresses' register address
#define 	SETUP_AW_REG        		0x03  // 'Setup address width' register address
#define 	SETUP_RETR_REG      		0x04  // 'Setup Auto. Retrans' register address
#define 	RF_CH_REG           		0x05  // 'RF channel' register address
#define 	RF_SETUP_REG        		0x06  // 'RF setup' register address
#define 	STATUS_REG          		0x07  // 'Status' register address
#define 	OBSERVE_TX_REG      		0x08  // 'Observe TX' register address
#define 	CD_REG              		0x09  // 'Carrier Detect' register address
#define 	RX_ADDR_P0_REG      		0x0A  // 'RX address pipe0' register address
#define 	RX_ADDR_P1_REG      		0x0B  // 'RX address pipe1' register address
#define 	RX_ADDR_P2_REG      		0x0C  // 'RX address pipe2' register address
#define 	RX_ADDR_P3_REG      		0x0D  // 'RX address pipe3' register address
#define 	RX_ADDR_P4_REG      		0x0E  // 'RX address pipe4' register address
#define 	RX_ADDR_P5_REG      		0x0F  // 'RX address pipe5' register address
#define 	TX_ADDR_REG         		0x10  // 'TX address' register address
#define 	RX_PW_P0_REG        		0x11  // 'RX payload width, pipe0' register address
#define 	RX_PW_P1_REG        		0x12  // 'RX payload width, pipe1' register address
#define 	RX_PW_P2_REG        		0x13  // 'RX payload width, pipe2' register address
#define 	RX_PW_P3_REG        		0x14  // 'RX payload width, pipe3' register address
#define 	RX_PW_P4_REG        		0x15  // 'RX payload width, pipe4' register address
#define 	RX_PW_P5_REG        		0x16  // 'RX payload width, pipe5' register address
#define 	FIFO_STATUS_REG     		0x17  // 'FIFO Status Register' register address
#define 	PAYLOAD_WIDTH_REG   		0x1F  // 'payload length of 256 bytes modes register address
#define 	DYNPD_REG           		0x1C
#define 	FEATURE_REG         		0x1D

//Registers
//CONFIG_REG  register values
#define 	MASK_RX_DATA_READY 	0x40
#define 	MASK_TX_DATA_READY 	0x20
#define 	MASK_MAX_RETRY 		0x10
#define 	ENABLE_CRC 			0x08
#define 	CRC_2_BYTES 		0x04
#define 	POWER_UP_BIT 		0x02
#define 	RX_MODE		 		0x01   //~RX_MODE = TX_MODE

//interrupt status
#define 	STATUS_RX_DR    	0x40
#define 	STATUS_TX_DS    	0x20
#define 	STATUS_MAX_RT   	0x10
#define 	STATUS_TX_FULL 		0x01

//EN_AA_REG values
#define 	ENAA_P5				0x20
#define 	ENAA_P4				0x10
#define 	ENAA_P3				0x08
#define 	ENAA_P2				0x04
#define 	ENAA_P1				0x02
#define 	ENAA_P0				0x01

//EN_RXADDR_REG register values
#define 	ERX_P5				0x20
#define 	ERX_P4				0x10
#define 	ERX_P3				0x08
#define 	ERX_P2				0x04
#define 	ERX_P1				0x02
#define 	ERX_P0				0x01

//SETUP_AW_REG register values
#define 	AW_3BYTES			0x01
#define 	AW_4BYTES 			0x02
#define 	AW_5BYTES			0x03	 

//SETUP_RETR_REG register values
#define		WAIT_250US			0x00
#define		WAIT_500US			0x10
#define		WAIT_750US			0x20
#define		WAIT_1000US			0x30
#define		WAIT_1250US			0x40
#define		WAIT_1500US			0x50
#define		WAIT_1750US			0x60
#define		WAIT_2000US			0x70
#define		WAIT_2250US			0x80
#define		WAIT_2500US			0x90
#define		WAIT_2750US			0xA0
#define		WAIT_3000US			0xB0
#define		WAIT_3250US			0xC0
#define		WAIT_3500US			0xD0
#define		WAIT_3750US			0xE0
#define		WAIT_4000US			0xF0

//RF_SETUP_REG values
#define 	DATA_RATE_1MBPS 			~DATA_RATE_2MBPS
#define 	DATA_RATE_2MBPS 			0x08
#define 	OUTPUT_POWER_MINUS_10DBM	~OUTPUT_POWER_MINUS_5DBM
#define 	OUTPUT_POWER_MINUS_5DBM		0x02
#define 	OUTPUT_POWER_0DBM			0x04
#define 	OUTPUT_POWER_5DBM			0x06
#define 	LNA_LOW_GAIN				0x00
#define 	LNA_HIGH_GAIN 				0x01

//STATUS_REG register values 
#define 	REG_BANK				0x80
#define		RX_DATA_READY 			0x40
#define 	TX_DATA_SENT			0x20
#define 	MAX_RETRANSMITS 		0x10
#define 	PX_PIPE_NUMBER_MASK 	0x0E
#define 	TX_FULL 				0x01

//FIFO_STATUS_REG
#define 	FIFO_STATUS_TX_REUSE 	0x40
#define 	FIFO_STATUS_TX_FULL 	0x20
#define 	FIFO_STATUS_TX_EMPTY 	0x10
#define 	FIFO_STATUS_RX_FULL 	0x02
#define 	FIFO_STATUS_RX_EMPTY 	0x01

//DYNPD_REG register
#define		ENABLE_DPL_PIPE5		0x20
#define		ENABLE_DPL_PIPE4		0x10
#define		ENABLE_DPL_PIPE3		0x08
#define		ENABLE_DPL_PIPE2		0x04
#define		ENABLE_DPL_PIPE1		0x02
#define		ENABLE_DPL_PIPE0		0x01		

//Feature flags 
#define 	ENABLE_DYNAMIC_PAYLOAD_FLAG 	0x04
#define 	ENABLE_ACK_PAYLOAD_FLAG 		0x02
#define 	ENABLE_DYNAMIC_ACK_FLAG 		0x01

 
//EXTERN MACROS=====================================================================
//Set RX address
#define RF_SET_RX_ADDR(addr) { RF2400P_Write_buffer(RF_WRITE_REG|RX_ADDR_P0_REG, addr, 5); }   
//TX address
#define RF_SET_TX_ADDR(addr) { RF2400P_Write_buffer(RF_WRITE_REG|TX_ADDR_REG, addr, 5); }    
//Set ACK
#define RF_SET_AUTO_ACK(enable) { RF2400P_Write_1byte_reg(EN_AA_REG, enable); } 
//choice pipe
#define RF_SET_CHN(ch) { RF2400P_Write_1byte_reg(RF_CH_REG, ch); }
//Read status register
#define RF_GET_STATUS() ( RF2400P_Read_1byte_reg(STATUS_REG) )
//Clear IRQ
#define RF_CLR_IRQ(x) { RF2400P_Write_1byte_reg(STATUS_REG, x); }
//Read receiver data length
#define RF_GET_RX_PL_LEN() ( RF2400P_Read_1byte_reg(R_RX_PL_WID_CMD) )
//Read result of carry detection
#define RF_GET_CD() ( RF2400P_Read_1byte_reg(CD) )
//Clear RX FIFO
#define RF_FLUSH_RX() { RF2400P_Exe_command(FLUSH_RX,0); }
//Clear TX FIFO
#define RF_FLUSH_TX() { RF2400P_Exe_command(FLUSH_TX,0); }	



	
uint8_t	RF2400P_SPI_Write_read (uint8_t data);
//extern Functions

extern  void 	RF2400P_Write_1byte_reg			(uint8_t reg, uint8_t value);
extern  uint8_t RF2400P_Read_1byte_reg 			(uint8_t reg);
extern  uint8_t RF2400P_Exe_command 			(uint8_t command, uint8_t argument);
extern  void 	RF2400P_Switch_to_rx_mode 		(void);
extern  void 	RF2400P_Switch_to_tx_mode 		(void);
extern  void 	RF2400P_Switch_bank 			(uint8_t bank);	
extern  void 	RF2400P_Read_buffer 			(uint8_t reg, uint8_t *buffer, uint8_t length);
extern  void 	RF2400P_Write_buffer 			(uint8_t reg, uint8_t *buffer, uint8_t length);
extern  void 	RF2400P_init 					(void);

extern 	void 	RF2400P_SendPacket				(uint8_t Key);
#define     RFPKT_LEN       5	
volatile extern	uint8_t 	g_RFRecvBuff[RFPKT_LEN];
volatile extern	uint8_t 	g_RFSendBuff[RFPKT_LEN];  
#endif
