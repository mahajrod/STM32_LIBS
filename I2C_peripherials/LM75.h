#ifndef		LM75_H_

#define		LM75_H_

#include	"main.h"

#define		I2C_READ		  			0x01
#define		I2C_WRITE					0x00

#define 	LM75_DEFAULT_ADDRESS		0x90
#define		LM75_SETABLE_ADDRESS		0x06	//sets by hardware
#define		LM75_ADDRESS				(LM75_DEFAULT_ADDRESS  + LM75_SETABLE_ADDRESS)

#define		LM75_READ				   	LM75_ADDRESS
#define		LM75_WRITE					(LM75_ADDRESS | I2C_READ)

#define		LM75_TEMPERATURE_REG		0x00	
#define		LM75_CONF_REG				0x01
#define 	LM75_T_HYST_REG				0x02
#define 	LM75_T_OS_REG				0x03

#define		CONF_REG_WAKEUP				0x00
#define 	CONF_REG_SHUTDOWN			0x01
#define		CONF_REG_INT_MODE			0x02
#define 	CONF_REG_OS_POL				0x04
#define		CONF_REG_NFAULT_1			0x00
#define		CONF_REG_NFAULT_2			0x08
#define		CONF_REG_NFAULT_3			0x10
#define		CONF_REG_NFAULT_4			0x18

extern void 		LM75_write_1byte (uint8_t LM75_REG,uint8_t LM75_REG_VALUE);
extern uint16_t 	LM75_read_2byte (uint8_t LM75_REG_ADDRESS);

#endif		//LM75_H_
