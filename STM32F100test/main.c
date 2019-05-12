#include 	"main.h"

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

void init_all (void)
	{

	RCC->APB2ENR 	|= RCC_APB2ENR_IOPBEN | RCC_APB2ENR_IOPAEN;  	//clock on portB and portA
	//--------GPIO init section---------- 
	GPIOB->CRL		&= ~GPIO_CRL_CNF5;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE5_1; 	
	}

int main (void)
	{

	init_all();

	while (1)
		{
		GPIOB->BSRR = GPIO_BSRR_BR5;
		delay_ms(2400);
		GPIOB->BSRR = GPIO_BSRR_BS5;
		delay_ms(2400);
		};
	}
