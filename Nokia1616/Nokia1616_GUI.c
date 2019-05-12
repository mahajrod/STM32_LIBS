#include		"Nokia1616_GUI.h"

const COLORTHEME color_themes[] = {
		{0xE73C, 0x1082, 0xB596, 0xF800, 0xCE79, 0x4A69, 0xFE15, 0x1082, 0xFE15, 0x1082, 0xFC07, 0xFFFF},
		{0xFFFF, 0x0000, 0xFFFF, 0x0000, 0xFFFF, 0x0000, 0xFFFF, 0x0000, 0xFFFF, 0x0000, 0x0000, 0xFFFF}
		}	;
const COLORTHEME		*current_theme = &color_themes[0];
//--------Menu status variables------
uint8_t		current_window 		= 	0x00;		
uint8_t		prev_window				=		0x00;
uint8_t 	current_string		=		0x00;
//-----------------------------------

//---------GUI defines---------------
#define 	GUI_NUMBER_OF_WINDOWS						2	
CREATE_WINDOW_MASSIVES(0,2,"WIN0");
CREATE_WINDOW_MASSIVES(1,2,"WIN1");
WINDOWPARAMETERS		GUI_windows[GUI_NUMBER_OF_WINDOWS] = {{GUI_WINDOW_0},{GUI_WINDOW_1}};



//void 	LCD_N1616_GUI_Draw_window	(uint8_t window_ID);
	//{

	//};
/*
	
void 	LCD_N1616_GUI_Draw_scroll			(void); 
	{

	};
		
void	LCD_N1616_GUI_Select_string		(void);
	{

	};
	
void 	LCD_N1616_GUI_Shift_strings		(void);
	{

	};*/
	
	