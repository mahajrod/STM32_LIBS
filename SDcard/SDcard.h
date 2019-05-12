#ifndef		SDcard_H_
#define 	SDcard_H_

#include 	"main.h"

//SDcard commands
#define GO_IDLE_STATE           0              //Программная перезагрузка   
#define SEND_OP_COND        		1
#define SEND_IF_COND            8              //Для SDC V2 - проверка диапазона напряжений 
#define SEND_CSD								9
#define	SEND_CID								10
#define STOP_TRANSMISSION				12
#define SET_BLOCKLEN 						16
#define READ_SINGLE_BLOCK       17             //Чтение указанного блока данных  
#define READ_MULTIPLE_BLOCK			18
#define SET_BLOCK_COUNT					23
#define WRITE_SINGLE_BLOCK      24             //Запись указанного блока данных
#define WRITE_MULTIPLE_BLOCK    25
#define SD_SEND_OP_COND	        41             //Начало процесса инициализации  
#define APP_CMD			 						55             //Главная команда из ACMD <n> команд
#define READ_OCR		 						58             //Чтение регистра OCR 

#define CMD0	(0x40+0)	/* GO_IDLE_STATE */
#define CMD1	(0x40+1)	/* SEND_OP_COND (MMC) */
#define ACMD41	(0xC0+41)	/* SEND_OP_COND (SDC) */
#define CMD8	(0x40+8)	/* SEND_IF_COND */
#define CMD9	(0x40+9)	/* SEND_CSD */
#define CMD10	(0x40+10)	/* SEND_CID */
#define CMD12	(0x40+12)	/* STOP_TRANSMISSION */
#define ACMD13	(0xC0+13)	/* SD_STATUS (SDC) */
#define CMD16	(0x40+16)	/* SET_BLOCKLEN */
#define CMD17	(0x40+17)	/* READ_SINGLE_BLOCK */
#define CMD18	(0x40+18)	/* READ_MULTIPLE_BLOCK */
#define CMD23	(0x40+23)	/* SET_BLOCK_COUNT (MMC) */
#define ACMD23	(0xC0+23)	/* SET_WR_BLK_ERASE_COUNT (SDC) */
#define CMD24	(0x40+24)	/* WRITE_BLOCK */
#define CMD25	(0x40+25)	/* WRITE_MULTIPLE_BLOCK */
#define CMD55	(0x40+55)	/* APP_CMD */
#define CMD58	(0x40+58)	/* READ_OCR */

//macroses
#define CS_ENABLE         		GPIOB->BSRR = GPIO_BSRR_BR12;         
#define CS_DISABLE    	  		GPIOB->BSRR = GPIO_BSRR_BS12; 
////#define	SD_SPI_Write_read (x)	 SPI2_Write_read (x)
////#define SD_SPI_Read()			 SPI2_Read()

//SDcard functions
extern uint8_t SD_init(void);
extern uint8_t SD_ReadSector(uint32_t BlockNumb,uint8_t *buff);
extern uint8_t SD_WriteSector(uint32_t BlockNumb,uint8_t *buff);

extern uint8_t SD_ReadMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff);
extern uint8_t SD_WriteMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff);


#endif
