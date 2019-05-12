/*
Library for 16x2 LCD
library includes following file LCD16x2.h,LCD16x2.c, LCD16x2.conf
if you need 4bit data length use "#define LCD_16x2_4bit_interface"
            8bit data length use "#define LCD_16x2_8bit_interface"
*/
#ifndef     LCD_16x2_H_
#define     LCD_16x2_H_

#include    "LCD16x2_conf.h"
#include	"main.h"

#define     LCD_16x2_CLEAR                   0x01    //Clear display    ~ 1.53 us
#define     LCD_16x2_HOME                    0x02    //Return home      ~ 1.53 us
#define     LCD_16x2_CUR_DIR_RIGHT           0x06    //Cursor direction right
#define     LCD_16x2_CUR_DIR_LEFT            0x04    //Cursor direction left;
#define     LCD_16x2_DISPLAY_SHIFT_EN        0x05    //Display shift enable; combine with  one of two previous
#define     LCD_16x2_DISPLAY_OFF             0x08    //Display off
#define     LCD_16x2_DISPLAY_ON              0x0C    //Display on without cursor
#define     LCD_16x2_CURSOR_ON               0x0E    //Cursor on
#define     LCD_16x2_CURSOR_BLINK_ON         0x0F    //Cursor blinking on
#define     LCD_16x2_CURSOR_MOVING_ON        0x18    //Cursor moving on
#define     LCD_16x2_4BIT_2LINE_5x8          0x28    //4bit interface,2-line,5x8 font
#define     LCD_16x2_8BIT_2LINE_5x8          0x38    //8bit interface,2-line,5x8 font
#define     LCD_16x2_SET_GGRAM_ADDR          0x40    //Set GGRAM address, combine with it
#define     LCD_16x2_SET_DDRAM_ADDR          0x80    //Set DDRAM address, combine with it
#define     LCD_16x2_SECOND_LINE             0x40    //Start address of second line 


extern void      LCD_16x2_write        (uint8_t data);
extern void      LCD_16x2_command      (uint8_t command);
extern void      LCD_16x2_set_addr     (uint8_t line,uint8_t column);
extern void      LCD_16x2_init         (void);
extern void      LCD_16x2_write_string (uint8_t * string);

#endif        //LCD_16x2_H_
