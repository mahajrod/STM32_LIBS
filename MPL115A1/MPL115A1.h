#ifndef		MPL115A1_H_
#define		MPL115A1_H_

#include 	"main.h"

//MPL115A1 register map
#define		Padc_MSB			0x00		//Pressure ADC MSB output
#define 	Padc_LSB			0x01		//Pressure ADC LSB output
#define		Tadc_MSB 			0x02		//Temperature ADC MSB output
#define 	Tadc_LSB 			0x03		//Temperature ADC LSB output
#define 	A0_MSB 				0x04		//A0 coefficient MSB
#define		A0_LSB 				0x05		//A0 coefficient LSB
#define		B1_MSB 				0x06		//B1 coefficient MSB
#define		B1_LSB 				0x07		//B1 coefficient LSB
#define 	B2_MSB 				0x08		//B2 coefficient MSB
#define		B2_LSB 				0x09		//B2 coefficient LSB
#define		C12_MSB 			0x0A		//AC12 coefficient MSB
#define		C12_LSB 			0x0B		//AC12 coefficient LSB
#define 	CONVERT 			0x12		//Start P and T conversion

//MPL115A1 commands
#define 	READ_CMD			0x80
#define		WRITE_CMD			0x00

//Commands are calculated by following:
//		CMD+REG_ADRESS << 1
#define 	START_CONV 			0x24		//Start_convertion

#define		READ_Padc_MSB		0x80		
#define 	READ_Padc_LSB		0x82		
#define		READ_Tadc_MSB 		0x84		
#define 	READ_Tadc_LSB 		0x86	
#define 	READ_A0_MSB 		0x88	
#define		READ_A0_LSB 		0x8A	
#define		READ_B1_MSB 		0x8C	
#define		READ_B1_LSB 		0x8E	
#define 	READ_B2_MSB 		0x90	
#define		READ_B2_LSB 		0x92	
#define		READ_C12_MSB 		0x94		
#define		READ_C12_LSB 		0x96

//#define 	MPL115A1_cmd( x ) 	 SPI1_Write_read( x ) 
#define 	MPL115A1_SS_PIN_ENABLE 		GPIOA->BSRR = GPIO_BSRR_BR4;
#define 	MPL115A1_SS_PIN_DISABLE		GPIOA->BSRR = GPIO_BSRR_BS4;

extern void MPL115A1_read_coefficients ( uint16_t coef_A0,uint16_t coef_B1,uint16_t coef_B2,uint16_t coef_C12 ) ;

#endif
