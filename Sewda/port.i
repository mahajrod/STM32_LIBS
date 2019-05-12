#line 1 "..\\FreeRTOS\\port.c"



















































 



 

 
#line 1 "..\\FreeRTOS\\include\\FreeRTOS.h"



















































 







 
#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stddef.h"
 






 

 
 
 





 




#line 33 "C:\\Keil\\ARM\\RV31\\Inc\\stddef.h"

typedef signed int ptrdiff_t;


  
  typedef unsigned int size_t;








   



      typedef unsigned short wchar_t;  
#line 69 "C:\\Keil\\ARM\\RV31\\Inc\\stddef.h"



    

   









#line 90 "C:\\Keil\\ARM\\RV31\\Inc\\stddef.h"



 
#line 62 "..\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 "..\\FreeRTOS\\include\\projdefs.h"



















































 




 
typedef void (*pdTASK_CODE)( void * );









 









#line 65 "..\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 "..\\FreeRTOS\\FreeRTOSConfig.h"



#line 16 "..\\FreeRTOS\\FreeRTOSConfig.h"

 



#line 28 "..\\FreeRTOS\\FreeRTOSConfig.h"


 

#line 40 "..\\FreeRTOS\\FreeRTOSConfig.h"


 







 




 












#line 68 "..\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 "..\\FreeRTOS\\include\\portable.h"



















































 



 




 


























































	



































	







	



























	








































#line 240 "..\\FreeRTOS\\include\\portable.h"

#line 248 "..\\FreeRTOS\\include\\portable.h"







#line 262 "..\\FreeRTOS\\include\\portable.h"

































	



	





 
#line 1 "..\\FreeRTOS\\portmacro.h"



















































 

















 

 
#line 80 "..\\FreeRTOS\\portmacro.h"





	typedef unsigned long portTickType;


 	

 



 	


 
extern void vPortYield( void );
extern void vPortYieldFromISR( void );



 


 

extern void vPortSetInterruptMask( void );
extern void vPortClearInterruptMask( void );
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );

#line 119 "..\\FreeRTOS\\portmacro.h"

 

 











#line 308 "..\\FreeRTOS\\include\\portable.h"

	




























#line 1 "..\\FreeRTOS\\include\\mpu_wrappers.h"



















































 





 
#line 126 "..\\FreeRTOS\\include\\mpu_wrappers.h"










#line 339 "..\\FreeRTOS\\include\\portable.h"






 



	unsigned long *pxPortInitialiseStack( unsigned long *pxTopOfStack, pdTASK_CODE pxCode, void *pvParameters );




 
void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;




 
long xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 











#line 71 "..\\FreeRTOS\\include\\FreeRTOS.h"



 
typedef long (*pdTASK_HOOK_CODE)( void * );









 

















































































































 
#line 215 "..\\FreeRTOS\\include\\FreeRTOS.h"



































 

	
 




	
 




	
 




	
 




	



 




	


 




	


 




	


 







 

















































































































































#line 471 "..\\FreeRTOS\\include\\FreeRTOS.h"



























#line 60 "..\\FreeRTOS\\port.c"
#line 1 "..\\FreeRTOS\\include\\task.h"



















































 









#line 63 "..\\FreeRTOS\\include\\task.h"
#line 1 "..\\FreeRTOS\\include\\list.h"



















































 



























 










 
struct xLIST_ITEM
{
	portTickType xItemValue;				 
	volatile struct xLIST_ITEM * pxNext;	 
	volatile struct xLIST_ITEM * pxPrevious; 
	void * pvOwner;							 
	void * pvContainer;						 
};
typedef struct xLIST_ITEM xListItem;		 

struct xMINI_LIST_ITEM
{
	portTickType xItemValue;
	volatile struct xLIST_ITEM *pxNext;
	volatile struct xLIST_ITEM *pxPrevious;
};
typedef struct xMINI_LIST_ITEM xMiniListItem;



 
typedef struct xLIST
{
	volatile unsigned long uxNumberOfItems;
	volatile xListItem * pxIndex;			 
	volatile xMiniListItem xListEnd;		 
} xList;







 








 









 








 








 




 




















 
#line 202 "..\\FreeRTOS\\include\\list.h"

















 











 











 
void vListInitialise( xList *pxList );









 
void vListInitialiseItem( xListItem *pxItem );











 
void vListInsert( xList *pxList, xListItem *pxNewListItem );



















 
void vListInsertEnd( xList *pxList, xListItem *pxNewListItem );










 
void vListRemove( xListItem *pxItemToRemove );







#line 64 "..\\FreeRTOS\\include\\task.h"







 












 
typedef void * xTaskHandle;



 
typedef struct xTIME_OUT
{
	long xOverflowCount;
	portTickType  xTimeOnEntering;
} xTimeOutType;



 
typedef struct xMEMORY_REGION
{
	void *pvBaseAddress;
	unsigned long ulLengthInBytes;
	unsigned long ulParameters;
} xMemoryRegion;



 
typedef struct xTASK_PARAMTERS
{
	pdTASK_CODE pvTaskCode;
	const signed char * const pcName;
	unsigned short usStackDepth;
	void *pvParameters;
	unsigned long uxPriority;
	unsigned long *puxStackBuffer;
	xMemoryRegion xRegions[ 1 ];
} xTaskParameters;





 









 













 













 









 









 


 






 












































































 




































































 















































 
void vTaskAllocateMPURegions( xTaskHandle xTask, const xMemoryRegion * const pxRegions ) ;







































 
void vTaskDelete( xTaskHandle pxTaskToDelete ) ;



 
















































 
void vTaskDelay( portTickType xTicksToDelay ) ;

























































 
void vTaskDelayUntil( portTickType * const pxPreviousWakeTime, portTickType xTimeIncrement ) ;













































 
unsigned long uxTaskPriorityGet( xTaskHandle pxTask ) ;








































 
void vTaskPrioritySet( xTaskHandle pxTask, unsigned long uxNewPriority ) ;

















































 
void vTaskSuspend( xTaskHandle pxTaskToSuspend ) ;















































 
void vTaskResume( xTaskHandle pxTaskToResume ) ;


















 
long xTaskResumeFromISR( xTaskHandle pxTaskToResume ) ;



 
































 
void vTaskStartScheduler( void ) ;



















































 
void vTaskEndScheduler( void ) ;

















































 
void vTaskSuspendAll( void ) ;


















































 
signed long xTaskResumeAll( void ) ;









 
signed long xTaskIsTaskSuspended( xTaskHandle xTask ) ;



 









 
portTickType xTaskGetTickCount( void ) ;














 
portTickType xTaskGetTickCountFromISR( void ) ;












 
unsigned long uxTaskGetNumberOfTasks( void ) ;












 
signed char *pcTaskGetTaskName( xTaskHandle xTaskToQuery );
























 
void vTaskList( signed char *pcWriteBuffer ) ;






























 
void vTaskGetRunTimeStats( signed char *pcWriteBuffer ) ;



















 
void vTaskStartTrace( signed char * pcBuffer, unsigned long ulBufferSize ) ;











 
unsigned long ulTaskEndTrace( void ) ;


















 
unsigned long uxTaskGetStackHighWaterMark( xTaskHandle xTask ) ;






 
#line 1155 "..\\FreeRTOS\\include\\task.h"










 
long xTaskCallApplicationTaskHook( xTaskHandle xTask, void *pvParameter ) ;







 
xTaskHandle xTaskGetIdleTaskHandle( void );



 










 
void vTaskIncrementTick( void ) ;





















 
void vTaskPlaceOnEventList( const xList * const pxEventList, portTickType xTicksToWait ) ;













 
void vTaskPlaceOnEventListRestricted( const xList * const pxEventList, portTickType xTicksToWait ) ;















 
signed long xTaskRemoveFromEventList( const xList * const pxEventList ) ;








 
void vTaskSwitchContext( void ) ;



 
xTaskHandle xTaskGetCurrentTaskHandle( void ) ;



 
void vTaskSetTimeOutState( xTimeOutType * const pxTimeOut ) ;




 
long xTaskCheckForTimeOut( xTimeOutType * const pxTimeOut, portTickType * const pxTicksToWait ) ;




 
void vTaskMissedYield( void ) ;




 
long xTaskGetSchedulerState( void ) ;




 
void vTaskPriorityInherit( xTaskHandle * const pxMutexHolder ) ;




 
void vTaskPriorityDisinherit( xTaskHandle * const pxMutexHolder ) ;




 
signed long xTaskGenericCreate( pdTASK_CODE pxTaskCode, const signed char * const pcName, unsigned short usStackDepth, void *pvParameters, unsigned long uxPriority, xTaskHandle *pxCreatedTask, unsigned long *puxStackBuffer, const xMemoryRegion * const xRegions ) ;



 
unsigned long uxTaskGetTaskNumber( xTaskHandle xTask );




 
void vTaskSetTaskNumber( xTaskHandle xTask, unsigned long uxHandle );









#line 61 "..\\FreeRTOS\\port.c"





 
#line 77 "..\\FreeRTOS\\port.c"

 



 
static unsigned long uxCriticalNesting = 0xaaaaaaaa;



 
static void prvSetupTimerInterrupt( void );



 
void PendSV_Handler( void );
void SysTick_Handler( void );
void SVC_Handler( void );



 
void vPortStartFirstTask( void );

 



 
unsigned long *pxPortInitialiseStack( unsigned long *pxTopOfStack, pdTASK_CODE pxCode, void *pvParameters )
{
	
 
	pxTopOfStack--;  
	*pxTopOfStack = ( 0x01000000 );	 
	pxTopOfStack--;
	*pxTopOfStack = ( unsigned long ) pxCode;	 
	pxTopOfStack--;
	*pxTopOfStack = 0;	 
	pxTopOfStack -= 5;	 
	*pxTopOfStack = ( unsigned long ) pvParameters;	 
	pxTopOfStack -= 8;	 

	return pxTopOfStack;
}
 

__asm void SVC_Handler( void )
{
	PRESERVE8

	ldr	r3, =pxCurrentTCB		 
	ldr r1, [r3]				 
	ldr r0, [r1]				 
	ldmia r0!, {r4-r11}		 
	msr psp, r0					 
	mov r0, #0
	msr	basepri, r0
	orr r14, #0xd				
	bx r14						
}
 

__asm void vPortStartFirstTask( void )
{
	PRESERVE8

	 
	ldr r0, =0xE000ED08
	ldr r0, [r0]
	ldr r0, [r0]
	 
	msr msp, r0
	 
	cpsie i
	 
	svc 0
	nop
}
 



 
long xPortStartScheduler( void )
{
	 
	*(( ( volatile unsigned long *) 0xe000ed20 )) |= ( ( ( unsigned long ) 255 ) << 16 );
	*(( ( volatile unsigned long *) 0xe000ed20 )) |= ( ( ( unsigned long ) 255 ) << 24 );

	
 
	prvSetupTimerInterrupt();
	
	 
	uxCriticalNesting = 0;

	 
	vPortStartFirstTask();

	 
	return 0;
}
 

void vPortEndScheduler( void )
{
	
 
}
 

void vPortYieldFromISR( void )
{
	 
	*(( ( volatile unsigned long *) 0xe000ed04 )) = 0x10000000;
}
 

void vPortEnterCritical( void )
{
	vPortSetInterruptMask();
	uxCriticalNesting++;
}
 

void vPortExitCritical( void )
{
	uxCriticalNesting--;
	if( uxCriticalNesting == 0 )
	{
		vPortClearInterruptMask();
	}
}
 

__asm void PendSV_Handler( void )
{
	extern uxCriticalNesting;
	extern pxCurrentTCB;
	extern vTaskSwitchContext;

	PRESERVE8

	mrs r0, psp						 

	ldr	r3, =pxCurrentTCB		 	  
	ldr	r2, [r3]						

	stmdb r0!, {r4-r11}				  
	str r0, [r2]					  

	stmdb sp!, {r3, r14}		
	mov r0, #191
	msr basepri, r0		 
	bl vTaskSwitchContext
	mov r0, #0
	msr basepri, r0
	ldmia sp!, {r3, r14}			

	ldr r1, [r3]					 
	ldr r0, [r1]					  
	ldmia r0!, {r4-r11}			  
	msr psp, r0						 
	bx r14
	nop
}
 

void SysTick_Handler( void )
{
unsigned long ulDummy;

	 

		*(( ( volatile unsigned long *) 0xe000ed04 )) = 0x10000000;	


	ulDummy = 0;vPortSetInterruptMask();
	{
		vTaskIncrementTick();
	}
	vPortClearInterruptMask();(void)ulDummy;
}
 




 
void prvSetupTimerInterrupt( void )
{
	 
	*(( ( volatile unsigned long *) 0xe000e014 )) = ( ( ( unsigned long ) 72000000 ) / ( ( portTickType ) 200 ) ) - 1UL;
	*(( ( volatile unsigned long *) 0xe000e010 )) = 0x00000004 | 0x00000002 | 0x00000001;
}
 

__asm void vPortSetInterruptMask( void )
{
	PRESERVE8

	push { r0 }
	mov r0, #191
	msr basepri, r0
	pop { r0 }
	bx r14
}

 

__asm void vPortClearInterruptMask( void )
{
	PRESERVE8

	push { r0 }
	mov r0, #0
	msr basepri, r0
	pop { r0 }
	bx r14
}