#ifndef			NOKIA1616_H_
#define 		NOKIA1616_H_

#include 		"main.h"
#include 		"font.h"
#define 	LCD_NOKIA1616_WIDTH					128
#define 	LCD_NOKIA1616_HEIGHT				160
#define		LCD_NOKIA1616_FIRST_STR			1
#define		LCD_NOKIA1616_FIRST_COL			2
#define		LCD_NOKIA1616_LAST_STR			(LCD_NOKIA1616_FIRST_STR+LCD_NOKIA1616_HEIGHT-1)
#define		LCD_NOKIA1616_LAST_COL			(LCD_NOKIA1616_FIRST_COL+LCD_NOKIA1616_WIDTH-1)
//*************************************************************************
//***********Display is used in 16BIT color mode	BGR (5-6-5)**************
//*************************************************************************
/*
choose display interface mode:via software SPI(bitbang) or via USART 9bit
1) For bitbang mode CS, SCL, SDA, RST pins must be defined as GENERAL_OUTPUT_PUSH_PULL
2) For USART_9BIT mode CS and RST pins have to be defined as GENERAL_OUTPUT_PUSH_PULL.
   Also	USART have to be defined as following example:

RCC->APB2ENR 	|= RCC_APB2ENR_USART1EN;  //clock on USART
USART1->CR1 	|= USART_CR1_UE | USART_CR1_M | USART_CR1_OVER8;		//USART enable, 9 bit word length
USART1->CR2		|= USART_CR2_CLKEN | USART_CR2_STOP_0 | USART_CR2_CPOL | USART_CR2_CPHA | USART_CR2_LBCL; //CK line enabled
USART1->BRR		= 9+ (19<<4);		//USART divider for  230400 baudrate   (if 72MHZ APB2)
USART1->CR1 	|= USART_CR1_TE;
*/
//-------------INTERFACE MODE CHOICE----------------
//#define		LCD_NOKIA1616_BITBANG
#define 		LCD_NOKIA1616_USART_9BIT
//--------------------------------------------------
//choose default ram data access mode
#define 		LCD_NOKIA1616_OUTPUT_MODE					(MIRROR_X	| MIRROR_Y| LINE_BOTTOM_TO_TOP |	BGR_COLOR)			
/*****************************************************************************************
#define 		LCD_NOKIA1616_OUTPUT_MODE					MIRROR_X	

#define 		LCD_NOKIA1616_OUTPUT_MODE					MIRROR_X	| MIRROR_Y

#define 		LCD_NOKIA1616_OUTPUT_MODE					LINE_BOTTOM_TO_TOP 
in this mode reamer will start from trail side

#define			LCD_NOKIA1616_OUTPUT_MODE					WRITE_IN_Y_DIR	
in this mode ddddddddta will be written in Y direction (in colomns)

*****************************************************************************************/


//-----------------MODULE CHOICE--------------------
#define 	LCD_NOKIA1616_INCLUDE_ICONS8x8
#define 	LCD_NOKIA1616_INCLUDE_FONTS
#define		LCD_NOKIA1616_FONT5x8							0
//#define		LCD_NOKIA1616_UBUNTU10					1
//#define		LCD_NOKIA1616_UBUNTU10BOLD				2
//#define		LCD_NOKIA1616_VERDANA10					3


//--------------------------------------------------
//------------------PIN macroses--------------------
#define 	LCD_NOKIA1616_SCL_LOW					GPIOA->BSRR = GPIO_BSRR_BR8;
#define 	LCD_NOKIA1616_SCL_HIGH				GPIOA->BSRR = GPIO_BSRR_BS8;
#define 	LCD_NOKIA1616_SDA_LOW					GPIOA->BSRR = GPIO_BSRR_BR9;
#define 	LCD_NOKIA1616_SDA_HIGH				GPIOA->BSRR = GPIO_BSRR_BS9;

#define 	LCD_NOKIA1616_CS_LOW					GPIOB->BSRR = GPIO_BSRR_BR5;
#define 	LCD_NOKIA1616_CS_HIGH					GPIOB->BSRR = GPIO_BSRR_BS5;
#define 	LCD_NOKIA1616_RST_LOW					GPIOA->BSRR = GPIO_BSRR_BR12;
#define 	LCD_NOKIA1616_RST_HIGH				GPIOA->BSRR = GPIO_BSRR_BS12;
//--------------------------------------------------
//--------------Display commands--------------------
#define 	LCD_NOKIA1616_SOFT_RST							0x01
#define 	LCD_NOKIA1616_SLEEP_OUT							0x11
#define 	LCD_NOKIA1616_DISPLAY_MODE_ON				0x13
#define 	LCD_NOKIA1616_DISPLAY_INV_OFF				0x20
#define 	LCD_NOKIA1616_DISPLAY_INV_ON				0x21
#define 	LCD_NOKIA1616_IDLE_MODE_OFF					0x38
#define 	LCD_NOKIA1616_RGB_SIGNAL_CONTROL 		0xB0
#define 	LCD_NOKIA1616_COLOR_MODE_SELECT 		0x3A
#define 	LCD_NOKIA1616_DISPLAY_ON						0x29
#define 	LCD_NOKIA1616_RAM_DATA_ACCESS_CTRL  0x36

#define 	LCD_NOKIA1616_STRING_RANGE					0x2A
#define 	LCD_NOKIA1616_COLOMN_RANGE					0x2B
#define 	LCD_NOKIA1616_RAM_WRITE			   			0x2C

//LCD_NOKIA1616_COLOR_MODE_SELECT command masks
#define 	LCD_NOKIA1616_COLOR_12BIT						0x104
#define 	LCD_NOKIA1616_COLOR_16BIT						0x105
#define 	LCD_NOKIA1616_COLOR_18BIT						0x106

//LCD_NOKIA1616_RAM_DATA_ACCESS_CTRL command masks
#define 	MIRROR_Y						0x80	//Reset mask for normal
#define 	MIRROR_X						0x40	//Reset mask for normal
#define		WRITE_IN_Y_DIR			0x20	//Reset mask for write in x dir
#define 	LINE_BOTTOM_TO_TOP	0x10	//Reset mask for Top to bottom	
#define 	BGR_COLOR						0x08	//Reset mask for RGB color
#define 	MIRROR_Y_AND_X			MIRROR_Y | MIRROR_X	
//--------------------------------------------------
//----------------------Icons-----------------------
#define 	ICON8x8_CLOCK					0x00
#define 	ICON8x8_CONNECT				0x01
#define 	ICON8x8_DISK					0x02
#define 	ICON8x8_FLASH					0x03
#define 	ICON8x8_HEART					0x04
#define 	ICON8x8_HEART2				0x05
#define 	ICON8x8_LAN						0x06
#define 	ICON8x8_MAIL					0x07
#define 	ICON8x8_MUSIC					0x08
#define 	ICON8x8_POWER					0x09
#define 	ICON8x8_PRINTER				0x0A
#define 	ICON8x8_RECIEVE				0x0B
#define 	ICON8x8_SEND					0x0C
#define 	ICON8x8_STATUS				0x0D
#define 	ICON8x8_WAN						0x0E
#define 	ICON8x8_WIRELESS			0x0F
#define 	ICON8x8_WIRELESS2			0x10
#define 	ICON8x8_POINT					0x11
#define 	ICON8x8_DISCONNECT		0x12
//-------------------Functions----------------------
extern void 	LCD_NOKIA1616_reset (void);
extern void 	LCD_NOKIA1616_init (void);
extern uint16_t LCD_NOKIA1616_transform_color (uint32_t color);
extern void 	LCD_NOKIA1616_rectangle (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col, uint16_t color,uint8_t RAM_access_type );
extern void 	LCD_NOKIA1616_rectangle_from_buffer (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col, uint8_t *rectangle_buffer,uint8_t RAM_access_type );
extern void 	LCD_NOKIA1616_ram_data_access (uint16_t ram_access_type);

#ifdef		LCD_NOKIA1616_BITBANG
	extern void 	SPI_LCD (uint16_t data);
	#define 	SPI_LCD_DATA(data) 	{SPI_LCD(0x100 | (data));};
	#define 	SPI_LCD_CMD(command) 	{SPI_LCD((command));};
#endif		//LCD_NOKIA1616_BITBANG

#ifdef 		LCD_NOKIA1616_USART_9BIT
	extern void 	USART1_send (uint16_t data);
	#define 	SPI_LCD_DATA(data) 	{USART1_send(0x100 | (data));};
	#define 	SPI_LCD_CMD(command) 	{USART1_send((command));};
#endif 		//LCD_NOKIA161_USART_9BIT

#ifdef 		LCD_NOKIA1616_INCLUDE_ICONS8x8
	extern void 	LCD_NOKIA1616_print_icon8x8 (uint8_t icon_ID ,uint16_t x, uint16_t y, uint16_t backgnd_color, uint16_t icon_color,uint8_t RAM_access_type);
#endif		//LCD_NOKIA1616_INCLUDE_ICONS8x8


#define 	LCD_NOKIA1616_SET_FONT_COLOR(color) 		{Font_color = color;};
#define 	LCD_NOKIA1616_SET_FONT_BKGND_COLOR(color) 	{Font_bkgnd_color = color;};	

extern 	uint16_t  		Font_bkgnd_color, Font_color;

extern  uint8_t 			LCD_NOKIA1616_DrawChar(uint8_t x, uint8_t y, uint8_t c,uint8_t RAM_access_type);
extern  uint8_t	 			LCD_NOKIA1616_DrawString(uint8_t x, uint8_t y, const char *str,uint8_t RAM_access_type);
extern  void 					LCD_NOKIA1616_SetFont(uint8_t num);
//---------------------------------------------------

#endif			//NOKIA1616_H_
