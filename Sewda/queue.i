#line 1 "..\\FreeRTOS\\queue.c"



















































 

#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"
 
 
 




 
 



 












  


 








#line 45 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"


  
  typedef unsigned int size_t;










    



    typedef unsigned short wchar_t;  
#line 74 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { __int64 quot, rem; } lldiv_t;
    


#line 95 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"
   



 

   




 
#line 114 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) __int64 atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) __int64 strtoll(const char * __restrict  ,
                               char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned __int64 strtoull(const char * __restrict  ,
                                         char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 414 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 502 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 531 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"

extern __declspec(__nothrow) __pure int abs(int  );
   



 

extern __declspec(__nothrow) __pure div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __pure long int labs(long int  );
   



 




extern __declspec(__nothrow) __pure ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __pure __int64 llabs(__int64  );
   



 




extern __declspec(__nothrow) __pure lldiv_t lldiv(__int64  , __int64  );
   











 
#line 612 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"



 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __pure __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 



 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 866 "C:\\Keil\\ARM\\RV31\\Inc\\stdlib.h"


 
#line 55 "..\\FreeRTOS\\queue.c"
#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
 
 
 
 




 








 











#line 37 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 184 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 200 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 223 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 238 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 261 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 493 "C:\\Keil\\ARM\\RV31\\Inc\\string.h"



 
#line 56 "..\\FreeRTOS\\queue.c"



 


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



























#line 63 "..\\FreeRTOS\\queue.c"
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









#line 64 "..\\FreeRTOS\\queue.c"









 

 





 



 






 




 









 
typedef struct QueueDefinition
{
	signed char *pcHead;				 
	signed char *pcTail;				 

	signed char *pcWriteTo;				 
	signed char *pcReadFrom;			 

	xList xTasksWaitingToSend;				 
	xList xTasksWaitingToReceive;			 

	volatile unsigned long uxMessagesWaiting; 
	unsigned long uxLength;		 
	unsigned long uxItemSize;		 

	signed long xRxLock;			 
	signed long xTxLock;			 
	





} xQUEUE;
 





 
typedef xQUEUE * xQueueHandle;





 
xQueueHandle xQueueGenericCreate( unsigned long uxQueueLength, unsigned long uxItemSize, unsigned char ucQueueType ) ;
signed long xQueueGenericSend( xQueueHandle xQueue, const void * const pvItemToQueue, portTickType xTicksToWait, long xCopyPosition ) ;
unsigned long uxQueueMessagesWaiting( const xQueueHandle pxQueue ) ;
void vQueueDelete( xQueueHandle xQueue ) ;
signed long xQueueGenericSendFromISR( xQueueHandle pxQueue, const void * const pvItemToQueue, signed long *pxHigherPriorityTaskWoken, long xCopyPosition ) ;
signed long xQueueGenericReceive( xQueueHandle pxQueue, void * const pvBuffer, portTickType xTicksToWait, long xJustPeeking ) ;
signed long xQueueReceiveFromISR( xQueueHandle pxQueue, void * const pvBuffer, signed long *pxTaskWoken ) ;
xQueueHandle xQueueCreateMutex( unsigned char ucQueueType ) ;
xQueueHandle xQueueCreateCountingSemaphore( unsigned long uxCountValue, unsigned long uxInitialCount ) ;
long xQueueTakeMutexRecursive( xQueueHandle xMutex, portTickType xBlockTime ) ;
long xQueueGiveMutexRecursive( xQueueHandle xMutex ) ;
signed long xQueueAltGenericSend( xQueueHandle pxQueue, const void * const pvItemToQueue, portTickType xTicksToWait, long xCopyPosition ) ;
signed long xQueueAltGenericReceive( xQueueHandle pxQueue, void * const pvBuffer, portTickType xTicksToWait, long xJustPeeking ) ;
signed long xQueueIsQueueEmptyFromISR( const xQueueHandle pxQueue ) ;
signed long xQueueIsQueueFullFromISR( const xQueueHandle pxQueue ) ;
unsigned long uxQueueMessagesWaitingFromISR( const xQueueHandle pxQueue ) ;
void vQueueWaitForMessageRestricted( xQueueHandle pxQueue, portTickType xTicksToWait ) ;
unsigned char ucQueueGetQueueNumber( xQueueHandle pxQueue ) ;
void vQueueSetQueueNumber( xQueueHandle pxQueue, unsigned char ucQueueNumber ) ;
unsigned char ucQueueGetQueueType( xQueueHandle pxQueue ) ;




 
#line 177 "..\\FreeRTOS\\queue.c"




 
#line 203 "..\\FreeRTOS\\queue.c"








 
static void prvUnlockQueue( xQueueHandle pxQueue ) ;





 
static signed long prvIsQueueEmpty( const xQueueHandle pxQueue ) ;





 
static signed long prvIsQueueFull( const xQueueHandle pxQueue ) ;




 
static void prvCopyDataToQueue( xQUEUE *pxQueue, const void *pvItemToQueue, long xPosition ) ;



 
static void prvCopyDataFromQueue( xQUEUE * const pxQueue, const void *pvBuffer ) ;
 




 
#line 257 "..\\FreeRTOS\\queue.c"
 




 

xQueueHandle xQueueGenericCreate( unsigned long uxQueueLength, unsigned long uxItemSize, unsigned char ucQueueType )
{
xQUEUE *pxNewQueue;
size_t xQueueSizeInBytes;
xQueueHandle xReturn = 0;

	
 
	( void ) ucQueueType;

	 
	if( uxQueueLength > ( unsigned long ) 0 )
	{
		pxNewQueue = ( xQUEUE * ) pvPortMalloc( sizeof( xQUEUE ) );
		if( pxNewQueue != 0 )
		{
			
 
			xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ) + ( size_t ) 1;

			pxNewQueue->pcHead = ( signed char * ) pvPortMalloc( xQueueSizeInBytes );
			if( pxNewQueue->pcHead != 0 )
			{
				
 
				pxNewQueue->pcTail = pxNewQueue->pcHead + ( uxQueueLength * uxItemSize );
				pxNewQueue->uxMessagesWaiting = ( unsigned long ) 0U;
				pxNewQueue->pcWriteTo = pxNewQueue->pcHead;
				pxNewQueue->pcReadFrom = pxNewQueue->pcHead + ( ( uxQueueLength - ( unsigned long ) 1U ) * uxItemSize );
				pxNewQueue->uxLength = uxQueueLength;
				pxNewQueue->uxItemSize = uxItemSize;
				pxNewQueue->xRxLock = ( ( signed long ) -1 );
				pxNewQueue->xTxLock = ( ( signed long ) -1 );






				 
				vListInitialise( &( pxNewQueue->xTasksWaitingToSend ) );
				vListInitialise( &( pxNewQueue->xTasksWaitingToReceive ) );

				;
				xReturn = pxNewQueue;
			}
			else
			{
				;
				vPortFree( pxNewQueue );
			}
		}
	}

	;

	return xReturn;
}
 



	xQueueHandle xQueueCreateMutex( unsigned char ucQueueType )
	{
	xQUEUE *pxNewQueue;

		
 
		( void ) ucQueueType;
	
		 
		pxNewQueue = ( xQUEUE * ) pvPortMalloc( sizeof( xQUEUE ) );
		if( pxNewQueue != 0 )
		{
			 
			pxNewQueue->pcTail = 0;
			pxNewQueue->pcHead = 0;

			
 
			pxNewQueue->pcWriteTo = 0;
			pxNewQueue->pcReadFrom = 0;

			

 
			pxNewQueue->uxMessagesWaiting = ( unsigned long ) 0U;
			pxNewQueue->uxLength = ( unsigned long ) 1U;
			pxNewQueue->uxItemSize = ( unsigned long ) 0U;
			pxNewQueue->xRxLock = ( ( signed long ) -1 );
			pxNewQueue->xTxLock = ( ( signed long ) -1 );
			






			 
			vListInitialise( &( pxNewQueue->xTasksWaitingToSend ) );
			vListInitialise( &( pxNewQueue->xTasksWaitingToReceive ) );

			;

			 
			xQueueGenericSend( pxNewQueue, 0, ( portTickType ) 0U, ( 0 ) );
		}
		else
		{
			;
		}

		;
		return pxNewQueue;
	}


 

#line 430 "..\\FreeRTOS\\queue.c"
 

#line 470 "..\\FreeRTOS\\queue.c"
 

#line 496 "..\\FreeRTOS\\queue.c"
 

signed long xQueueGenericSend( xQueueHandle pxQueue, const void * const pvItemToQueue, portTickType xTicksToWait, long xCopyPosition )
{
signed long xEntryTimeSet = ( 0 );
xTimeOutType xTimeOut;

	;
	;

	

 
	for( ;; )
	{
		vPortEnterCritical();
		{
			
 
			if( pxQueue->uxMessagesWaiting < pxQueue->uxLength )
			{
				;
				prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

				
 
				if( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
				{
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) == ( 1 ) )
					{
						


 
						vPortYieldFromISR();
					}
				}

				vPortExitCritical();

				
 
				return ( 1 );
			}
			else
			{
				if( xTicksToWait == ( portTickType ) 0 )
				{
					
 
					vPortExitCritical();

					
 
					;
					return ( 0 );
				}
				else if( xEntryTimeSet == ( 0 ) )
				{
					
 
					vTaskSetTimeOutState( &xTimeOut );
					xEntryTimeSet = ( 1 );
				}
			}
		}
		vPortExitCritical();

		
 

		vTaskSuspendAll();
		vPortEnterCritical(); { if( ( pxQueue )->xRxLock == ( ( signed long ) -1 ) ) { ( pxQueue )->xRxLock = ( ( signed long ) 0 ); } if( ( pxQueue )->xTxLock == ( ( signed long ) -1 ) ) { ( pxQueue )->xTxLock = ( ( signed long ) 0 ); } } vPortExitCritical();

		 
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( 0 ) )
		{
			if( prvIsQueueFull( pxQueue ) != ( 0 ) )
			{
				;
				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );

				



 
				prvUnlockQueue( pxQueue );

				



 
				if( xTaskResumeAll() == ( 0 ) )
				{
					vPortYieldFromISR();
				}
			}
			else
			{
				 
				prvUnlockQueue( pxQueue );
				( void ) xTaskResumeAll();
			}
		}
		else
		{
			 
			prvUnlockQueue( pxQueue );
			( void ) xTaskResumeAll();

			
 
			;
			return ( 0 );
		}
	}
}
 

#line 692 "..\\FreeRTOS\\queue.c"
 

#line 821 "..\\FreeRTOS\\queue.c"
 

signed long xQueueGenericSendFromISR( xQueueHandle pxQueue, const void * const pvItemToQueue, signed long *pxHigherPriorityTaskWoken, long xCopyPosition )
{
signed long xReturn;
unsigned long uxSavedInterruptStatus;

	;
	;
	;

	



 
	uxSavedInterruptStatus = 0;vPortSetInterruptMask();
	{
		if( pxQueue->uxMessagesWaiting < pxQueue->uxLength )
		{
			;

			prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );

			
 
			if( pxQueue->xTxLock == ( ( signed long ) -1 ) )
			{
				if( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
				{
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( 0 ) )
					{
						
 
						*pxHigherPriorityTaskWoken = ( 1 );
					}
				}
			}
			else
			{
				
 
				++( pxQueue->xTxLock );
			}

			xReturn = ( 1 );
		}
		else
		{
			;
			xReturn = ( 0 );
		}
	}
	vPortClearInterruptMask();(void)uxSavedInterruptStatus;

	return xReturn;
}
 

signed long xQueueGenericReceive( xQueueHandle pxQueue, void * const pvBuffer, portTickType xTicksToWait, long xJustPeeking )
{
signed long xEntryTimeSet = ( 0 );
xTimeOutType xTimeOut;
signed char *pcOriginalReadPosition;

	;
	;

	

 

	for( ;; )
	{
		vPortEnterCritical();
		{
			
 
			if( pxQueue->uxMessagesWaiting > ( unsigned long ) 0 )
			{
				 
				pcOriginalReadPosition = pxQueue->pcReadFrom;

				prvCopyDataFromQueue( pxQueue, pvBuffer );

				if( xJustPeeking == ( 0 ) )
				{
					;

					 
					--( pxQueue->uxMessagesWaiting );


					{
						if( pxQueue->pcHead == 0 )
						{
							
 
							pxQueue->pcTail = xTaskGetCurrentTaskHandle();
						}
					}


					if( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
					{
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) == ( 1 ) )
						{
							vPortYieldFromISR();
						}
					}
				}
				else
				{
					;

					
 
					pxQueue->pcReadFrom = pcOriginalReadPosition;

					
 
					if( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
					{
						
 
						if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( 0 ) )
						{
							 
							vPortYieldFromISR();
						}
					}

				}

				vPortExitCritical();
				return ( 1 );
			}
			else
			{
				if( xTicksToWait == ( portTickType ) 0 )
				{
					
 
					vPortExitCritical();
					;
					return ( 0 );
				}
				else if( xEntryTimeSet == ( 0 ) )
				{
					
 
					vTaskSetTimeOutState( &xTimeOut );
					xEntryTimeSet = ( 1 );
				}
			}
		}
		vPortExitCritical();

		
 

		vTaskSuspendAll();
		vPortEnterCritical(); { if( ( pxQueue )->xRxLock == ( ( signed long ) -1 ) ) { ( pxQueue )->xRxLock = ( ( signed long ) 0 ); } if( ( pxQueue )->xTxLock == ( ( signed long ) -1 ) ) { ( pxQueue )->xTxLock = ( ( signed long ) 0 ); } } vPortExitCritical();

		 
		if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == ( 0 ) )
		{
			if( prvIsQueueEmpty( pxQueue ) != ( 0 ) )
			{
				;


				{
					if( pxQueue->pcHead == 0 )
					{
						vPortEnterCritical();
						{
							vTaskPriorityInherit( ( void * ) pxQueue->pcTail );
						}
						vPortExitCritical();
					}
				}


				vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
				prvUnlockQueue( pxQueue );
				if( xTaskResumeAll() == ( 0 ) )
				{
					vPortYieldFromISR();
				}
			}
			else
			{
				 
				prvUnlockQueue( pxQueue );
				( void ) xTaskResumeAll();
			}
		}
		else
		{
			prvUnlockQueue( pxQueue );
			( void ) xTaskResumeAll();
			;
			return ( 0 );
		}
	}
}
 

signed long xQueueReceiveFromISR( xQueueHandle pxQueue, void * const pvBuffer, signed long *pxTaskWoken )
{
signed long xReturn;
unsigned long uxSavedInterruptStatus;

	;
	;
	;

	uxSavedInterruptStatus = 0;vPortSetInterruptMask();
	{
		 
		if( pxQueue->uxMessagesWaiting > ( unsigned long ) 0 )
		{
			;

			prvCopyDataFromQueue( pxQueue, pvBuffer );
			--( pxQueue->uxMessagesWaiting );

			

 
			if( pxQueue->xRxLock == ( ( signed long ) -1 ) )
			{
				if( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
				{
					if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( 0 ) )
					{
						
 
						*pxTaskWoken = ( 1 );
					}
				}
			}
			else
			{
				
 
				++( pxQueue->xRxLock );
			}

			xReturn = ( 1 );
		}
		else
		{
			xReturn = ( 0 );
			;
		}
	}
	vPortClearInterruptMask();(void)uxSavedInterruptStatus;

	return xReturn;
}
 

unsigned long uxQueueMessagesWaiting( const xQueueHandle pxQueue )
{
unsigned long uxReturn;

	;

	vPortEnterCritical();
		uxReturn = pxQueue->uxMessagesWaiting;
	vPortExitCritical();

	return uxReturn;
}
 

unsigned long uxQueueMessagesWaitingFromISR( const xQueueHandle pxQueue )
{
unsigned long uxReturn;

	;

	uxReturn = pxQueue->uxMessagesWaiting;

	return uxReturn;
}
 

void vQueueDelete( xQueueHandle pxQueue )
{
	;

	;
	;
	vPortFree( pxQueue->pcHead );
	vPortFree( pxQueue );
}
 

#line 1130 "..\\FreeRTOS\\queue.c"
 

#line 1140 "..\\FreeRTOS\\queue.c"
 

#line 1150 "..\\FreeRTOS\\queue.c"
 

static void prvCopyDataToQueue( xQUEUE *pxQueue, const void *pvItemToQueue, long xPosition )
{
	if( pxQueue->uxItemSize == ( unsigned long ) 0 )
	{

		{
			if( pxQueue->pcHead == 0 )
			{
				 
				vTaskPriorityDisinherit( ( void * ) pxQueue->pcTail );
				pxQueue->pcTail = 0;
			}
		}

	}
	else if( xPosition == ( 0 ) )
	{
		memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( unsigned ) pxQueue->uxItemSize );
		pxQueue->pcWriteTo += pxQueue->uxItemSize;
		if( pxQueue->pcWriteTo >= pxQueue->pcTail )
		{
			pxQueue->pcWriteTo = pxQueue->pcHead;
		}
	}
	else
	{
		memcpy( ( void * ) pxQueue->pcReadFrom, pvItemToQueue, ( unsigned ) pxQueue->uxItemSize );
		pxQueue->pcReadFrom -= pxQueue->uxItemSize;
		if( pxQueue->pcReadFrom < pxQueue->pcHead )
		{
			pxQueue->pcReadFrom = ( pxQueue->pcTail - pxQueue->uxItemSize );
		}
	}

	++( pxQueue->uxMessagesWaiting );
}
 

static void prvCopyDataFromQueue( xQUEUE * const pxQueue, const void *pvBuffer )
{
	if( pxQueue->pcHead != 0 )
	{
		pxQueue->pcReadFrom += pxQueue->uxItemSize;
		if( pxQueue->pcReadFrom >= pxQueue->pcTail )
		{
			pxQueue->pcReadFrom = pxQueue->pcHead;
		}
		memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->pcReadFrom, ( unsigned ) pxQueue->uxItemSize );
	}
}
 

static void prvUnlockQueue( xQueueHandle pxQueue )
{
	 

	


 
	vPortEnterCritical();
	{
		 
		while( pxQueue->xTxLock > ( ( signed long ) 0 ) )
		{
			
 
			if( ( ( &( pxQueue ->xTasksWaitingToReceive ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
			{
				
 
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != ( 0 ) )
				{
					
 
					vTaskMissedYield();
				}

				--( pxQueue->xTxLock );
			}
			else
			{
				break;
			}
		}

		pxQueue->xTxLock = ( ( signed long ) -1 );
	}
	vPortExitCritical();

	 
	vPortEnterCritical();
	{
		while( pxQueue->xRxLock > ( ( signed long ) 0 ) )
		{
			if( ( ( &( pxQueue ->xTasksWaitingToSend ) )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
			{
				if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != ( 0 ) )
				{
					vTaskMissedYield();
				}

				--( pxQueue->xRxLock );
			}
			else
			{
				break;
			}
		}

		pxQueue->xRxLock = ( ( signed long ) -1 );
	}
	vPortExitCritical();
}
 

static signed long prvIsQueueEmpty( const xQueueHandle pxQueue )
{
signed long xReturn;

	vPortEnterCritical();
		xReturn = ( pxQueue->uxMessagesWaiting == ( unsigned long ) 0 );
	vPortExitCritical();

	return xReturn;
}
 

signed long xQueueIsQueueEmptyFromISR( const xQueueHandle pxQueue )
{
signed long xReturn;

	;
	xReturn = ( pxQueue->uxMessagesWaiting == ( unsigned long ) 0 );

	return xReturn;
}
 

static signed long prvIsQueueFull( const xQueueHandle pxQueue )
{
signed long xReturn;

	vPortEnterCritical();
		xReturn = ( pxQueue->uxMessagesWaiting == pxQueue->uxLength );
	vPortExitCritical();

	return xReturn;
}
 

signed long xQueueIsQueueFullFromISR( const xQueueHandle pxQueue )
{
signed long xReturn;

	;
	xReturn = ( pxQueue->uxMessagesWaiting == pxQueue->uxLength );

	return xReturn;
}
 

#line 1380 "..\\FreeRTOS\\queue.c"
 

#line 1453 "..\\FreeRTOS\\queue.c"
 



#line 1483 "..\\FreeRTOS\\queue.c"
 

#line 1524 "..\\FreeRTOS\\queue.c"
 

#line 1547 "..\\FreeRTOS\\queue.c"
 

#line 1570 "..\\FreeRTOS\\queue.c"
 

#line 1600 "..\\FreeRTOS\\queue.c"

