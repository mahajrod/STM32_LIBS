#include    "main.h"
//----------Ext. per. includes------------
#include 		"SDcard.h"
#include 		"Nokia1616.h"
#include		"Nokia1616_GUI.h"
//-----------FreeRTOS includes------------
#include		"FreeRTOSConfig.h"
#include 		"FreeRTOS.h"
#include 		"task.h"
#include 		"semphr.h"
//-------------FatFS includes-------------
#include		"integer.h"
#include 		"ff.h"
#include 		"ffconf.h"
#include 		"diskio.h"
//----------File_types includes-----------
#include 		"image_files.h"
//--------Project files includes----------
#include		"internal_per.c"
//----------Global variables--------------
const uint8_t  	LCD_decode [] = 
	{'0', '1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
char				dec_number[5];
uint8_t			reg_value;				   
uint16_t		ADC_result = 0;
uint16_t		ADC_data = 0;
char				ADC_result_decoded[5] =
	{'0','0','0','0',0x00};
uint8_t			ADC_counter = 0;
uint8_t 		SPI_data = 0;
struct TIME_INFO current_time =
	{0,	0,	0,	0,	0,	0 };
//uint8_t seconds;
char time_decoded[] =
	{'0','0',':','0','0',':','0','0',0x00};
uint8_t 		Joystick_data[10];/* = 
	{
	0x00,
	0x7F, 0xFF,
	0x7F, 0xFF,
	0x7F, 0xFF,
	0x00, 0x00, 0x00 
	};					   */

uint16_t		Joystick_axes[3];
uint16_t		Joystick_buttons;
uint8_t 		Joystick_flag = 0xFF;
uint16_t			Ultrasonic_time = 0xFFFF;
//-------------EXTI varibles--------------
uint16_t 		EXTI_line_flag;
//--------------FAT variables-------------
FATFS			FAT_filesystem;
FIL				fsrs,fdst;
BYTE			FAT_buffer[4096];
FRESULT		res;
UINT			br,bw;
//---------BMP_file variables-------------
uint8_t 	BMP_buffer[54];
UINT 			BMP_bytes_read;
BITMAPFILEHEADER 		BMP_file_header;
BITMAPINFOHEADER 		BMP_info_header;
uint8_t 		LCD_buffer[128*3*8];
uint8_t * 	LCD_buffer_pointer = LCD_buffer;
char file_name[] = "0:128x160/img0001.bmp";
uint16_t 		image_counter = 0x0000;
uint8_t 		image_flag = 0;
//----------------------------------------
//------------RTOS variables--------------
xSemaphoreHandle 	Semaphore_ADC_meaning_end;
xSemaphoreHandle 	Semaphore_seconds_incremented; 
xSemaphoreHandle	Mutex_LCD_accesss;
xSemaphoreHandle	Semaphore_keyboard;
xSemaphoreHandle	Semaphore_ultrasonic;
static portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
//----------General functions---------------

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
 void LCD_decode_bin_to_dec_00 (uint8_t number, char dec_number[2])
	{
	dec_number[0] =	LCD_decode[(number/10) & 0x0F];
	dec_number[1] =	LCD_decode[(number  % 10) & 0x0F];
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
	RCC->CFGR			&= ~RCC_CFGR_SW;
	RCC->CFGR 		|= RCC_CFGR_SW_HSI;
	RCC->CR				|= RCC_CR_HSEON;
	RCC->CR				&= ~RCC_CR_PLLON;
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
	RCC->CFGR			|= RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLMULL6; // PLL source HSE, PLL MULL (12MHz * 6 = 72 MHz)
	RCC->CR				|= RCC_CR_PLLON; 			//PLL on
	
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
	PIN_CONFIGURATION(PORTB_PIN_1);
	PIN_CONFIGURATION(PORTB_PIN_0);
	//-------------SPI2------------------
 	PIN_CONFIGURATION(SPI2_MOSI);
	PIN_CONFIGURATION(SPI2_MISO);
	PIN_CONFIGURATION(SPI2_SCK);
	PIN_CONFIGURATION(SPI2_NSS);
 
	RCC->APB1ENR 	|= RCC_APB1ENR_SPI2EN;		//clock on SPI2
	SPI2->CR1			&= ~SPI_CR1_BR;				//reset SPI1 prescaleer
	SPI2->CR1 		|= SPI_CR1_BR_1 | SPI_CR1_BR_0; 	//SPI2 prescaller = 16
	SPI2->CR1 		|= SPI_CR1_MSTR;			//  master mode on
	SPI2->CR2 		|= SPI_CR2_SSOE;// | SPI_CR2_TXEIE | SPI_CR2_RXNEIE;	//NSS hardware mode output,	TXE & RXNE IE enable			
	SPI2->CR1			|= SPI_CR1_SPE;				//SPI2 on 	
	//-------------SPI1------------------
 	PIN_CONFIGURATION(SPI1_MOSI);
	PIN_CONFIGURATION(SPI1_MISO);
	PIN_CONFIGURATION(SPI1_SCK);
	PIN_CONFIGURATION(SPI1_NSS);
 
	RCC->APB2ENR 	|= RCC_APB2ENR_SPI1EN;		//clock on SPI1
	SPI1->CR1		&= ~SPI_CR1_BR;				//reset SPI1 prescaleer
	SPI1->CR1 		|= SPI_CR1_BR_2 | SPI_CR1_BR_1; 	//SPI1 prescaller = 128
	SPI1->CR1 		|= SPI_CR1_MSTR;			//  master mode on
	SPI1->CR2 		|= SPI_CR2_SSOE;// | SPI_CR2_TXEIE | SPI_CR2_RXNEIE;	//NSS hardware mode output,	TXE & RXNE IE enable			
	SPI1->CR1		|= SPI_CR1_SPE;				//SPI1 on 
	//-----------I2C1--------------
/*	PIN_CONFIGURATION(I2C1_SDA);
	PIN_CONFIGURATION(I2C1_SCL);

	RCC->APB1ENR 	|= RCC_APB1ENR_I2C1EN;		// enable clock on I2C1	
	I2C1->CR2 		&= ~I2C_CR2_FREQ;	 		//set current PCLK1 freq
	I2C1->CR2		|= 36;
	I2C1->CCR		&= ~I2C_CCR_CCR;			//set prescaler  for 100kHz operation
  I2C1->CCR		|=  360;
	I2C1->TRISE		=	37;					   	//set max rising time	
	I2C1->CR1 		|= I2C_CR1_PE; 		 	//enable I2C1
	//--------------UART2----------------
	PIN_CONFIGURATION(UART2_RX);
	PIN_CONFIGURATION(UART2_TX);
	
	RCC->APB1ENR 	|= RCC_APB1ENR_USART2EN;  //clock on USART
	USART2->CR1 	|= USART_CR1_UE;		//USART enable
	USART2->BRR		= 9 + (19<<4);		//USART divider for	  115200  (36MHZ APB1)
	USART2->CR1 	|= USART_CR1_RXNEIE | USART_CR1_RE;// | USART_CR1_TE | USART_CR1_TXEIE; //USART receiver, transmiter and RXNE and TXE int enabled
 	*/
	//--------------UART1----------------
	PIN_CONFIGURATION(UART1_RX);
	PIN_CONFIGURATION(UART1_TX);
	PIN_CONFIGURATION(UART1_CK);
	PIN_CONFIGURATION(PORTB_PIN_5);
	PIN_CONFIGURATION(RESET_PIN);
	RCC->APB2ENR 	|= RCC_APB2ENR_USART1EN;  //clock on USART
	USART1->CR1 	|= USART_CR1_UE | USART_CR1_M | USART_CR1_OVER8;		//USART enable, 9 bit word length
	USART1->CR2		|= USART_CR2_CLKEN | USART_CR2_STOP_0 | USART_CR2_CPOL | USART_CR2_CPHA | USART_CR2_LBCL; //ck line enabled
	USART1->BRR		= 1<<4;		//USART divider    (72MHZ APB2)
	USART1->CR1 	|= USART_CR1_TE;// | USART_CR1_TXEIE; //USART receiver, transmiter and RXNE and TXE int enabled
	
	//--------------TIM1-----------------
	RCC->APB2ENR	|= RCC_APB2ENR_TIM1EN;		//clock on TIM1
	PIN_CONFIGURATION(TIM1_CH4);
	//GPIOA->CRH		&= ~GPIO_CRH_CNF11;
//	GPIOA->CRH		|= GPIO_CRH_CNF11_1;		//alternativw function push-pull
	//GPIOA->CRH		|= GPIO_CRH_MODE11_1;	//max 2MHz
	PIN_CONFIGURATION(TIM1_CH3);
	//GPIOA->CRH		&= ~GPIO_CRH_CNF10;
	//GPIOA->CRH		|= GPIO_CRH_CNF10_1;		//alternativw function push-pull
	//GPIOA->CRH		|= GPIO_CRH_MODE10_1;	//max 2MHz

	TIM1->PSC		=	39;						//TIM1 prescaler 39+1=40
	TIM1->ARR		=	36000;					//count till 36000
	//CH4 PWM 50 Hz
	TIM1->CCR4		=	915;					
	TIM1->CCMR2		|=	TIM_CCMR2_OC4M_2 | TIM_CCMR2_OC4M_1; //PWM mode 1
	TIM1->CCMR2		|=  TIM_CCMR2_OC4PE;		//preload enable
	TIM1->CCER		|=	TIM_CCER_CC4E;			//output enable
	//CH3 PWM 50 Hz
	TIM1->CCR3		=	915;					
	TIM1->CCMR2		|=	TIM_CCMR2_OC3M_2 | TIM_CCMR2_OC3M_1; //PWM mode 1
	TIM1->CCMR2		|=  TIM_CCMR2_OC3PE;		//preload enable
	TIM1->CCER		|=	TIM_CCER_CC3E;			//output enable
	TIM1->BDTR		|=	TIM_BDTR_MOE;			//main output enable
	TIM1->CR1			|=  TIM_CR1_CEN | TIM_CR1_ARPE; 	//counter with autoreload enable
	//--------------TIM2-----------------
	RCC->APB1ENR	|= RCC_APB1ENR_TIM2EN;		//clock on TIM2

	TIM2->PSC		=	71;						//TIM2 prescaler 71+1=72, 1MHz if 36MHz on APB1, but as APB1 prescaler is /2 timer clock is doubled
	TIM2->ARR		=	10000;					//count till 10000
	TIM2->DIER	|= TIM_DIER_UIE;  //update int enabled
//	TIM2->CR1		|= TIM_CR1_OPM;		//one pulse mode
//	TIM1->BDTR		|=	TIM_BDTR_MOE;			//main output enable
//	TIM2->CR1		|=  TIM_CR1_CEN | TIM_CR1_ARPE; 	//counter with autoreload enable

	//--------------ADC------------------
	RCC->CFGR 		&= ~RCC_CFGR_ADCPRE;		//reset ADC pre prescaler
	RCC->CFGR 		|= RCC_CFGR_ADCPRE_DIV8;	//ADC pre prescaler = 8, freq= 72MHz/8 = 9MHz
	RCC->APB2ENR	|= RCC_APB2ENR_ADC1EN;		//ADC1 clock on

	PIN_CONFIGURATION (ADC_IN0);
//	GPIOA->CRL 		&= ~GPIO_CRL_CNF1;			//configure PortA pin0 to analog
//	GPIOA->CRL		&= ~GPIO_CRL_MODE1; 

	//ADC1->SQR1		&= ~ADC_SQR1_L;  //reset length of conversion
	ADC1->SQR3		 = 0x00;			//select ADC channel 0 for six first conversions 
	ADC1->SQR2		 = 0x00; //select ADC channel 0 for 7th and 8th channels
	ADC1->SQR1 		|= ADC_SQR1_L_0 | ADC_SQR1_L_1 | ADC_SQR1_L_2; //length of chain = 8

	ADC1->CR1 		|= ADC_CR1_DISCNUM | ADC_CR1_DISCEN;

	ADC1->CR2			|= ADC_CR2_EXTSEL | ADC_CR2_EXTTRIG; //software start? external trigger enable
	ADC1->CR2			|= ADC_CR2_RSTCAL;// | ADC_CR2_CONT;			//calibrate ADC
	ADC1->CR2			|= ADC_CR2_ADON;
	while ((ADC1->CR2 & ADC_CR2_RSTCAL) == ADC_CR2_RSTCAL)
		{};
	ADC1->CR2 		|= ADC_CR2_CAL;
	while ((ADC1->CR2 & ADC_CR2_RSTCAL) == ADC_CR2_CAL)
		{};
	ADC1->CR1 		|= ADC_CR1_EOCIE;			//End of conversion interrupt enable
	//---------External interrupts-------------
	PIN_CONFIGURATION(BUTTON1);
	PIN_CONFIGURATION(BUTTON2);
	PIN_CONFIGURATION(BUTTON3);
	PIN_CONFIGURATION(ULTRASONIC_IN);		
	PIN_CONFIGURATION(ULTRASONIC_TRIG);
	RCC->APB2ENR 		|= RCC_APB2ENR_AFIOEN;		//alternative functions enable
	AFIO->EXTICR[0]	|= AFIO_EXTICR1_EXTI1_PA | AFIO_EXTICR1_EXTI2_PA | AFIO_EXTICR1_EXTI3_PA;	//select PA port for EXTI lines 1,2,3
	AFIO->EXTICR[1] |= AFIO_EXTICR2_EXTI4_PA;
	EXTI->FTSR			|= EXTI_FTSR_TR1 | EXTI_FTSR_TR2 | EXTI_FTSR_TR3 ;			//trigger on falling on EXTI 1,2,3 lines
	EXTI->RTSR			|= EXTI_RTSR_TR4 ;					//trigger on rising PA4
			//EXTI->RTSR			|= EXTI_RTSR_TR1;			//trigger on rising PA1
	EXTI->IMR				|= EXTI_IMR_MR1 | EXTI_IMR_MR2 | EXTI_IMR_MR3 | EXTI_IMR_MR4;			//interrupt on
	//------------------RTC--------------------
	RCC->APB1ENR	|= RCC_APB1ENR_PWREN | RCC_APB1ENR_BKPEN;//enable power and backup interface clocks
	PWR->CR				|= PWR_CR_DBP;
	RCC->BDCR			|= RCC_BDCR_LSEON; //LSE on	
	while (!(RCC->BDCR & RCC_BDCR_LSERDY))
		{};
	RCC->BDCR		|= RCC_BDCR_RTCSEL_0;	//select LSE as RTC clock source
	RCC->BDCR		|= RCC_BDCR_RTCEN;		//enable RTC clock
	while (!(RTC->CRL & RTC_CRL_RSF))		//wait till synchronisation is complete
		{};
	while (!(RTC->CRL & RTC_CRL_RTOFF))
		{}; 
	RTC->CRH		|= RTC_CRH_SECIE;		//second interrupt on
	while (!(RTC->CRL & RTC_CRL_RTOFF))
		{};
	RTC->CRL		|= RTC_CRL_CNF;			//enter configuration mode
	RTC->PRLH		=	0x00;				//set prescaler to 32767
	RTC->PRLL		= 	0x7FFF;	
	RTC->CRL		&= ~RTC_CRL_CNF;		//reset CNF flag
	while (!(RTC->CRL & RTC_CRL_RTOFF))
		{};			

	RCC->BDCR		&= ~RCC_BDCR_RTCEN;		//disable RTC clock
	}
///--------------SPI functions-----------------
uint8_t SD_SPI_Write_read 	(uint8_t data)
	{
	while (!(SPI2->SR & SPI_SR_TXE))
		{};
	SPI2->DR 	= 	data;
	while (!(SPI2->SR & SPI_SR_RXNE))
		{};
	return (SPI2->DR);	
	}

uint8_t SPI1_Write_read 	(uint8_t data)
	{
	while (!(SPI1->SR & SPI_SR_TXE))
		{};
	SPI1->DR 	= 	data;
	while (!(SPI1->SR & SPI_SR_RXNE))
		{};
	return (SPI1->DR);	
	}
//-----------------Tasks-----------------------
void vTaskTime (void *pvParameters)
	{
	for (;;)
		{
		xSemaphoreTake (Semaphore_seconds_incremented, portMAX_DELAY);
		current_time.hours 	 = current_time.counter / 3600;
		current_time.minutes 	 = (current_time.counter % 3600) /60;
		current_time.seconds = current_time.counter %60;
		LCD_decode_bin_to_dec_00 (current_time.hours, time_decoded);
		LCD_decode_bin_to_dec_00 (current_time.minutes, time_decoded+3);
		LCD_decode_bin_to_dec_00 (current_time.seconds, time_decoded+6);
		
		xSemaphoreTake (Mutex_LCD_accesss, portMAX_DELAY);
		LCD_NOKIA1616_DrawString(1, 82, time_decoded,LCD_NOKIA1616_OUTPUT_MODE);
		xSemaphoreGive (Mutex_LCD_accesss);
		};
	}

void vTaskADC (void *pvParameters)
	{
	for (;;)
		{		
		xSemaphoreTake (Semaphore_ADC_meaning_end, portMAX_DELAY);
		ADC_data = ADC_data>>3;
		LCD_decode_bin_to_dec_0000 (ADC_data,ADC_result_decoded);

		xSemaphoreTake (Mutex_LCD_accesss, portMAX_DELAY);
		LCD_NOKIA1616_DrawString(153, 106, ADC_result_decoded,LCD_NOKIA1616_OUTPUT_MODE);
		xSemaphoreGive (Mutex_LCD_accesss);

		//ADC_result = 0;
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
		TIM1->CCR3 = ((Joystick_axes[1] >> 6)*3) + 915;
		};
	}

void vTaskStepMotor (void *pvParameters)
	{
	for (;;)
		{	
		if (image_flag ==1)
			{
			LCD_decode_bin_to_dec_0000 (image_counter, dec_number);
			dec_number[4] = 0x00;	
			xSemaphoreTake (Mutex_LCD_accesss, portMAX_DELAY);
			LCD_NOKIA1616_DrawString(153,1,dec_number,LCD_NOKIA1616_OUTPUT_MODE);
			xSemaphoreGive (Mutex_LCD_accesss);
			image_flag = 0;
			};
		}
	}
void vTaskKeyboard (void *pvParameters)
	{
	for (;;)
		{
		xSemaphoreTake (Semaphore_keyboard, portMAX_DELAY);
		vTaskDelay (70/portTICK_RATE_MS);	// delay for 70ms			
		EXTI->RTSR			|= EXTI_RTSR_TR1 | EXTI_RTSR_TR2 |EXTI_RTSR_TR3;			//trigger on rising PA1
		EXTI->IMR				|= EXTI_IMR_MR1 | EXTI_IMR_MR2 | EXTI_IMR_MR3;			//interrupt on	
		xSemaphoreTake (Semaphore_keyboard, portMAX_DELAY);	
		//------------------Pressed buttons handler--------------------------	
		image_counter++;
		image_flag	=	1;
		//-------------------------------------------------------------------
		vTaskDelay (100/portTICK_RATE_MS);	// delay for 100ms
		EXTI->FTSR			|= EXTI_RTSR_TR1 | EXTI_RTSR_TR2 |EXTI_RTSR_TR3;			//trigger on falling PA1
		EXTI->IMR				|= EXTI_IMR_MR1 | EXTI_IMR_MR2 | EXTI_IMR_MR3;			//interrupt on	
		}
	}
void vTaskUltrasonic (void *pvParameters)
	{
	for (;;)
		{
		PIN_ON(ULTRASONIC_TRIG);
		EXTI->FTSR &= ~EXTI_FTSR_TR4;			//switch int from  falling to rising edge
		EXTI->RTSR |= EXTI_RTSR_TR4;
		TIM2->ARR		=	10000;
		TIM2->CR1		|=	TIM_CR1_CEN;
		xSemaphoreTake (Semaphore_ultrasonic, portMAX_DELAY);
		Ultrasonic_time = Ultrasonic_time/58;
		LCD_decode_bin_to_dec_0000 (Ultrasonic_time, dec_number);
		dec_number[4] = 0x00;	
		xSemaphoreTake (Mutex_LCD_accesss, portMAX_DELAY);
		LCD_NOKIA1616_DrawString(2,1,dec_number,LCD_NOKIA1616_OUTPUT_MODE);
		xSemaphoreGive (Mutex_LCD_accesss);	
		vTaskDelay(100/portTICK_RATE_MS);
		}
	}

//--------------------------------------------------------------
int main (void)
	{
	uint8_t i,j,k;
	uint16_t l;


	delay_ms(10);
	init();	
	//Semaphores							   
	vSemaphoreCreateBinary (Semaphore_ADC_meaning_end);
	vSemaphoreCreateBinary (Semaphore_seconds_incremented);
	vSemaphoreCreateBinary  (Semaphore_keyboard);
	vSemaphoreCreateBinary  (Semaphore_ultrasonic);
	//Mutex
	Mutex_LCD_accesss = xSemaphoreCreateMutex();
	//-----------------interrupt section-----------------
	__enable_irq();
	NVIC_SetPriority 	(ADC1_2_IRQn,15);
	NVIC_SetPriority 	(SPI2_IRQn,15);
	NVIC_SetPriority 	(USART2_IRQn,15);
	NVIC_SetPriority 	(EXTI1_IRQn,15);
	NVIC_SetPriority 	(EXTI2_IRQn,15);
	NVIC_SetPriority 	(EXTI3_IRQn,15);
	NVIC_SetPriority 	(EXTI4_IRQn,15);
	NVIC_SetPriority 	(RTC_IRQn,48);
	NVIC_SetPriority 	(TIM2_IRQn,15);
		
	NVIC_EnableIRQ 		(ADC1_2_IRQn);
	NVIC_EnableIRQ 		(SPI2_IRQn);
	NVIC_EnableIRQ 		(USART2_IRQn);
	NVIC_EnableIRQ 		(EXTI1_IRQn);
	NVIC_EnableIRQ 		(EXTI2_IRQn);
	NVIC_EnableIRQ 		(EXTI3_IRQn);
	NVIC_EnableIRQ 		(EXTI4_IRQn);
	NVIC_EnableIRQ 		(RTC_IRQn);
	NVIC_EnableIRQ 		(TIM2_IRQn);
	
	ADC1->CR2 		|= ADC_CR2_SWSTART;
	//delay_ms (5000);

	LCD_NOKIA1616_reset ();
	LCD_NOKIA1616_init ();
//	LCD_NOKIA1616_rectangle (1, 160, 2, 129, 0xF50FA4);

	LCD_NOKIA1616_SetFont(LCD_NOKIA1616_FONT5x8);
	LCD_NOKIA1616_SET_FONT_COLOR(LCD_NOKIA1616_transform_color(0x161620));
	LCD_NOKIA1616_SET_FONT_BKGND_COLOR(LCD_NOKIA1616_transform_color(0xC1AEFB));

	//LCD_NOKIA1616_DrawString(79,10,"[Махйрод]");
	
//-----------------FAT---------------------------------	
	f_mount (0, &FAT_filesystem);

	LCD_decode_bin_to_dec_0000 (261, dec_number);
	file_name[13] = dec_number[0];
	file_name[14] = dec_number[1];
	file_name[15] = dec_number[2];
	file_name[16] = dec_number[3];
	res = f_open (&fdst, file_name, FA_READ);
	res = f_read (&fdst, BMP_buffer, 54, &BMP_bytes_read);
	BMP_file_header = BMP_get_file_header(BMP_buffer);
	BMP_info_header = BMP_get_info_header(BMP_buffer);
	//MIRROR_Y off for BMP output
	LCD_NOKIA1616_ram_data_access (LCD_NOKIA1616_OUTPUT_MODE & (~MIRROR_Y));
	for (i = 0; i < 20; i++)
		{
		for (k = 0; k < 8; k++)
			{
			f_read (&fdst, LCD_buffer+128*3*k, 128*3, &BMP_bytes_read);
			}
		LCD_NOKIA1616_rectangle_from_buffer ( 8*i+1, 8*(i+1),2, 129, LCD_buffer,LCD_NOKIA1616_OUTPUT_MODE);	
		}
	LCD_NOKIA1616_ram_data_access (LCD_NOKIA1616_OUTPUT_MODE);
	f_close (&fdst);		
	LCD_N1616_GUI_Draw_top_bar();
	LCD_N1616_GUI_Draw_bottom_bar();
/*
	for (l = 3; l < 12; l++)
		{
		LCD_NOKIA1616_print_icon8x8 (l ,2 + (l-3)*10, 7, 0x34F6AB, 0xdbdbdb,LCD_NOKIA1616_OUTPUT_MODE);
		} 
	LCD_NOKIA1616_DrawString(120,50,"[Mahajrod]",LCD_NOKIA1616_OUTPUT_MODE);*/
	f_mount (0,NULL);
	//--------------------RTOS section-------------------
	//Tasks
	xTaskCreate ( vTaskTime, (signed char *) "Time", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskADC, (signed char *) "ADC", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskJoystick, (signed char *) "Joystick", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskStepMotor, (signed char *) "SPI", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskKeyboard, (signed char *) "Keyboard", configMINIMAL_STACK_SIZE, NULL,2,
				(xTaskHandle *) NULL);
	xTaskCreate ( vTaskUltrasonic, (signed char *) "Ultrasonic", configMINIMAL_STACK_SIZE, NULL,2,
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
			ADC_counter = 0;
			xSemaphoreGiveFromISR (Semaphore_ADC_meaning_end, &xHigherPriorityTaskWoken);
			ADC_data = ADC_result;
			ADC_result = 0;
			ADC1->CR2 |= ADC_CR2_SWSTART;
			portYIELD();
			}
		}
	}	
void USART2_IRQHandler (void)
	{ 
	 if (USART2->SR & USART_SR_RXNE)
	 	{
		if (Joystick_flag < 10) 
			{
			Joystick_data[Joystick_flag] = 	USART2->DR;
			Joystick_flag++;
			}
		if (USART2->DR == 65) 
			{
			Joystick_flag = 1;			 
			}
		}
	}
	
void	EXTI1_IRQHandler (void)
	{
	EXTI->PR 				|= EXTI_PR_PR1; 		//cleaning int flag by writing in it
	EXTI->IMR				&= ~EXTI_IMR_MR1;		//interrupt off
	EXTI->EMR 			&= ~EXTI_EMR_MR1;		//cleaning interrupt flag for sure
	xSemaphoreGiveFromISR (Semaphore_keyboard, &xHigherPriorityTaskWoken);	
	EXTI_line_flag 	|=	EXTI_PR_PR1; 		//sets 1st bit (bits starts from zero)
	}
void	EXTI2_IRQHandler (void)
	{
	EXTI->PR 				|= EXTI_PR_PR2; 		// cleaning int flag by writing in it
	EXTI->IMR				&= ~EXTI_IMR_MR2;		//interrupt off
	EXTI->EMR 			&= ~EXTI_EMR_MR2;		//cleaning interrupt flag for sure
	xSemaphoreGiveFromISR (Semaphore_keyboard, &xHigherPriorityTaskWoken);	
	EXTI_line_flag 	|=	EXTI_PR_PR2;		//sets 2st bit (bits starts from zero)
	}	   
void	EXTI3_IRQHandler (void)
	{
	EXTI->PR 				|= EXTI_PR_PR3; 		//cleaning int flag by writing in it
	EXTI->IMR				&= ~EXTI_IMR_MR3;		//interrupt off
	EXTI->EMR 			&= ~EXTI_EMR_MR3;		//cleaning interrupt flag for sure
	xSemaphoreGiveFromISR (Semaphore_keyboard, &xHigherPriorityTaskWoken);	
	EXTI_line_flag 	|=	EXTI_PR_PR3;		//sets 3st bit (bits starts from zero)
	}	   	
void	EXTI4_IRQHandler (void)
	{
	EXTI->PR 				|= EXTI_PR_PR4; 		//cleaning int flag by writing in it
	if (EXTI->RTSR & EXTI_RTSR_TR4)
		{
		TIM2->ARR = 65535;
		TIM2->CR1 |=	TIM_CR1_CEN;
		EXTI->RTSR &= ~EXTI_RTSR_TR4;			//switch int from rising to falling edge
		EXTI->FTSR |= EXTI_FTSR_TR4;	
		} else
			{
			Ultrasonic_time = TIM2->CNT;	
			TIM2->CR1 &=	~TIM_CR1_CEN;    //timer off
			xSemaphoreGiveFromISR (Semaphore_ultrasonic, &xHigherPriorityTaskWoken);	
			}
	}	  
 void	RTC_IRQHandler  (void)
 	{
	RTC->CRL	&= ~RTC_CRL_SECF;	
	current_time.counter = RTC->CNTL;
	current_time.counter = current_time.counter + (RTC->CNTH << 16);
	xSemaphoreGiveFromISR (Semaphore_seconds_incremented, &xHigherPriorityTaskWoken);	
	}
	
void	TIM2_IRQHandler (void)
	{
	if (TIM2->SR & TIM_SR_UIF)
		{
		PIN_OFF(ULTRASONIC_TRIG);
		TIM2->SR &= ~TIM_SR_UIF;
		TIM2->CR1 &=	~TIM_CR1_CEN;
		}
	}
