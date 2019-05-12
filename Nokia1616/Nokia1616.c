#include 	"Nokia1616.h"

//-------------------SPI functions------------------
#ifdef		LCD_NOKIA1616_BITBANG

	void SPI_LCD (uint16_t data)
		{
		uint16_t  	var;
		uint8_t 	CountSPI;                  
		var = data;

		LCD_NOKIA1616_CS_LOW;                        
		for (CountSPI=9; CountSPI!=0;CountSPI--)
			{
   			LCD_NOKIA1616_SCL_LOW;
   			if ((var>>(CountSPI-1)&0x01)==1)   
				{
				LCD_NOKIA1616_SDA_HIGH;
				} else   LCD_NOKIA1616_SDA_LOW;
   			LCD_NOKIA1616_SCL_HIGH;   
		}
		LCD_NOKIA1616_CS_HIGH;

		LCD_NOKIA1616_SCL_LOW;
		LCD_NOKIA1616_SCL_HIGH;
		LCD_NOKIA1616_SCL_LOW;
		LCD_NOKIA1616_SCL_HIGH;
		LCD_NOKIA1616_SCL_LOW;
		LCD_NOKIA1616_SCL_HIGH;
		}
#endif		//LCD_NOKIA1616_BITBANG

#ifdef 	LCD_NOKIA1616_USART_9BIT

	void USART1_send (uint16_t data)
		{
		uint32_t temp;
		LCD_NOKIA1616_CS_LOW;
		temp = __RBIT (data) >> 23;
		while (!(USART1->SR & USART_SR_TXE))
			{};
		USART1->DR = temp;
		LCD_NOKIA1616_CS_LOW;
		}

 #endif 	//LCD_NOKIA1616_USART_9BIT
//----------------------------------------------

//----------Reset and Init functions------------
 void LCD_NOKIA1616_reset (void)
	{
 	LCD_NOKIA1616_RST_LOW;
    delay_ms(50);
    LCD_NOKIA1616_RST_HIGH;
    delay_ms(50);
	}
/***********************************************************
LCD_NOKIA1616_ram_data_access sets type of output.
Accessable masks are:
//LCD_NOKIA1616_RAM_DATA_ACCESS_CTRL command masks
#define 	MIRROR_Y						0x80	//Reset mask for normal
#define 	MIRROR_X						0x40	//Reset mask for normal
#define		WRITE_IN_Y_DIR			0x20	//Reset mask for write in x dir
#define 	LINE_BOTTOM_TO_TOP	0x10	//Reset mask for Top to bottom	
#define 	BGR_COLOR						0x08	//Reset mask for RGB color
	
#define 	MIRROR_Y_AND_X			MIRROR_Y | MIRROR_X	
***********************************************************/
void LCD_NOKIA1616_ram_data_access (uint16_t ram_access_type)
	{
  SPI_LCD_CMD 	(LCD_NOKIA1616_RAM_DATA_ACCESS_CTRL);
	SPI_LCD_DATA 	(ram_access_type);	
	}
	
void LCD_NOKIA1616_init (void)
 	{
  SPI_LCD_CMD 	(LCD_NOKIA1616_SOFT_RST);        
	SPI_LCD_CMD 	(LCD_NOKIA1616_SLEEP_OUT);
	SPI_LCD_CMD 	(LCD_NOKIA1616_DISPLAY_MODE_ON);                   
	SPI_LCD_CMD 	(LCD_NOKIA1616_DISPLAY_INV_OFF);                      
	SPI_LCD_CMD 	(LCD_NOKIA1616_IDLE_MODE_OFF);  
		
	SPI_LCD_CMD 	(LCD_NOKIA1616_RGB_SIGNAL_CONTROL);
 	SPI_LCD_DATA 	(0x0010);        
	LCD_NOKIA1616_ram_data_access (LCD_NOKIA1616_OUTPUT_MODE);
	SPI_LCD_CMD 	(LCD_NOKIA1616_COLOR_MODE_SELECT);
	SPI_LCD_DATA 	(LCD_NOKIA1616_COLOR_16BIT);        
  SPI_LCD_CMD 	(LCD_NOKIA1616_DISPLAY_ON);
	}
//---------------------------------------------
//--------------Draw functions-----------------
void LCD_NOKIA1616_set_rectangle_range (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col,uint8_t RAM_access_type)
	{
	uint8_t command1, command2;
	if ((RAM_access_type & WRITE_IN_Y_DIR))
		{
		command1 = 	LCD_NOKIA1616_STRING_RANGE;
		command2 =	LCD_NOKIA1616_COLOMN_RANGE;
		}	else
			{
			command1 = LCD_NOKIA1616_COLOMN_RANGE;
			command2 = LCD_NOKIA1616_STRING_RANGE;
			}
	SPI_LCD_CMD 	(command1);
	SPI_LCD_DATA 	(0x00);
	SPI_LCD_DATA 	(first_str);
	SPI_LCD_DATA 	(0x00);
	SPI_LCD_DATA 	(last_str);
	SPI_LCD_CMD 	(command2);
	SPI_LCD_DATA 	(0x00);
	SPI_LCD_DATA 	(first_col);
	SPI_LCD_DATA 	(0x00);
	SPI_LCD_DATA 	(last_col);
	SPI_LCD_CMD 	(LCD_NOKIA1616_RAM_WRITE);
	}

uint16_t LCD_NOKIA1616_transform_color (uint32_t color)
	{
	uint8_t red			= 	color;
	uint8_t green		=		color >> 8;
	uint8_t blue  	=		color >> 16; 
	return (((red&0xF8)|(green>>5))<<8) | (((green<<3)&0xE0)|(blue>>3));
	}

void LCD_NOKIA1616_rectangle (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col, uint16_t color,uint8_t RAM_access_type )
	{	
	uint16_t k;			  
	LCD_NOKIA1616_set_rectangle_range (first_str, last_str, first_col, last_col,RAM_access_type);

	for ( k = 1; k < (last_str - first_str +1)*(last_col - first_col +1)+ 1; k++)
		{
		SPI_LCD_DATA 	(color>>8);
		SPI_LCD_DATA 	(color);
		}
	 }

void LCD_NOKIA1616_rectangle_from_buffer (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col, uint8_t *rectangle_buffer,uint8_t RAM_access_type )
	{	
	uint16_t k, lcd_color;
	uint32_t temp_color;	
	LCD_NOKIA1616_set_rectangle_range (first_str, last_str, first_col, last_col, RAM_access_type);

	for ( k = 1; k < (last_str - first_str +1)*(last_col - first_col +1)+ 1; k++)
		{
		temp_color = (rectangle_buffer[3* (k-1)])+(rectangle_buffer[3*(k-1)+1]<<8)+(rectangle_buffer[3*(k-1)+2]<<16);
		lcd_color =  LCD_NOKIA1616_transform_color (temp_color);
		SPI_LCD_DATA 	(lcd_color>>8);
		SPI_LCD_DATA 	(lcd_color);
		}
	  }		
		
#ifdef 	   LCD_NOKIA1616_INCLUDE_ICONS8x8
	#include 	"icons8x8.c"
	void LCD_NOKIA1616_print_icon8x8 (uint8_t icon_ID ,uint16_t x, uint16_t y, uint16_t backgnd_color, uint16_t icon_color,uint8_t RAM_access_type)
		{
		uint16_t  color;
		uint8_t i,j;				  
		LCD_NOKIA1616_set_rectangle_range (x, x+7, y, y+7,RAM_access_type);

		for ( i = 0; i <8; i++)
			{
			for (j = 0; j < 8; j++)
				{
				if (icons8x8[icon_ID*8+i] & (1<<j))
					{					 
					color = icon_color; 
					}else color = backgnd_color;
				SPI_LCD_DATA 	(color >> 8);
				SPI_LCD_DATA 	(color);
				}
			}
		} 
#endif	   //LCD_NOKIA1616_INCLUDE_ICONS

#ifdef 	  	 LCD_NOKIA1616_INCLUDE_FONTS
	#ifdef		LCD_NOKIA1616_FONT5x8
		#include		 "font5x8.c"
	#endif		//LCD_NOKIA1616_FONT5x8

	#ifdef		LCD_NOKIA1616_VERDANA10
		#include		 "verdana10.c"
	#endif		//LCD_NOKIA1616_VERDANA10

	#ifdef		LCD_NOKIA1616_UBUNTU10
		#include		 "ubuntu10.c"
	#endif		//LCD_NOKIA1616_UBUNTU10

	#ifdef		LCD_NOKIA1616_UBUNTU10BOLD
		#include	 	 "ubuntu10bold.c"
	#endif		//LCD_NOKIA1616_UBUNTU10BOLD

	const FONT_INFO *font = 0;
	uint16_t  Font_bkgnd_color, Font_color;

	void LCD_NOKIA1616_SetFont(uint8_t num)
		{
		switch(num) 
			{			
			#ifdef		LCD_NOKIA1616_FONT5x8
				case LCD_NOKIA1616_FONT5x8			:		font = &font5x8pxFontInfo;	break;
			#endif		//LCD_NOKIA1616_FONT5x8
			#ifdef		LCD_NOKIA1616_UBUNTU10
				case LCD_NOKIA1616_UBUNTU10			:		font = &ubuntu10ptFontInfo;	break;
			#endif		//LCD_NOKIA1616_UBUNTU10
			#ifdef		LCD_NOKIA1616_UBUNTU10BOLD
				case LCD_NOKIA1616_UBUNTU10BOLD	:		font = &ubuntu10ptBoldFontInfo;	break;
			#endif		//LCD_NOKIA1616_UBUNTU10BOLD			
			#ifdef		LCD_NOKIA1616_VERDANA10
				case LCD_NOKIA1616_VERDANA10:		font = &verdana10ptFontInfo;	break;
			#endif		//LCD_NOKIA1616_VERDANA10
			default:	font = 0;
			}
		}

	#define CHAR_WIDTH(c)	(font->u8Flags & FONT_FIXEDWIDTH ? ((int)font->asFontCharInfo)&0x0FF : font->asFontCharInfo[(c) - font->u8FirstChar].width)
	#define CHAR_SPACE		(font->u8Flags & FONT_FIXEDWIDTH ? 1 : 2)
	#define CHAR_BITMAP(c)	(&font->au8FontTable[font->u8Flags & FONT_FIXEDWIDTH ? (c - font->u8FirstChar)*(((int)font->asFontCharInfo)&0x0FF) : font->asFontCharInfo[c - font->u8FirstChar].start])

	uint8_t LCD_NOKIA1616_GetCharWidth(char c)
		{
		if(!font) return 0;
		if(c < font->u8FirstChar || c > font->u8LastChar) return 0;
		return CHAR_WIDTH(c);
		}

	uint8_t LCD_NOKIA1616_GetFontHeight()
		{
		if(!font) return 0;
		return font->u8Height;
		}

	uint16_t LCD_NOKIA1616_GetStringWidth(const char* str)
		{
		uint8_t w = 0;
		uint8_t len = 0;
		if(!font || !str) return 0;

		while(*str) {	// Без проверки переполнения len
			if(w) len += CHAR_SPACE;
			w = LCD_NOKIA1616_GetCharWidth(*str);
			len += w;
			str++;
			}
		return len;
		}

	uint8_t LCD_NOKIA1616_DrawChar(uint8_t x, uint8_t y, uint8_t c,uint8_t RAM_access_type)
		{
		uint8_t width = CHAR_WIDTH(c);
		uint8_t height = font->u8Height;
		uint8_t i, j, k, mask;
		//uint16_t Ft_color 			= 	LCD_NOKIA1616_transform_color (Font_color);
		//uint16_t Ft_bkgnd_color 	= 	LCD_NOKIA1616_transform_color (Font_bkgnd_color);
		const uint8_t *ptr = CHAR_BITMAP(c);
		if(!font) return 0;
		if(c < font->u8FirstChar || c > font->u8LastChar) return 0;

		LCD_NOKIA1616_set_rectangle_range (x,x+height-1,y,y+width-1,RAM_access_type);
	
		k = 0;
		for(i = 0; i < height; i++) 
			{
			for(j = 0; j < width; j++) 
				{
				if(!(k&0x07) )
					{ 
					mask = *ptr++;	
					};
				//if(k != 0x07 ) mask = *ptr++;
				SPI_LCD_DATA 	(((mask & 0x80) ? Font_color : Font_bkgnd_color) >>8 );
				SPI_LCD_DATA 	(((mask & 0x80) ? Font_color : Font_bkgnd_color));
				mask<<=1;
				k++;
				}
			if(!(font->u8Flags & FONT_PACKEDDATA) ) k = 0;
			}
		return width;
	}
					   
uint8_t LCD_NOKIA1616_DrawString(uint8_t x, uint8_t y, const char *str,uint8_t RAM_access_type)
	{
	int8_t remx = x;
	uint8_t w = 0;
	uint8_t height = font->u8Height;
	while(*str) 
		{
			w = LCD_NOKIA1616_DrawChar(x, y, *str,RAM_access_type);
			LCD_NOKIA1616_rectangle (x,x+height-1,y+w,y+w+CHAR_SPACE-1,Font_bkgnd_color,RAM_access_type);
			y += CHAR_SPACE;
			y += w;
			str++;
		}
	return x - remx;
	}

#endif 		//LCD_NOKIA1616_INCLUDE_FONTS
