#include   "LCD16x2.h" 


void      LCD_16x2_wr (uint8_t data)
  {
  if  (data & (1<<7) )  
    {LCD_16x2_DATA_PORT_DB7_PIN_SET} else LCD_16x2_DATA_PORT_DB7_PIN_RST;
  if  (data & (1<<6) )  
    {LCD_16x2_DATA_PORT_DB6_PIN_SET} else LCD_16x2_DATA_PORT_DB6_PIN_RST;
  if  (data & (1<<5) )  
    {LCD_16x2_DATA_PORT_DB5_PIN_SET} else LCD_16x2_DATA_PORT_DB5_PIN_RST;
  if  (data & (1<<4) ) 
    {LCD_16x2_DATA_PORT_DB4_PIN_SET} else LCD_16x2_DATA_PORT_DB4_PIN_RST;
  }

void      LCD_16x2_command (uint8_t command)
  {
  LCD_16x2_wr(command);
  LCD_16x2_CTRL_E_PIN_SET
  
  LCD_16x2_CTRL_E_PIN_RST
  
  LCD_16x2_wr(command << 4);
  LCD_16x2_CTRL_E_PIN_SET
  
  
  LCD_16x2_CTRL_E_PIN_RST
  }

void      LCD_16x2_write (uint8_t data)
  {
  LCD_16x2_wr(data);
  LCD_16x2_CTRL_RS_PIN_SET 
  LCD_16x2_CTRL_E_PIN_SET
  
  LCD_16x2_CTRL_E_PIN_RST 

  LCD_16x2_wr(data << 4);

  LCD_16x2_CTRL_E_PIN_SET
  
  LCD_16x2_CTRL_E_PIN_RST
  LCD_16x2_CTRL_RS_PIN_RST 
  }

void      LCD_16x2_set_addr   (uint8_t line,uint8_t column)
  {
  if  (line != 0)
    {
    LCD_16x2_command(LCD_16x2_SET_DDRAM_ADDR | LCD_16x2_SECOND_LINE | column );  
    } else LCD_16x2_command(LCD_16x2_SET_DDRAM_ADDR | column );
  }

void      LCD_16x2_write_string (uint8_t * string)
  {
  while (*string != 0)
    {
    LCD_16x2_write(*string++);
    delay_ms(1);
    };
  }

void      LCD_16x2_init (void)
  {
  LCD_16x2_DATA_PORT_DB4_PIN_RST
  LCD_16x2_DATA_PORT_DB5_PIN_RST
  LCD_16x2_DATA_PORT_DB6_PIN_RST
  LCD_16x2_DATA_PORT_DB7_PIN_RST
  LCD_16x2_CTRL_E_PIN_RST
  LCD_16x2_CTRL_RS_PIN_RST
  LCD_16x2_CTRL_RW_PIN_RST
  
  LCD_16x2_DATA_PORT_DB4_PIN_MODE
  LCD_16x2_DATA_PORT_DB5_PIN_MODE
  LCD_16x2_DATA_PORT_DB6_PIN_MODE
  LCD_16x2_DATA_PORT_DB7_PIN_MODE
  LCD_16x2_CTRL_E_PIN_MODE
  LCD_16x2_CTRL_RS_PIN_MODE
  LCD_16x2_CTRL_RW_PIN_MODE

  LCD_16x2_DATA_PORT_DB4_PIN_SPEED
  LCD_16x2_DATA_PORT_DB5_PIN_SPEED
  LCD_16x2_DATA_PORT_DB6_PIN_SPEED
  LCD_16x2_DATA_PORT_DB7_PIN_SPEED
  LCD_16x2_CTRL_E_PIN_SPEED
  LCD_16x2_CTRL_RS_PIN_SPEED
  LCD_16x2_CTRL_RW_PIN_SPEED
 
  LCD_16x2_wr(0x30);
  LCD_16x2_CTRL_E_PIN_SET
   
  LCD_16x2_CTRL_E_PIN_RST
  delay_ms(4);
  
  LCD_16x2_command(LCD_16x2_4BIT_2LINE_5x8);
  delay_ms(4);
  
  LCD_16x2_command(LCD_16x2_4BIT_2LINE_5x8);
  delay_ms(4);
  
  LCD_16x2_command(LCD_16x2_CURSOR_ON);
  delay_ms(4);
  
  LCD_16x2_command(LCD_16x2_CLEAR );
  delay_ms(8);
  
  LCD_16x2_command (LCD_16x2_CUR_DIR_RIGHT);
  delay_ms(4);
  };
