#ifndef			NOKIA1616_GUI_H_
#define			NOKIA1616_GUI_H_
#include		"Nokia1616.h"

//----------configuration section--------------------
#define			LCD_N1616_GUI_USE_TOP_BAR
#define			LCD_N1616_GUI_USE_BOTTOM_BAR
#define			LCD_N1616_GUI_USE_SCROLL_AREA

#define			LCD_N1616_GUI_TOP_BAR_HEIGHT				10
#define			LCD_N1616_GUI_BOTTOM_BAR_HEIGHT			10
#define			LCD_N1616_GUI_SCROLL_AREA_WIDTH			4
#define			LCD_N1616_GUI_LEFT_AREA_WIDTH				0
#define			LCD_N1616_GUI_WINDOW_HEIGHT					( LCD_NOKIA1616_HEIGHT - LCD_N1616_GUI_TOP_BAR_HEIGHT - LCD_N1616_GUI_BOTTOM_BAR_HEIGHT )
#define			LCD_N1616_GUI_WINDOW_WIDTH 					( LCD_NOKIA1616_WIDTH - LCD_N1616_GUI_SCROLL_AREA_WIDTH )


//-------------Stuctures-----------------------------
typedef struct tagCOLORTHEME
	{
	uint16_t	 	window_bkgnd_color;
	uint16_t		window_font_color;
	uint16_t 		window_header_bkgnd_color;
	uint16_t		window_header_font_color;
	uint16_t		scroll_bkgnd_color;
	uint16_t		scroll_color;
	uint16_t		top_bar_bkgnd_color;
	uint16_t		top_bar_font_color;
	uint16_t		bottom_bar_bkgnd_color;
	uint16_t		bottom_bar_font_color;
	uint16_t		selected_string_bkgnd_color;
	uint16_t		selected_string_font_color;
	}	COLORTHEME;
	
typedef	struct tagSTRINGPARAMETERS	
	{
	uint8_t parent_window_ID;
	}	STRINGPARAMETERS;

typedef	struct tagWINDOWPARAMETERS
	{
	uint8_t 							prev_window_ID;
	uint8_t								number_of_strings;
	STRINGPARAMETERS 			*massive_of_strings;		
	const char						*window_header;	//pointer to string with window header
	} WINDOWPARAMETERS;

//--------------Variables------------------
extern const COLORTHEME 	color_themes[];
extern const COLORTHEME		*current_theme;
extern uint8_t			current_window;
extern uint8_t			prev_window;
extern uint8_t 			current_string;	
//----------------Macroses-----------------	
#define 	CREATE_WINDOW_MASSIVES(window_ID,number_of_strings,window_header)		\
								STRINGPARAMETERS		window_##window_ID##_strings[number_of_strings];	\
								const char					window_##window_ID##_header[] = window_header;	\
								
#define		GUI_WINDOW_0		0,2,window_0_strings , window_0_header
#define		GUI_WINDOW_1		0,2,window_1_strings , window_1_header
//-----------------Functions----------------

#define			LCD_N1616_GUI_Draw_top_bar()			\
							LCD_NOKIA1616_rectangle (LCD_NOKIA1616_FIRST_STR, LCD_NOKIA1616_FIRST_STR+LCD_N1616_GUI_TOP_BAR_HEIGHT-1, LCD_NOKIA1616_FIRST_COL, LCD_NOKIA1616_LAST_COL, current_theme->top_bar_bkgnd_color,LCD_NOKIA1616_OUTPUT_MODE );
#define			LCD_N1616_GUI_Draw_bottom_bar()		\
							LCD_NOKIA1616_rectangle (LCD_NOKIA1616_LAST_STR-LCD_N1616_GUI_TOP_BAR_HEIGHT+1, LCD_NOKIA1616_LAST_STR, LCD_NOKIA1616_FIRST_COL, LCD_NOKIA1616_LAST_COL, current_theme->bottom_bar_bkgnd_color,LCD_NOKIA1616_OUTPUT_MODE );

#define 		LCD_N1616_GUI_WINDOW_FIRST_STR	( LCD_NOKIA1616_FIRST_STR + LCD_N1616_GUI_TOP_BAR_HEIGHT )
#define			LCD_N1616_GUI_WINDOW_LAST_STR		( LCD_NOKIA1616_LAST_STR 	- LCD_N1616_GUI_TOP_BAR_HEIGHT )
#define 		LCD_N1616_GUI_WINDOW_FIRST_COL	( LCD_NOKIA1616_FIRST_COL + LCD_N1616_GUI_LEFT_AREA_WIDTH )
#define			LCD_N1616_GUI_WINDOW_LAST_COL		( LCD_NOKIA1616_LAST_COL 	- LCD_N1616_GUI_SCROLL_AREA_WIDTH )

extern void 	LCD_N1616_GUI_Draw_window			(uint8_t window_ID);
extern void 	LCD_N1616_GUI_Draw_scroll			(void); 
extern void		LCD_N1616_GUI_Select_string		(void);
extern void 	LCD_N1616_GUI_Shift_strings		(void);

#endif			//NOKIA1616_GUI_H_
