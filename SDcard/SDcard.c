#include 	"SDcard.h"

//���������� ���������� ��� ����������� ���� ����� 
uint8_t  SDHC;            

//********************************************************************************************
//function	 ������� ������� � SD                                		            //
//Arguments	 ������� � �� ��������                                                      //
//return	 0xff - ��� ������   			                                    //
//********************************************************************************************
uint8_t SD_sendCommand(uint8_t cmd, uint32_t arg)
	{
  uint8_t response, wait=0, tmp;     
  	//��� ���� ������ SD ��������� �������� ������, �.�. ��� ��� ��������� ��������� 
  	if(SDHC == 0)
			{		
  		if(cmd == READ_SINGLE_BLOCK || cmd == WRITE_SINGLE_BLOCK )  
  			{
				arg = arg << 9;
				}
			}
  	//��� SDHC �������� ������ ����� ��������� �� �����(������������ ���������)	
  	CS_ENABLE; 
  	//�������� ��� ������� � �� ��������
  	SD_SPI_Write_read(cmd | 0x40);
  	SD_SPI_Write_read(arg>>24);
  	SD_SPI_Write_read(arg>>16);
  	SD_SPI_Write_read(arg>>8);
  	SD_SPI_Write_read(arg);
  	//�������� CRC (��������� ������ ��� ���� ������)
  	if(cmd == SEND_IF_COND) SD_SPI_Write_read(0x87);            
  	else                    SD_SPI_Write_read(0x95); 
 
  	//������� �����
 	 while((response = SD_SPI_Read()) == 0xff)
			{ 
  		if(wait++ > 0xfe) break;                //�������, �� �������� ����� �� �������
			};
  	//�������� ������ ���� ���������� ������� READ_OCR
  	if(response == 0x00 && cmd == 58)     
  		{
    	tmp = SD_SPI_Read();                      //�������� ���� ���� �������� OCR            
    	if(tmp & 0x40) SDHC = 1;               //���������� ����� SDHC 
    	else           SDHC = 0;               //���������� ����� SD
   	 	//��������� ��� ���������� ����� �������� OCR
    	SD_SPI_Read(); 
    	SD_SPI_Read(); 
    	SD_SPI_Read(); 
  		}
  	SD_SPI_Read();
  	CS_DISABLE; 
  	return response;
	}

//********************************************************************************************
//function	 ������������� ����� ������                         			    //
//return	 0 - ����� ����������������  					            //
//********************************************************************************************
uint8_t SD_init(void)
	{
  uint8_t   i;
  uint8_t   response;
  uint8_t   SD_version = 2;	          //�� ��������� ������ SD = 2
  uint16_t  retry = 0 ;
                      
  	for(i=0;i<10;i++) SD_SPI_Write_read(0xff);      //������� ����� 74 ������   
 
  	//�������� ����������� ����� �����
  	CS_ENABLE;
  	while(SD_sendCommand(GO_IDLE_STATE, 0)!=0x01)
			{                                   
    	if(retry++>0x20)  return 1;  
			};                  
  	CS_DISABLE;
  	SD_SPI_Write_read (0xff);
  	SD_SPI_Write_read (0xff);
 
  	retry = 0;                                     
  	while(SD_sendCommand(SEND_IF_COND,0x000001AA)!=0x01)
  		{ 
    	if(retry++>0xfe) 
    		{ 
      	SD_version = 1;
      	break;
    		} 
  		}
 
 	retry = 0;                                     
 	do
 		{
   	response = SD_sendCommand(APP_CMD,0); 
   	response = SD_sendCommand(SD_SEND_OP_COND,0x40000000);
   	retry++;
   	if(retry>0xffe) return 1;                     
 		}	while(response != 0x00);                      
 
 
 	//������ ������� OCR, ����� ���������� ��� �����
 	retry = 0;
 	SDHC = 0;
 	if (SD_version == 2)
 		{ 
   	while(SD_sendCommand(READ_OCR,0)!=0x00)
			{
	 		if(retry++>0xfe)  break;
			}
 		}
 
 	return 0; 
	}

//********************************************************************************************
//function	 ������ ���������� ������� SD                         			    //
//�rguments	 ����� �������,��������� �� ����� �������� 512 ����                         //
//return	 0 - ������ �������� �������   					            //
//********************************************************************************************
uint8_t SD_ReadSector(uint32_t BlockNumb,uint8_t *buff)
	{ 
  	uint16_t i=0;
  	//������� ������� "������ ������ �����" � ��������� ��� ������
  	if(SD_sendCommand(READ_SINGLE_BLOCK, BlockNumb)) return 1;  
  	CS_ENABLE;
  	//��������  ������� ������
  	while(SD_SPI_Read() != 0xfe)
			{                
  		if(i++ > 0xfffe) {CS_DISABLE; return 1;}       
			};
  	//������ 512 ����	���������� �������
  	for(i=0; i<512; i++) *buff++ = SD_SPI_Read();
 
  	SD_SPI_Read(); 
  	SD_SPI_Read(); 
  	SD_SPI_Read(); 
 
  	CS_DISABLE;
 
  	return 0;
	}
//*****************************************************************************************
uint8_t SD_ReadMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff)
	{
	uint8_t *buffer = buff;
  uint8_t i =0;		
	for (i =0 ;i < NumberOfBlocks ; i++)
		{
		buffer =buff + 512* i;	
		SD_ReadSector(FirstBlockNumb+i,buffer);	
		}
		return 0;
	}
//********************************************************************************************
//function	 ������ ���������� ������� SD                         			    //
//�rguments	 ����� �������, ��������� �� ������ ��� ������                              //
//return	 0 - ������ ������� �������   					            //
//********************************************************************************************
uint8_t SD_WriteSector(uint32_t BlockNumb,uint8_t *buff)
	{
  uint8_t     response;
  uint16_t    i,wait=0;
  //������� ������� "������ ������ �����" � ��������� ��� ������
  if( SD_sendCommand(WRITE_SINGLE_BLOCK, BlockNumb)) return 1;
 
  CS_ENABLE;
  SD_SPI_Write_read(0xfe);    
 
  //�������� ����� ������� � �����
  for(i=0; i<512; i++) SD_SPI_Write_read(*buff++);
 
  SD_SPI_Write_read(0xff);                //������ 2 ����� CRC ��� ��� ��������
  SD_SPI_Write_read(0xff);
 
  response = SD_SPI_Read();
 
  if( (response & 0x1f) != 0x05) //���� ������ ��� ������ ������ ������
  		{ CS_DISABLE; return 1; }
 
 	//������� ��������� ������ ����� ������
  while(!SD_SPI_Read())             //���� ����� ������,��� ������ ����
 	if(wait++ > 0xfffe){CS_DISABLE; return 1;}
 
  CS_DISABLE;
  SD_SPI_Write_read(0xff);   
  CS_ENABLE;         
 
  while(!SD_SPI_Read())               //���� ����� ������,��� ������ ����
 	if(wait++ > 0xfffe){CS_DISABLE; return 1;}
  CS_DISABLE;
 
  return 0;
	}
//************************************************************************************
uint8_t SD_WriteMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff)
	{
	uint8_t *buffer = buff;	
  uint8_t i =0;		
	for (i =0 ;i < NumberOfBlocks ; i++)
		{
		buffer =buff + 512* i;	
		SD_WriteSector(FirstBlockNumb+i,buffer);	
		}
  	return 0;
	}
