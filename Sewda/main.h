#ifndef 	MAIN_H_
#define		MAIN_H_

#include 		"stm32f10x.h"
#include    "stdint.h"
#include    "core_cm3.h"
#include    "system_stm32f10x.h"
#include 		"mcu_gpio.h"
#include 		"mcu_rcc.h"



#define 		LCD_SECOND_LINE_BUFFER 	17

//------------Pins definitions-------------
#define 	PORTB_PIN_5	 		B, 5, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_0	 		B, 0, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_1	 		B, 1, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_10	 	B, 10, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	PORTB_PIN_11	 	B, 11, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	SPI2_MOSI	 			B, 15, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_50MHZ
#define 	SPI2_MISO	 			B, 14, LOW, INPUT_PULL_UP, INPUT_MODE
#define 	SPI2_SCK	 			B, 13, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_50MHZ
#define 	SPI2_NSS  		 	B, 12, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_50MHZ

#define 	SPI1_MOSI	 			A, 7, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI1_MISO	 			A, 6, HIGH, INPUT_PULL_UP, INPUT_MODE
#define 	SPI1_SCK	 			A, 5, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_10MHZ
#define 	SPI1_NSS  		 	A, 4, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_10MHZ

#define 	I2C1_SDA	 			B, 7, HIGH, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ
#define 	I2C1_SCL  		 	B, 6, HIGH, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ

#define 	UART2_RX	 			A, 3, LOW, INPUT_PULL_UP, INPUT_MODE
#define 	UART2_TX  		 	A, 2, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	UART1_CK	 			A, 8, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	UART1_RX	 			A, 10, HIGH, INPUT_PULL_UP, INPUT_MODE
#define 	UART1_TX  		 	A, 9, HIGH, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	UART1_CTS	 			A, 11, LOW, INPUT_PULL_UP, INPUT_MODE
#define 	UART1_RTS  		 	A, 12, LOW, ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	RESET_PIN 	 		A, 12, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	LCD_SCL					A, 8, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_50MHZ
#define		LCD_SDA					A, 9, HIGH, GENERAL_OUTPUT_PUSH_PULL, SPEED_50MHZ

#define 	BUTTON1					A, 1, HIGH, INPUT_PULL_UP, INPUT_MODE
#define 	BUTTON2					A, 2, HIGH, INPUT_PULL_UP, INPUT_MODE
#define 	BUTTON3					A, 3, HIGH, INPUT_PULL_UP, INPUT_MODE

#define		ULTRASONIC_IN		A, 4, LOW, INPUT_PULL_DOWN, INPUT_MODE
#define		ULTRASONIC_TRIG A, 5, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_10MHZ

#define 	ADC_IN0					A, 0, LOW, ANALOG, INPUT_MODE 

#define 	TIM1_CH4				A,11,HIGH,ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define		TIM1_CH3				A,10,HIGH,ALTERNATE_OUTPUT_PUSH_PULL, SPEED_2MHZ

struct TIME_INFO
	{
	uint32_t	counter;
  uint8_t 	seconds;		
  uint8_t 	minutes;	
  uint8_t 	hours;		
  uint32_t 	days;		
	uint16_t	months;
	} ;

extern struct TIME_INFO 	current_time;

//-----------------------------------	
extern void 			delay_ms 						(uint32_t Val);
extern uint8_t 		SD_SPI_Write_read 	(uint8_t data);
extern uint8_t 		SPI1_Write_read 		(uint8_t data);
extern void 			USART1_send 				(uint16_t data);
#define 					SD_SPI_Read() 			SD_SPI_Write_read (0xFF)		//SPI only read command

#endif
