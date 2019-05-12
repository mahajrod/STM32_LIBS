#include	"LM75.h"

void LM75_write_1byte (uint8_t LM75_REG,uint8_t LM75_REG_VALUE)
	{
    I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= LM75_WRITE;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

	I2C1->DR = LM75_REG;

	I2C1->CR1 		|= I2C_CR1_START;  		//form second start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag

	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->DR = LM75_REG_VALUE;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->CR1 	|= I2C_CR1_STOP;
	}

uint16_t LM75_read_2byte (uint8_t LM75_REG_ADDRESS)
	{
	uint16_t result;
	I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= LM75_WRITE;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

	I2C1->DR = LM75_REG_ADDRESS;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};

	I2C1->CR1 		|= I2C_CR1_START;  		//form second start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= LM75_READ ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;
	

	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	result = (I2C1->DR) << 8;

	I2C1->CR1 	|= I2C_CR1_STOP;

	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	result = result + I2C1->DR;
	//
	return result;
	};


