#include	"MPL115A1.h"

uint16_t raw_pressure, raw_temp,coef_A0,coef_B1,coef_B2,coef_C12;
uint16_t sensor_temp_byte;

//uint8_t SPI1_Write_read (uint8_t cmd)
//	{}

void MPL115A1_read_coefficients ( uint16_t coef_A0,uint16_t coef_B1,uint16_t coef_B2,uint16_t coef_C12 )
	{
	MPL115A1_SS_PIN_ENABLE;

	SPI1_Write_read (READ_A0_MSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_A0 	= 	sensor_temp_byte << 8;
	SPI1_Write_read (READ_A0_LSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_A0 	+=	sensor_temp_byte;
	
	SPI1_Write_read (READ_B1_MSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_B1 	= 	sensor_temp_byte << 8;
	SPI1_Write_read (READ_B1_LSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_B1 	+=	sensor_temp_byte;
	
	SPI1_Write_read (READ_B2_MSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_B2 	= 	sensor_temp_byte << 8;
	SPI1_Write_read (READ_B2_LSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_B2 	+=	sensor_temp_byte;
	
	SPI1_Write_read (READ_C12_MSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_C12 	= 	sensor_temp_byte << 6;
	SPI1_Write_read (READ_C12_LSB);
	sensor_temp_byte 	= 	SPI1_Write_read (0x00);
	coef_C12 	+=	sensor_temp_byte >> 2;

	MPL115A1_SS_PIN_DISABLE;		
	}
void MPL115A1_read_press_and_temp (uint16_t raw_pressure, uint16_t raw_temp)
	{
	//temp = MPL115A1_READ;
	//raw_pressure = 
	}
