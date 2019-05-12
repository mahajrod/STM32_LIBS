#include 	"SDcard.h"

//глобальная переменная для определения типа карты 
uint8_t  SDHC;            

//********************************************************************************************
//function	 посылка команды в SD                                		            //
//Arguments	 команда и ее аргумент                                                      //
//return	 0xff - нет ответа   			                                    //
//********************************************************************************************
uint8_t SD_sendCommand(uint8_t cmd, uint32_t arg)
	{
  uint8_t response, wait=0, tmp;     
  	//для карт памяти SD выполнить корекцию адреса, т.к. для них адресация побайтная 
  	if(SDHC == 0)
			{		
  		if(cmd == READ_SINGLE_BLOCK || cmd == WRITE_SINGLE_BLOCK )  
  			{
				arg = arg << 9;
				}
			}
  	//для SDHC корекцию адреса блока выполнять не нужно(постраничная адресация)	
  	CS_ENABLE; 
  	//передать код команды и ее аргумент
  	SD_SPI_Write_read(cmd | 0x40);
  	SD_SPI_Write_read(arg>>24);
  	SD_SPI_Write_read(arg>>16);
  	SD_SPI_Write_read(arg>>8);
  	SD_SPI_Write_read(arg);
  	//передать CRC (учитываем только для двух команд)
  	if(cmd == SEND_IF_COND) SD_SPI_Write_read(0x87);            
  	else                    SD_SPI_Write_read(0x95); 
 
  	//ожидаем ответ
 	 while((response = SD_SPI_Read()) == 0xff)
			{ 
  		if(wait++ > 0xfe) break;                //таймаут, не получили ответ на команду
			};
  	//проверка ответа если посылалась команда READ_OCR
  	if(response == 0x00 && cmd == 58)     
  		{
    	tmp = SD_SPI_Read();                      //прочитат один байт регистра OCR            
    	if(tmp & 0x40) SDHC = 1;               //обнаружена карта SDHC 
    	else           SDHC = 0;               //обнаружена карта SD
   	 	//прочитать три оставшихся байта регистра OCR
    	SD_SPI_Read(); 
    	SD_SPI_Read(); 
    	SD_SPI_Read(); 
  		}
  	SD_SPI_Read();
  	CS_DISABLE; 
  	return response;
	}

//********************************************************************************************
//function	 инициализация карты памяти                         			    //
//return	 0 - карта инициализирована  					            //
//********************************************************************************************
uint8_t SD_init(void)
	{
  uint8_t   i;
  uint8_t   response;
  uint8_t   SD_version = 2;	          //по умолчанию версия SD = 2
  uint16_t  retry = 0 ;
                      
  	for(i=0;i<10;i++) SD_SPI_Write_read(0xff);      //послать свыше 74 единиц   
 
  	//выполним программный сброс карты
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
 
 
 	//читаем регистр OCR, чтобы определить тип карты
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
//function	 чтение выбранного сектора SD                         			    //
//аrguments	 номер сектора,указатель на буфер размером 512 байт                         //
//return	 0 - сектор прочитан успешно   					            //
//********************************************************************************************
uint8_t SD_ReadSector(uint32_t BlockNumb,uint8_t *buff)
	{ 
  	uint16_t i=0;
  	//послать команду "чтение одного блока" с указанием его номера
  	if(SD_sendCommand(READ_SINGLE_BLOCK, BlockNumb)) return 1;  
  	CS_ENABLE;
  	//ожидание  маркера данных
  	while(SD_SPI_Read() != 0xfe)
			{                
  		if(i++ > 0xfffe) {CS_DISABLE; return 1;}       
			};
  	//чтение 512 байт	выбранного сектора
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
//function	 запись выбранного сектора SD                         			    //
//аrguments	 номер сектора, указатель на данные для записи                              //
//return	 0 - сектор записан успешно   					            //
//********************************************************************************************
uint8_t SD_WriteSector(uint32_t BlockNumb,uint8_t *buff)
	{
  uint8_t     response;
  uint16_t    i,wait=0;
  //послать команду "запись одного блока" с указанием его номера
  if( SD_sendCommand(WRITE_SINGLE_BLOCK, BlockNumb)) return 1;
 
  CS_ENABLE;
  SD_SPI_Write_read(0xfe);    
 
  //записать буфер сектора в карту
  for(i=0; i<512; i++) SD_SPI_Write_read(*buff++);
 
  SD_SPI_Write_read(0xff);                //читаем 2 байта CRC без его проверки
  SD_SPI_Write_read(0xff);
 
  response = SD_SPI_Read();
 
  if( (response & 0x1f) != 0x05) //если ошибка при приеме данных картой
  		{ CS_DISABLE; return 1; }
 
 	//ожидаем окончание записи блока данных
  while(!SD_SPI_Read())             //пока карта занята,она выдает ноль
 	if(wait++ > 0xfffe){CS_DISABLE; return 1;}
 
  CS_DISABLE;
  SD_SPI_Write_read(0xff);   
  CS_ENABLE;         
 
  while(!SD_SPI_Read())               //пока карта занята,она выдает ноль
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
