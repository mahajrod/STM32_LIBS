#ifndef 	MAIN_H_
#define		MAIN_H_

#include 	"stm32f10x.h"
#include    "stdint.h"
#include    "core_cm3.h"
#include    "system_stm32f10x.h"
#include 	"mcu_gpio.h"
#include 	"mcu_rcc.h"

#define 		LCD_SECOND_LINE_BUFFER 	17

//------------Pins definitions-------------
#define 	PORTB_PIN_5	 		B, 5, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_0	 		B, 0, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_1	 		B, 1, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_10	 	B, 10, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_11	 	B, 11, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	SPI2_MOSI	 		B, 15, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI2_MISO	 		B, 14, LOW, INPUT_PULL_UP, SPEED_10MHZ
#define 	SPI2_SCK	 		B, 13, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI2_NSS  		 	B, 12, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ

#define 	SPI1_MOSI	 		A, 7, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI1_MISO	 		A, 6, LOW, INPUT_PULL_UP, SPEED_10MHZ
#define 	SPI1_SCK	 		A, 5, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI1_NSS  		 	A, 4, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ

#define 	I2C1_SDA	 		B, 7, LOW, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ
#define 	I2C1_SCL  		 	B, 6, LOW, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ

#define 	UART2_RX	 		A, 3, LOW, INPUT_PULL_UP, SPEED_2MHZ
#define 	UART2_TX  		 	A, 2, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	UART1_CK	 		A, 8, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	UART1_RX	 		A, 10, HIGH, INPUT_PULL_UP, SPEED_2MHZ
#define 	UART1_TX  		 	A, 9, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	UART1_CTS	 		A, 11, LOW, INPUT_PULL_UP, SPEED_2MHZ
#define 	UART1_RTS  		 	A, 12, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	RESET_PIN 	 		A, 12, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	LCD_SCL				A, 8, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_50MHZ
#define		LCD_SDA				A, 9, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_50MHZ

extern void 		delay_ms 			(uint32_t Val);
extern uint8_t 		SD_SPI_Write_read 	(uint8_t data);
extern uint8_t 		SPI1_Write_read 	(uint8_t data);
extern void 		USART1_send 		(uint16_t data);
#define 			SD_SPI_Read() 	SD_SPI_Write_read (0xFF)		//SPI only read command

#endif
