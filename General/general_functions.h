#ifndef 		General_functions_H_
#define			General_functions_H_

#include 		"main.h"

const uint8_t  	LCD_decode [] = 
	{'0', '1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

extern void LCD_decode_bin_to_dec_0000 (uint16_t number, char dec_number[4]);
extern void LCD_decode_bin_to_dec_000 (uint8_t number, char dec_number[3]);
extern void delay_ms (uint32_t Val);

#endif
