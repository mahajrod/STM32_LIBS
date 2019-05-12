/*
 *	File:	mcu_rcc.h
 *	Date:	07.01.2011
 */

#ifndef MCU_RCC_H_
#define MCU_RCC_H_

typedef struct
{
	volatile uint32_t clock_control_register;
	volatile uint32_t clock_configuration_register;
	volatile uint32_t clock_interrupt_register;
	volatile uint32_t APB2_peripheral_reset_register;
	volatile uint32_t APB1_peripheral_reset_register;
	volatile uint32_t AHB_peripheral_clock_enable_register;
	volatile uint32_t APB2_peripheral_clock_enable_register;
	volatile uint32_t APB1_peripheral_clock_enable_register;
	volatile uint32_t backup_domain_control_register;
	volatile uint32_t control_status_register;
	volatile uint32_t RESERVED;
	volatile uint32_t clock_configuration_register2;
} mcu_rcc_type;

#define MCU_RCC                 ((mcu_rcc_type *) 0x40021000)

#define MCU_RCC_AFIO		(1UL << 0)
#define MCU_RCC_GPIOA		(1UL << 2)
#define MCU_RCC_GPIOB		(1UL << 3)
#define MCU_RCC_GPIOC		(1UL << 4)
#define MCU_RCC_GPIOD		(1UL << 5)
#define MCU_RCC_GPIOE		(1UL << 6)

#endif /* MCU_RCC_H_ */
