#ifndef 	ULN2003_H_
#define 	ULN2003_H_
// Unipolar stepping motor control 
#include 	"main.h"
		
#define 		PHASE1_ON		GPIOB->BSRR = GPIO_BSRR_BS0;		
#define 		PHASE2_ON		GPIOB->BSRR = GPIO_BSRR_BS1;		
#define 		PHASE3_ON		GPIOB->BSRR = GPIO_BSRR_BS10;
#define 		PHASE4_ON		GPIOB->BSRR = GPIO_BSRR_BS11;

#define 		PHASE1_OFF		GPIOB->BSRR = GPIO_BSRR_BR0;		
#define 		PHASE2_OFF		GPIOB->BSRR = GPIO_BSRR_BR1;		
#define 		PHASE3_OFF 		GPIOB->BSRR = GPIO_BSRR_BR10;
#define 		PHASE4_OFF		GPIOB->BSRR = GPIO_BSRR_BR11;

//----------------Choose_step_mode---------------
#define			NORMAL_MODE
#define	  		HALF_STEP_MODE
//-------------------Functions-------------------

extern void 	normal_mode_step_forward (uint32_t delay_time_ms);
extern void 	normal_mode_step_reverse (uint32_t delay_time_ms);
extern void 	half_mode_step_forward (uint32_t delay_time_ms);
extern void 	half_mode_step_reverse (uint32_t delay_time_ms);
extern void 	wave_mode_step_forward (uint32_t delay_time_ms);
extern void 	wave_mode_step_reverse (uint32_t delay_time_ms);
extern void 	all_phases_off (void);

#endif
