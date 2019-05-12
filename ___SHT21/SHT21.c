 #include 	"SHT21.h"

void SHT21_write(uint8_t SHT21_command)
	{
    I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= SHT21_ADDRESS  ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

	I2C1->DR = SHT21_command;
	/*while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->DR = ISL90810_resistance;
	while (!(I2C1->SR1 & I2C_SR1_TXE))
		{};
	I2C1->CR1 	|= I2C_CR1_STOP;		 */
	}

void SHT21_read (uint8_t Data_MSB, uint8_t Data_LSB, uint8_t Data_checksum)
	{
	//uint8_t resistance;
	I2C1->CR1 		|= I2C_CR1_START;  		//form start condition
	while (!(I2C1->SR1 & I2C_SR1_SB))
		{};

	(void) I2C1->SR1;					   //reset SB flag
	I2C1->DR	= SHT21_ADDRESS_AND_READ ;

	while (!(I2C1->SR1 & I2C_SR1_ADDR))
		{};
	(void) I2C1->SR1;
	(void) I2C1->SR2;

/*	I2C1->DR = ISL90810_REG_ADRESS_BYTE;
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
	 I2C1->CR1 	|= I2C_CR1_STOP;   */

	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	Data_MSB = I2C1->DR;
	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	Data_LSB = I2C1->DR;
	while (!(I2C1->SR1 & I2C_SR1_RXNE))
		{};
	Data_checksum = I2C1->DR;
	//
	I2C1->CR1 	|= I2C_CR1_STOP;
	};



