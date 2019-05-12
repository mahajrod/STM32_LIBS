#ifndef 	MAIN_H_
#define		MAIN_H_


#include 		"stm32f10x.h"
#include    "stdint.h"
#include    "core_cm3.h"
#include    "system_stm32f10x.h"
#include 		"mcu_gpio.h"

//------------Pins definitions-------------------
#define 	MOTOR_1_FOR	 		B, 15, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_2_FOR	 		B, 14, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_3_FOR	 		B, 13, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_4_FOR	 		B, 12, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	MOTOR_1_REV	 		A, 11, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_2_REV	 		A, 10, LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_3_REV	 		A, 9,  LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ
#define 	MOTOR_4_REV	 		A, 8,  LOW, GENERAL_OUTPUT_PUSH_PULL, SPEED_2MHZ

#define 	I2C1_SDA	 			B, 7, HIGH, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ
#define 	I2C1_SCL  		 	B, 6, HIGH, ALTERNATE_OUTPUT_OPEN_DRAIN, SPEED_2MHZ

//#define 	LCD_SECOND_LINE_BUFFER 	17

//extern void 	delay_ms (uint32_t Val);
//extern uint8_t 	SD_SPI_Write_read 	(uint8_t data);

//#define 		SD_SPI_Read() 	SD_SPI_Write_read (0xFF)		//SPI only read command

#endif
