#include    "main.h"

void init_all (void)
	{
	//Clock_init
	//using HSI
	//-------Pereph clock section--------
	RCC->APB2ENR 	|= RCC_APB2ENR_IOPBEN | RCC_APB2ENR_IOPAEN;  	//clock on portB and portA	
	//--------GPIO init section---------- 
	PIN_CONFIGURATION(PORTA_PIN_0);
	PIN_CONFIGURATION(PORTA_PIN_1);
		
	PIN_CONFIGURATION(USART2_TX);			//PA2
	PIN_CONFIGURATION(USART2_RX);			//PA3
	PIN_CONFIGURATION(USART2_CK);			//PA4
	PIN_CONFIGURATION(DAC2);					//PA5
	PIN_CONFIGURATION(ADC1_IN6);				//PA6
		
	PIN_CONFIGURATION(PORTA_PIN_7);
	PIN_CONFIGURATION(PORTB_PIN_0);
	PIN_CONFIGURATION(PORTB_PIN_1);
	PIN_CONFIGURATION(PORTB_PIN_2);
	PIN_CONFIGURATION(PORTB_PIN_10);
	PIN_CONFIGURATION(PORTB_PIN_11);

	//Pins_init
	
	}

int main (void)
	{
	init_all();
		
	while (1)
		{
		};
//	return 0;
	}
