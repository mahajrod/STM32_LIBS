#include 	"ULN2003.h"

void 	all_phases_off (void)
	{
	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_OFF;
	};

#ifdef	 NORMAL_MODE
void 	normal_mode_step_forward (uint32_t delay_time_ms)
	{
	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);
	};

void 	normal_mode_step_reverse (uint32_t delay_time_ms)
	{
	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);
	};
#endif

#ifdef 	HALF_STEP_MODE
void 	half_mode_step_forward (uint32_t delay_time_ms)
	{
	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_ON;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);
	};

void 	half_mode_step_reverse (uint32_t delay_time_ms)
	{
	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_ON;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_OFF;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_ON;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_OFF;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_ON;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_OFF;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);

	PHASE1_ON;
	PHASE2_ON;
	PHASE3_OFF;
	PHASE4_OFF;
	delay_ms (delay_time_ms);
	};
#endif
