#include    "main.h"
#include 	"LCD16x2.h"
//#include 	"RF2400P.h"
#include 	"SDcard.h"
#include 	"MPL115A1.h"

#include 	"Nokia1616.h"
//#include	"font.h"
//#include 	"font5x8.c"
//#include 	"icons.c"
//

#include	"FreeRTOSConfig.h"
#include 	"FreeRTOS.h"
#include 	"task.h"
#include 	"semphr.h"


//----------Global variables--------------
char 			LCD16x2_buffer[33];
uint8_t 		LCD16x2_buffer_counter = 0;
const uint8_t  	LCD_decode [] = 
	{'0', '1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

char			dec_number[4];
//char			SPI_value[3];
//char 			RF2400P_reg_value[3];
//uint8_t 		RF2400P_reg;
				   
uint16_t		ADC_result = 0;
uint8_t			ADC_counter = 0;
uint8_t 		SPI_data = 0;

uint8_t 		Joystick_data[10];
uint16_t		Joystick_axes[3];
uint16_t		Joystick_buttons;
uint8_t 		Joystick_flag = 0xFF;

uint8_t 		SD_buff[512];                  //буфер для чтения/записи сектора карты                  //
uint8_t 		SDinit = 0xFF;
uint8_t 		SDread = 0xFF;
//----------------------------------------
//------------RTOS variables--------------
xSemaphoreHandle 	Semaphore_ADC_meaning_end;
xSemaphoreHandle 	Semaphore_SPI2_TXE;
xSemaphoreHandle 	Semaphore_SPI2_RXNE;
//----------General functions---------------
void LCD_16x2_write_string_to_buffer (uint8_t * string)
  {
  int i = 0;
  while (*string != 0)
    {
    LCD16x2_buffer[i] = *string++;
	i++;
    };
  }

void LCD_decode_bin_to_dec_0000 (uint16_t number, char dec_number[4])
	{
	dec_number[0] =	LCD_decode[(number/1000) & 0x0F];
	dec_number[1] =	LCD_decode[(number % 1000)/100 & 0x0F];
	dec_number[2] =	LCD_decode[((number % 1000) % 100) / 10 & 0x0F];
	dec_number[3] =	LCD_decode[(((number % 1000) % 100) % 10) & 0x0F];
	}
	
 void LCD_decode_bin_to_dec_000 (uint8_t number, char dec_number[3])
	{
	dec_number[0] =	LCD_decode[(number/100) & 0x0F];
	dec_number[1] =	LCD_decode[(number % 100)/10 & 0x0F];
	dec_number[2] =	LCD_decode[((number % 100) % 10) & 0x0F];
	}

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
//--------------init functions------------
void init (void)
	{
	//----------Clock section------------
	RCC->CFGR		&= ~RCC_CFGR_SW;
	RCC->CFGR 		|= RCC_CFGR_SW_HSI;
	RCC->CR			|= RCC_CR_HSEON;
	RCC->CR			&= ~RCC_CR_PLLON;
	while (!(RCC->CR & RCC_CR_HSERDY))
		{};
	FLASH->ACR 		|= FLASH_ACR_PRFTBE;   		//configuring flash for 2 cycle waiting
	FLASH->ACR		&= ~FLASH_ACR_LATENCY;
	FLASH->ACR 		|= FLASH_ACR_LATENCY_2;
	//AHB prescaler = 1, APB2 prescaler = 1, APB1 prescaler = 2
	RCC->CFGR 		|= RCC_CFGR_HPRE_DIV1 |RCC_CFGR_PPRE2_DIV1 |RCC_CFGR_PPRE1_DIV2;		
	RCC->CFGR 		&= ~RCC_CFGR_PLLSRC; 
	RCC->CFGR 		&= ~RCC_CFGR_PLLXTPRE; 
	RCC->CFGR 		&= ~RCC_CFGR_PLLMULL; //reset PLL settings
	RCC->CFGR		|= RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLMULL6; // PLL source HSE, PLL MULL (12MHz * 6 = 72 MHz)
	RCC->CR			|= RCC_CR_PLLON; 			//PLL on
	
	while (!(RCC->CR & RCC_CR_PLLRDY))
		{};
	
	RCC->CFGR 		&= ~RCC_CFGR_SW;			//set PLL as system clock source
 	RCC->CFGR		|= RCC_CFGR_SW_PLL;
	
	while (RCC->CFGR & RCC_CFGR_SWS != 0x08)
		{};	 		
	//-------Pereph clock section--------
	RCC->APB2ENR 	|= RCC_APB2ENR_IOPBEN | RCC_APB2ENR_IOPAEN;  	//clock on portB and portA
	
	//--------GPIO init section---------- 

	PIN_CONFIGURATION(PORTB_PIN_10);
	PIN_CONFIGURATION(PORTB_PIN_11);
	//-------------SPI2------------------
 	PIN_CONFIGURATION(SPI2_MOSI);
	PIN_CONFIGURATION(SPI2_MISO);
	PIN_CONFIGURATION(SPI2_SCK);
	PIN_CONFIGURATION(SPI2_NSS);
 
	RCC->APB1ENR 	|= RCC_APB1ENR_SPI2EN;		//clock on SPI2
	SPI2->CR1		&= ~SPI_CR1_BR;				//reset SPI1 prescaleer
	SPI2->CR1 		|= SPI_CR1_BR_2 | SPI_CR1_BR_1; 	//SPI1 prescaller = 128
	SPI2->CR1 		|= SPI_CR1_MSTR;			//  master mode on
	SPI2->CR2 		|= SPI_CR2_SSOE;// | SPI_CR2_TXEIE | SPI_CR2_RXNEIE;	//NSS hardware mode output,	TXE & RXNE IE enable			
	SPI2->CR1		|= SPI_CR1_SPE;				//SPI1 on 	
	//-----------I2C1--------------
	PIN_CONFIGURATION(I2C1_SDA);
	PIN_CONFIGURATION(I2C1_SCL);

	RCC->APB1ENR 	|= RCC_APB1ENR_I2C1EN;		// enable clock on I2C1	
	I2C1->CR2 		&= ~I2C_CR2_FREQ;	 		//set current PCLK1 freq
	I2C1->CR2		|= 36;
	I2C1->CCR		&= ~I2C_CCR_CCR;			//set prescaler  for 100kHz operation
    I2C1->CCR		|=  360;
	I2C1->TRISE		=	29;					   	//set max rising time	
	I2C1->CR1 		|= I2C_CR1_PE; 		 	//enable I2C1
	//--------------UART2----------------
	PIN_CONFIGURATION(UART2_RX);
	PIN_CONFIGURATION(UART2_TX);
	
	RCC->APB1ENR 	|= RCC_APB1ENR_USART2EN;  //clock on USART
	USART2->CR1 	|= USART_CR1_UE;		//USART enable
	USART2->BRR		= 9+ (19<<4);		//USART divider for	  115200  (36MHZ APB1)
	USART2->CR1 	|= USART_CR1_RXNEIE | USART_CR1_RE;// | USART_CR1_TE | USART_CR1_TXEIE; //USART receiver, transmiter and RXNE and TXE int enabled

 	//--------------UART1----------------
	PIN_CONFIGURATION(UART1_RX);
	PIN_CONFIGURATION(UART1_TX);
	PIN_CONFIGURATION(UART1_CK);
	PIN_CONFIGURATION(PORTB_PIN_5);
	PIN_CONFIGURATION(RESET_PIN);
	RCC->APB2ENR 	|= RCC_APB2ENR_USART1EN;  //clock on USART
	USART1->CR1 	|= USART_CR1_UE | USART_CR1_M | USART_CR1_OVER8;		//USART enable, 9 bit word length
	USART1->CR2		|= USART_CR2_CLKEN | USART_CR2_STOP_0 | USART_CR2_CPOL | USART_CR2_CPHA | USART_CR2_LBCL; //ck line enabled
	USART1->BRR		= (10<<4);		//USART divider for  230400 baudrate   (72MHZ APB2)
	USART1->CR1 	|= USART_CR1_TE;// | USART_CR1_TXEIE; //USART receiver, transmiter and RXNE and TXE int enabled
	
/*	PIN_CONFIGURATION(LCD_SCL);
	PIN_CONFIGURATION(LCD_SDA);
	PIN_CONFIGURATION(PORTB_PIN_5);
	PIN_CONFIGURATION(RESET_PIN);	 */
	//--------------TIM1-----------------
	RCC->APB2ENR	|= RCC_APB2ENR_TIM1EN;		//clock on TIM1
	GPIOA->CRH		&= ~GPIO_CRH_CNF11;
	GPIOA->CRH		|= GPIO_CRH_CNF11_1;		//alternativw function push-pull
	GPIOA->CRH		|= GPIO_CRH_MODE11_1;	//max 2MHz

	TIM1->CCR4		=	915;					
	TIM1->PSC		=	39;						//TIM1 prescaler 39+1=40
	TIM1->ARR		=	36000;					//count till 36000
	TIM1->CCMR2		|=	TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1; //PWM mode 1
	TIM1->CCMR2		|=  TIM_CCMR2_OC4PE;		//preload enable
	TIM1->CCER		|=	TIM_CCER_CC4E;			//output enable
	TIM1->BDTR		|=	TIM_BDTR_MOE;			//main output enable
	TIM1->CR1		|=  TIM_CR1_CEN | TIM_CR1_ARPE; 	//counter with autoreload enable
	
	//--------------ADC------------------
	RCC->CFGR 		&= ~RCC_CFGR_ADCPRE;		//reset ADC pre prescaler
	RCC->CFGR 		|= RCC_CFGR_ADCPRE_DIV8;	//ADC pre prescaler = 8, freq= 72MHz/8 = 9MHz
	RCC->APB2ENR	|= RCC_APB2ENR_ADC1EN;		//ADC1 clock on
	GPIOA->CRL 		&= ~GPIO_CRL_CNF1;			//configure PortA pin1 to analog
	GPIOA->CRL		&= ~GPIO_CRL_MODE1; 
	ADC1->SQR3		|= ADC_SQR3_SQ1_0;			//select ADC channel 1
	ADC1->CR2		|= ADC_CR2_EXTSEL | ADC_CR2_EXTTRIG; //software start? external trigger enable
	ADC1->CR2		|= ADC_CR2_RSTCAL;// | ADC_CR2_CONT;			//calibrate ADC
	ADC1->CR2		|= ADC_CR2_ADON;
	while ((ADC1->CR2 & ADC_CR2_RSTCAL) == ADC_CR2_RSTCAL)
		{};
	ADC1->CR2 		|= ADC_CR2_CAL;
	while ((ADC1->CR2 & ADC_CR2_RSTCAL) == ADC_CR2_CAL)
		{};
	ADC1->CR1 		|= ADC_CR1_EOCIE;			//End of conversion interrupt enable
	}
///--------------SPI functions-----------------
uint8_t SD_SPI_Write_read 	(uint8_t data)
	{
	while (!(SPI2->SR & SPI_SR_TXE))
		{};
//	xSemaphoreTake (Semaphore_SPI2_TXE, portMAX_DELAY);
	SPI2->DR 	= 	data;
//	xSemaphoreTake (Semaphore_SPI2_RXNE, portMAX_DELAY);
	while (!(SPI2->SR & SPI_SR_RXNE))
		{};
	return (SPI2->DR);	
	}
//------------------USART1---------------------
/*void USART1_send (uint16_t data)
	{
	uint32_t temp;
	temp = __RBIT (data) >> 23;
	while (!(USART1->SR & USART_SR_TXE))
		{};
	USART1->DR = temp;
	}	  */

//-----------------Tasks-----------------------
void vTaskLED1 (void *pvParameters)
	{
	for (;;)
		{
		/*GPIOB->BSRR = GPIO_BSRR_BR5;
		vTaskDelay (250/portTICK_RATE_MS);
		GPIOB->BSRR = GPIO_BSRR_BS5;
		vTaskDelay (250/portTICK_RATE_MS); */
		};
	}

void vTaskADC (void *pvParameters)
	{
	for (;;)
		{		
		xSemaphoreTake (Semaphore_ADC_meaning_end, portMAX_DELAY);
		ADC_result = ADC_result>>3;
		LCD_decode_bin_to_dec_0000 (ADC_result, LCD16x2_buffer + LCD_SECOND_LINE_BUFFER + 12);
		//TIM1->CCR1 = ((ADC_result*3) >> 2) + 915;
		ADC_result = 0;
		ADC1->CR2 |= ADC_CR2_ADON;
		ADC1->CR2 |= ADC_CR2_SWSTART;
		};
	}

void vTaskJoystick (void *pvParameters)
	{
	for (;;)
		{
		Joystick_axes[0] = (Joystick_data[1] << 8) +  Joystick_data[2];
		Joystick_axes[1] = (Joystick_data[3] << 8) +  Joystick_data[4];
		Joystick_axes[2] = (Joystick_data[5] << 8) +  Joystick_data[6];
		Joystick_buttons =  (Joystick_data[8] << 8) +  Joystick_data[9];
		TIM1->CCR4 = ((Joystick_axes[0] >> 6)*3) + 915;
		};
	}

void vTaskStepMotor (void *pvParameters)
	{
	for (;;)
		{
	//	bipolar_half_mode_step_forward (50);
	//	bipolar_all_phases_off();	
	//	vTaskDelay (10/portTICK_RATE_MS);
		};
	}

void vApplicationTickHook (void)	 //every systick function
	{
	if (LCD16x2_buffer_counter == 33)
		{
		LCD16x2_buffer_counter = 0;
		LCD_16x2_set_addr  (0,0);
		}else
			{
			if (LCD16x2_buffer_counter == 16)
				{
				LCD_16x2_set_addr   (1,0) ;
				} else
					{
					LCD_16x2_write (LCD16x2_buffer[LCD16x2_buffer_counter]);
					};
				LCD16x2_buffer_counter++;
			};
	};

//--------------------------------------------------------------
int main (void)
	{
	uint8_t l;
//	uint16_t MPL115A1_Coef_A0,MPL115A1_Coef_B1,MPL115A1_Coef_B2,MPL115A1_Coef_C12 ;
	delay_ms(100);
	init();	
	LCD_16x2_init();
    LCD_16x2_write_string_to_buffer ("====Mahajrod====;----------------");

	//Semaphores
	vSemaphoreCreateBinary (Semaphore_ADC_meaning_end);
	vSemaphoreCreateBinary (Semaphore_SPI2_TXE);
	vSemaphoreCreateBinary (Semaphore_SPI2_RXNE);
	xSemaphoreGive (Semaphore_SPI2_TXE);
	//-----------------interrupt section-----------------
	__enable_irq();
	NVIC_SetPriority 	(ADC1_2_IRQn,15);
	NVIC_SetPriority 	(SPI2_IRQn,15);
	NVIC_SetPriority 	(USART2_IRQn,15);

	NVIC_EnableIRQ 		(ADC1_2_IRQn);
	NVIC_EnableIRQ 		(SPI2_IRQn);
	NVIC_EnableIRQ 		(USART2_IRQn);

	ADC1->CR2 		|= ADC_CR2_SWSTART;


/////////	SD_init();                          //выполнить инициализацию
//	delay_ms (100);

/*	MPL115A1_read_coefficients(MPL115A1_Coef_A0,MPL115A1_Coef_B1,MPL115A1_Coef_B2,MPL115A1_Coef_C12);

	LCD_decode_bin_to_dec_0000 (MPL115A1_Coef_A0, LCD16x2_buffer);
	LCD_decode_bin_to_dec_0000 (MPL115A1_Coef_B1, LCD16x2_buffer+6);
	LCD_decode_bin_to_dec_0000 (MPL115A1_Coef_B2, LCD16x2_buffer + LCD_SECOND_LINE_BUFFER);
	LCD_decode_bin_to_dec_0000 (MPL115A1_Coef_C12, LCD16x2_buffer + LCD_SECOND_LINE_BUFFER+ 6);

*/
	//LCD_decode_bin_to_dec_000 (SDinit, LCD16x2_buffer);

////////	SDread = SD_ReadSector(2, SD_buff);            //копировать сектор №2 в буфер

	//LCD_decode_bin_to_dec_000 (SD_buff[208], LCD16x2_buffer + LCD_SECOND_LINE_BUFFER);
	//LCD_decode_bin_to_dec_000 (SDread, LCD16x2_buffer + 4);
	
//////	SD_buff[69] = 208;
//////	SD_buff[208] = 21;
//////	SD_WriteSector(16, SD_buff);           //записать даные из буфера в сектор №8
	
//////	SD_buff[69] = 0;
//////	SD_buff[208] = 185;
/////	SD_ReadSector (16, SD_buff);

/////	LCD_decode_bin_to_dec_000 (SD_buff[69], LCD16x2_buffer + LCD_SECOND_LINE_BUFFER + 4);
/////	LCD_decode_bin_to_dec_000 (SD_buff[208], LCD16x2_buffer + LCD_SECOND_LINE_BUFFER + 8);

	LCD_NOKIA1616_reset ();
	LCD_NOKIA1616_init ();
	LCD_NOKIA1616_rectangle (1, 160, 1, 130, 0xF50FA4);
	for (l = 3; l < 7; l++)
		{
		LCD_NOKIA1616_print_icon8x8 (l ,2 + (l-3)*10, 7, 0x34F6AB, 0xdbdbdb);
		}
	LCD_NOKIA1616_SetFont(0);
	LCD_NOKIA1616_SET_FONT_COLOR(0x161620);
	LCD_NOKIA1616_SET_FONT_BKGND_COLOR(0x27E717);
//	LCD_NOKIA1616_DrawChar(70, 60, 0x5b);
//	LCD_NOKIA1616_DrawChar(70, 70, 0x5c);
	LCD_NOKIA1616_DrawChar(70, 80, 0x5d);
 //  	LCD_NOKIA1616_DrawChar(70, 90, 0x5e);
//	LCD_NOKIA1616_DrawChar(70, 100, 0x5f);
//	LCD_NOKIA1616_DrawChar(70, 110, 0x60);
//	LCD_NOKIA1616_DrawChar(70, 120, (uint8_t)"'");
	LCD_NOKIA1616_DrawString(79,10,"[Махайрод]");
	//--------------------RTOS section-------------------

	//Tasks
	xTaskCreate ( vTaskLED1, (signed char *) "LED1", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskADC, (signed char *) "ADC", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskJoystick, (signed char *) "Joystick", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskStepMotor, (signed char *) "SPI", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	//Start sheduler
	vTaskStartScheduler();
	//----------------------------------------------------
	while (1)
		{
		};
	}
//---------------Interrupt handlers----------------
void ADC1_2_IRQHandler (void)
	{
	if ((ADC1->SR & ADC_SR_EOC) == ADC_SR_EOC )
		{
		ADC_result += ADC1->DR;
		ADC_counter++;
		if (ADC_counter == 8)
			{
			static portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
			ADC_counter = 0;
			xSemaphoreGiveFromISR (Semaphore_ADC_meaning_end, &xHigherPriorityTaskWoken);
			ADC1->CR2 &= ~ADC_CR2_ADON; //ADC off
			portYIELD();
			}
		ADC1->CR2 		|= ADC_CR2_SWSTART;
		}
	}

/*void SPI2_IRQHandler (void)
	{
	static portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
	if (SPI2->SR & SPI_SR_TXE)
		{
		xSemaphoreGiveFromISR (Semaphore_SPI2_TXE, &xHigherPriorityTaskWoken);
		}
	if (SPI2->SR & SPI_SR_RXNE)
		{
		(void) SPI2->DR	;
		xSemaphoreGiveFromISR (Semaphore_SPI2_RXNE, &xHigherPriorityTaskWoken);
		}
	}			   */
	
void USART2_IRQHandler (void)
	{ 
	 if (USART2->SR & USART_SR_RXNE)
	 	{
		if (Joystick_flag < 10) 
			{
			Joystick_data[Joystick_flag] = 	USART2->DR;
			LCD16x2_buffer[Joystick_flag] = Joystick_data[Joystick_flag];
			Joystick_flag++;
			}
		if (USART2->DR == 65) 
			{
			LCD16x2_buffer[0] = 65;
			Joystick_flag = 1;			 
			}
		}
	}	   
