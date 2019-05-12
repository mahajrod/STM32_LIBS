#include 	"main.h"
#include 	"ISL90810.c"

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
	GPIOB->CRL		&= ~GPIO_CRL_CNF4;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE4_1;
	GPIOB->CRL		&= ~GPIO_CRL_CNF3;      	//reset CNF5 bits  00 -push-pull mode
	GPIOB->CRL		|= GPIO_CRL_MODE3_1;
	//-----------Init I2C1--------------
/*	PIN_CONFIGURATION(I2C1_SDA);
	PIN_CONFIGURATION(I2C1_SCL);	
	RCC->APB1ENR 	|= RCC_APB1ENR_I2C1EN;		// enable clock on I2C1

	I2C1->CR2 		&= ~I2C_CR2_FREQ;	 		//set current PCLK1 freq
	I2C1->CR2		|= 8;

	I2C1->CCR		&= ~I2C_CCR_CCR;			//set prescaler  for 100kHz operation
  I2C1->CCR		|=  80;

	I2C1->TRISE		=	9;					   	//set max rising time
	
	I2C1->CR1 		|= I2C_CR1_PE; 		 	//enable I2C1*/
	//--------MOtor control GPIO---------
	PIN_CONFIGURATION(MOTOR_1_FOR);
	PIN_CONFIGURATION(MOTOR_2_FOR);
	PIN_CONFIGURATION(MOTOR_3_FOR);
	PIN_CONFIGURATION(MOTOR_4_FOR);
	PIN_CONFIGURATION(MOTOR_1_REV);
	PIN_CONFIGURATION(MOTOR_2_REV);
	PIN_CONFIGURATION(MOTOR_3_REV);
	PIN_CONFIGURATION(MOTOR_4_REV);
	

	}

/*void ISL90810_write(uint8_t ISL90810_resistance)
	{
    I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= ISL90810_WRITE ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

	I2C1->DR = ISL90810_REG_ADRESS_BYTE;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->DR = ISL90810_resistance;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->CR1 	|= I2C_CR1_STOP;
	}

uint8_t ISL90810_read ()
	{
	uint8_t resistance;
	I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= ISL90810_WRITE ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

	I2C1->DR = ISL90810_REG_ADRESS_BYTE;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};

	I2C1->CR1 		|= I2C_CR1_START;  		//form second start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= ISL90810_READ ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;
	 I2C1->CR1 	|= I2C_CR1_STOP;

	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	resistance = I2C1->DR;
	//
	return resistance;
	};*/

int main (void)
	{
 	delay_ms (10000);
	init_all();
//	ISL90810_write (14);
//	ISL90810_read();
	GPIOB->BSRR = GPIO_BSRR_BS15 | GPIO_BSRR_BR14 | GPIO_BSRR_BS13 | GPIO_BSRR_BR12;
	GPIOA->BSRR = GPIO_BSRR_BS11 | GPIO_BSRR_BR10 | GPIO_BSRR_BS9 | GPIO_BSRR_BR8;
	while (1)
		{
		//ISL90810_write (14);
		GPIOB->BSRR = GPIO_BSRR_BS15 | GPIO_BSRR_BS14 | GPIO_BSRR_BS13 | GPIO_BSRR_BS12;
		GPIOA->BSRR = GPIO_BSRR_BS11 | GPIO_BSRR_BS10 | GPIO_BSRR_BS9 | GPIO_BSRR_BS8;
		delay_ms(2400);
		//GPIOB->BSRR = GPIO_BSRR_BR15 | GPIO_BSRR_BR14 | GPIO_BSRR_BR13 | GPIO_BSRR_BR12;
		//GPIOA->BSRR = GPIO_BSRR_BR11 | GPIO_BSRR_BR10 | GPIO_BSRR_BR9 | GPIO_BSRR_BR8;
		//ISL90810_write (140);
		delay_ms(2400);
		};
	}
