#ifndef  	SHT21_H_
#define 	SHT21_H_

#include 	"main.h"

#define 	SHT21_ADDRESS 					0x80
#define		SHT21_ADDRESS_AND_READ		    0x81
#define 	SHT21_GET_TEMP_SCL_LOW			0xE3
#define 	SHT21_GET_HUMDTY_SCL_LOW		0xE5
#define 	SHT21_GET_TEMP 					0xF3
#define 	SHT21_GET_HUMDTY 				0xF5
#define 	SHT21_WR_USER_REG 				0xE6
#define 	SHT21_READ_USER_REG 			0xE7
#define 	SHT21_RELOAD 					0xFE

extern void SHT21_write(uint8_t SHT21_command);
extern void SHT21_read (uint8_t Data_MSB, uint8_t Data_LSB, uint8_t Data_checksum);

#endif
