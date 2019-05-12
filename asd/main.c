#include 	"stm32f10x.h"
#include    "stdint.h"
#include    "core_cm3.h"
#include    "system_stm32f10x.h"

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

int main (void)
	{
	RCC->APB2ENR 	|= RCC_APB2ENR_IOPBEN | RCC_APB2ENR_IOPAEN;  	//clock on portB and portA
	//--------GPIO init section---------- 
	GPIOB->CRL		&= ~GPIO_CRL_CNF5;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE5_1; 
	GPIOB->CRL		&= ~GPIO_CRL_CNF4;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE4_1;
	GPIOB->CRL		&= ~GPIO_CRL_CNF3;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE3_1;
	while (1)
		{
		GPIOB->BSRR = GPIO_BSRR_BR5;
		GPIOB->BSRR = GPIO_BSRR_BR4;
		GPIOB->BSRR = GPIO_BSRR_BR3;
		delay_ms(240000);
		GPIOB->BSRR = GPIO_BSRR_BS5;
		GPIOB->BSRR = GPIO_BSRR_BS4;
		GPIOB->BSRR = GPIO_BSRR_BS3;
		delay_ms(240000);
		};
	}