#include    "general_functions.h"

//----------General functions---------------
void LCD_decode_bin_to_dec_0000 (uint16_t number, char dec_number[4])
	{
	dec_number[0] =	LCD_decode[(number/1000) & 0x0F];
	dec_number[1] =	LCD_decode[(number % 1000)/100 & 0x0F];
	dec_number[2] =	LCD_decode[((number % 1000) % 100) / 10 & 0x0F];
	dec_number[3] =	LCD_decode[(((number % 1000) % 100) % 10) & 0x0F];
	}
	
 void LCD_decode_bin_to_dec_000 (uint8_t number, char dec_number[3])
	{
	dec_number[0] =	LCD_decode[(number/100) & 0x0F];
	dec_number[1] =	LCD_decode[(number % 100)/10 & 0x0F];
	dec_number[2] =	LCD_decode[((number % 100) % 10) & 0x0F];
	}

void delay_ms (uint32_t Val)
	{
	uint32_t i = 72000;
	for (;Val != 0; Val--)
		{
		for ( ; i != 0;i--)
			{
			__nop();
			} ;
		} ;
	}
