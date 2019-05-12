#line 1 "main.c"
#line 1 "main.h"



#line 1 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"






















 



 



 
    






  


 
  


 


         
        
         
        
         

         

















 






 
   








            
#line 98 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"





 






 
#line 117 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 



 



 
#line 136 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

#line 195 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 216 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 244 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 270 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 315 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       


#line 406 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
} IRQn_Type;



 

#line 1 "..\\CMSIS\\CoreSupport\\core_cm3.h"
 




















 





































 

 
 
 
 
 
 
 
 








 











#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stdint.h"
 
 





 









#line 25 "C:\\Keil\\ARM\\RV31\\Inc\\stdint.h"







 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 196 "C:\\Keil\\ARM\\RV31\\Inc\\stdint.h"

     







     










     











#line 260 "C:\\Keil\\ARM\\RV31\\Inc\\stdint.h"



 


#line 91 "..\\CMSIS\\CoreSupport\\core_cm3.h"

















 

#line 117 "..\\CMSIS\\CoreSupport\\core_cm3.h"





 


 





 
typedef struct
{
  volatile uint32_t ISER[8];                       
       uint32_t RESERVED0[24];                                   
  volatile uint32_t ICER[8];                       
       uint32_t RSERVED1[24];                                    
  volatile uint32_t ISPR[8];                       
       uint32_t RESERVED2[24];                                   
  volatile uint32_t ICPR[8];                       
       uint32_t RESERVED3[24];                                   
  volatile uint32_t IABR[8];                       
       uint32_t RESERVED4[56];                                   
  volatile uint8_t  IP[240];                       
       uint32_t RESERVED5[644];                                  
  volatile  uint32_t STIR;                          
}  NVIC_Type;                                               
   





 
typedef struct
{
  volatile const  uint32_t CPUID;                         
  volatile uint32_t ICSR;                          
  volatile uint32_t VTOR;                          
  volatile uint32_t AIRCR;                         
  volatile uint32_t SCR;                           
  volatile uint32_t CCR;                           
  volatile uint8_t  SHP[12];                       
  volatile uint32_t SHCSR;                         
  volatile uint32_t CFSR;                          
  volatile uint32_t HFSR;                          
  volatile uint32_t DFSR;                          
  volatile uint32_t MMFAR;                         
  volatile uint32_t BFAR;                          
  volatile uint32_t AFSR;                          
  volatile const  uint32_t PFR[2];                        
  volatile const  uint32_t DFR;                           
  volatile const  uint32_t ADR;                           
  volatile const  uint32_t MMFR[4];                       
  volatile const  uint32_t ISAR[5];                       
} SCB_Type;                                                

 












 






























 






 





















 









 


















 
































                                     









 









 









 














   





 
typedef struct
{
  volatile uint32_t CTRL;                          
  volatile uint32_t LOAD;                          
  volatile uint32_t VAL;                           
  volatile const  uint32_t CALIB;                         
} SysTick_Type;

 












 



 



 








   





 
typedef struct
{
  volatile  union  
  {
    volatile  uint8_t    u8;                        
    volatile  uint16_t   u16;                       
    volatile  uint32_t   u32;                       
  }  PORT [32];                                
       uint32_t RESERVED0[864];                                 
  volatile uint32_t TER;                           
       uint32_t RESERVED1[15];                                  
  volatile uint32_t TPR;                           
       uint32_t RESERVED2[15];                                  
  volatile uint32_t TCR;                           
       uint32_t RESERVED3[29];                                  
  volatile uint32_t IWR;                           
  volatile uint32_t IRR;                           
  volatile uint32_t IMCR;                          
       uint32_t RESERVED4[43];                                  
  volatile uint32_t LAR;                           
  volatile uint32_t LSR;                           
       uint32_t RESERVED5[6];                                   
  volatile const  uint32_t PID4;                          
  volatile const  uint32_t PID5;                          
  volatile const  uint32_t PID6;                          
  volatile const  uint32_t PID7;                          
  volatile const  uint32_t PID0;                          
  volatile const  uint32_t PID1;                          
  volatile const  uint32_t PID2;                          
  volatile const  uint32_t PID3;                          
  volatile const  uint32_t CID0;                          
  volatile const  uint32_t CID1;                          
  volatile const  uint32_t CID2;                          
  volatile const  uint32_t CID3;                          
} ITM_Type;                                                

 



 
























 



 



 



 








   





 
typedef struct
{
       uint32_t RESERVED0;
  volatile const  uint32_t ICTR;                          



       uint32_t RESERVED1;

} InterruptType_Type;

 



 








   






 
typedef struct
{
  volatile const  uint32_t TYPE;                          
  volatile uint32_t CTRL;                          
  volatile uint32_t RNR;                           
  volatile uint32_t RBAR;                          
  volatile uint32_t RASR;                          
  volatile uint32_t RBAR_A1;                       
  volatile uint32_t RASR_A1;                       
  volatile uint32_t RBAR_A2;                       
  volatile uint32_t RASR_A2;                       
  volatile uint32_t RBAR_A3;                       
  volatile uint32_t RASR_A3;                       
} MPU_Type;                                                

 









 









 



 









 



























   






 
typedef struct
{
  volatile uint32_t DHCSR;                         
  volatile  uint32_t DCRSR;                         
  volatile uint32_t DCRDR;                         
  volatile uint32_t DEMCR;                         
} CoreDebug_Type;

 




































 






 






































   


 
#line 721 "..\\CMSIS\\CoreSupport\\core_cm3.h"

#line 728 "..\\CMSIS\\CoreSupport\\core_cm3.h"






   




 





#line 758 "..\\CMSIS\\CoreSupport\\core_cm3.h"


 


 




#line 783 "..\\CMSIS\\CoreSupport\\core_cm3.h"


 
 
 
 








 
extern uint32_t __get_PSP(void);








 
extern void __set_PSP(uint32_t topOfProcStack);








 
extern uint32_t __get_MSP(void);








 
extern void __set_MSP(uint32_t topOfMainStack);








 
extern uint32_t __REV16(uint16_t value);








 
extern int32_t __REVSH(int16_t value);


#line 933 "..\\CMSIS\\CoreSupport\\core_cm3.h"





 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & 1);
}







 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}





#line 1445 "..\\CMSIS\\CoreSupport\\core_cm3.h"







 
 

 











 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);                          
  
  reg_value  =  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR;                                                    
  reg_value &= ~((0xFFFFul << 16) | (7ul << 8));              
  reg_value  =  (reg_value                       |
                (0x5FA << 16) | 
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR =  reg_value;
}








 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) >> 8);    
}








 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000) + 0x0100))->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}









 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000) + 0x0100))->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}















 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000) + 0x0D00))->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000) + 0x0100))->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}
















 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
 
  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}
















 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;
  
  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}



 












 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{ 
  if (ticks > (0xFFFFFFul << 0))  return (1);             
                                                               
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->LOAD  = (ticks & (0xFFFFFFul << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000) + 0x0010))->CTRL  = (1ul << 2) | 
                   (1ul << 1)   | 
                   (1ul << 0);                     
  return (0);                                                   
}






 





 
static __inline void NVIC_SystemReset(void)
{
  ((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR  = ((0x5FA << 16)      | 
                 (((SCB_Type *) ((0xE000E000) + 0x0D00))->AIRCR & (7ul << 8)) | 
                 (1ul << 2));                    
  __dsb(0);                                                                    
  while(1);                                                     
}

   



 






 
 

extern volatile int ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0))->DEMCR & (1ul << 24))  &&       
      (((ITM_Type *) (0xE0000000))->TCR & (1ul << 0))                  &&       
      (((ITM_Type *) (0xE0000000))->TER & (1ul << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000))->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000))->PORT[0].u8 = (uint8_t) ch;
  }  
  return (ch);
}










 
static __inline int ITM_ReceiveChar (void) {
  int ch = -1;                                

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }
  
  return (ch); 
}









 
static __inline int ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

   






   



 
#line 413 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
#line 1 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\system_stm32f10x.h"


















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 414 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
#line 415 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    


typedef enum {FALSE = 0, TRUE = !FALSE} bool;


typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;

  uint32_t RESERVED1[8]; 
  volatile uint32_t KEYR2;
  uint32_t RESERVED2;   
  volatile uint32_t SR2;
  volatile uint32_t CR2;
  volatile uint32_t AR2; 

} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;










} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 









 




#line 1248 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 1271 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



#line 1290 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"




















 
  


   

#line 1390 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
#line 1451 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
#line 1627 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 1634 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 








 








 






#line 1670 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 











 











 













 






#line 1786 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"




#line 1806 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





#line 1819 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 1838 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 1847 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 1855 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



















#line 1880 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 













#line 1907 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"





#line 1921 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 1928 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"











 














#line 1960 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 1968 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



















#line 1993 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 













#line 2020 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"





#line 2034 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 2041 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"











 








 








   
#line 2080 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 2175 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 2202 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
#line 2364 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2382 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2400 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 2417 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2435 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2454 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 

 






 
#line 2481 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"






 








 









 








 








 









 










 




#line 2556 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 










#line 2587 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2602 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2611 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2620 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2629 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2644 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2653 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2662 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2671 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2686 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2695 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2704 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2713 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 2728 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2737 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

   
#line 2746 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2755 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 2764 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"


 
#line 2774 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
#line 2838 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2873 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2908 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2943 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 2978 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
#line 3045 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 



 









 
#line 3069 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"




 




 
#line 3085 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 





 
#line 3107 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 





 
#line 3122 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
 
#line 3129 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
#line 3178 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3200 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3222 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3244 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3266 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3288 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 
#line 3324 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3354 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3364 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3388 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3412 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3436 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3460 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3484 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 
#line 3508 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
#line 3609 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3618 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"















  
 
#line 3641 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
#line 3776 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3783 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3790 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3797 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 
#line 3811 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3818 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3825 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3832 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3839 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3846 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3854 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3861 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3868 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3875 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3882 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3889 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 3897 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3904 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3911 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 3918 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
#line 4060 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4070 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









#line 4118 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 

























 
#line 4161 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4175 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4185 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 




























 





















 




























 





















 
#line 4303 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
#line 4338 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"





#line 4349 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4357 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 4364 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 
 
 
 
 

 




 
#line 4386 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
#line 4448 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 
#line 4460 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 


 
 
 
 
 

 











#line 4497 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4519 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4541 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 











#line 4563 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 4960 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4969 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4978 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 4989 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 4999 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5009 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5019 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5030 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5040 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5050 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5060 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5071 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5081 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5091 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5101 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5112 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5122 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5132 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5142 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5153 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5163 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5173 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5183 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5194 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5204 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5214 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5224 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5235 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5245 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5255 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 5265 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






#line 5313 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5383 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5398 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5424 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
#line 5645 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 5657 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 






 
#line 5674 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


#line 5818 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5830 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5842 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5854 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5866 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5878 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5890 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5902 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 

 


#line 5916 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5928 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5940 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5952 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5964 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5976 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 5988 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6000 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6012 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6024 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6036 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6048 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6060 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6072 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6084 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 


#line 6096 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 
 
 
 
 

 
 
#line 6116 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6127 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6145 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"











 





 





 
#line 6183 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 












 
#line 6204 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 6344 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6361 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6378 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6395 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6429 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6463 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6497 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6531 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6565 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6599 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6633 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6667 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6701 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6735 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6769 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6803 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6837 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6871 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6905 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6939 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 6973 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7007 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7041 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7075 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7109 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7143 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7177 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7211 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7245 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7279 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7313 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7347 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 









#line 7374 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7382 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7392 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
#line 7453 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7462 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 



#line 7483 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 



 


 
#line 7508 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7518 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 




 


 
 
 
 
 

 
#line 7544 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 



 
#line 7568 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7577 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"







 
#line 7597 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
#line 7608 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 
 
 
 
 

 


#line 7637 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 









#line 7671 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
#line 7711 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



#line 8175 "..\\CMSIS\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"



 

 

  







 

















 









 

  

 

 
#line 5 "main.h"
#line 6 "main.h"
#line 7 "main.h"
#line 8 "main.h"
#line 1 "..\\Macro\\mcu_gpio.h"


























 






typedef struct
{
	volatile uint32_t configuration_register_low;
	volatile uint32_t configuration_register_high;
	volatile uint32_t input_data_register;
	volatile uint32_t output_data_register;
	volatile uint32_t bit_set_reset_register;
	volatile uint32_t bit_reset_register;
	volatile uint32_t lock_register;
} mcu_gpio_type;


typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;
} mcu_afio_type;















#line 117 "..\\Macro\\mcu_gpio.h"





























#line 154 "..\\Macro\\mcu_gpio.h"





































#line 9 "main.h"
#line 1 "..\\Macro\\mcu_rcc.h"



 




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



#line 33 "..\\Macro\\mcu_rcc.h"

#line 10 "main.h"
































#line 48 "main.h"









struct TIME_INFO
	{
	uint32_t	counter;
    uint8_t 	seconds;		
    uint8_t 	minutes;	
    uint8_t 	hours;		
    uint32_t 	days;		
	uint16_t	months;
	} ;

extern struct TIME_INFO 	current_time;

extern uint8_t		RF2400P_tyu (uint8_t b);

extern void 			delay_ms 			(uint32_t Val);
extern uint8_t 		SD_SPI_Write_read 	(uint8_t data);
extern uint8_t 		SPI1_Write_read 	(uint8_t data);
extern void 			USART1_send 		(uint16_t data);


#line 2 "main.c"
#line 1 "..\\SDcard\\SDcard.h"



#line 1 "..\\test\\main.h"
#line 5 "..\\SDcard\\SDcard.h"


#line 22 "..\\SDcard\\SDcard.h"

#line 40 "..\\SDcard\\SDcard.h"








extern uint8_t SD_init(void);
extern uint8_t SD_ReadSector(uint32_t BlockNumb,uint8_t *buff);
extern uint8_t SD_WriteSector(uint32_t BlockNumb,uint8_t *buff);

extern uint8_t SD_ReadMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff);
extern uint8_t SD_WriteMultipleSector(uint32_t FirstBlockNumb,uint8_t NumberOfBlocks,uint8_t *buff);


#line 3 "main.c"

#line 1 "..\\Nokia1616\\Nokia1616.h"



#line 5 "..\\Nokia1616\\Nokia1616.h"
#line 1 "..\\Nokia1616\\font.h"







typedef struct __tagFONT_CHAR_INFO 
	{
	uint16_t	width;
	uint16_t	start;
	} FONT_CHAR_INFO;

typedef struct __tagFONT_INFO
	{
    uint8_t u8Height;		
    uint8_t u8FirstChar;	
    uint8_t u8LastChar;		
    uint8_t u8Flags;		
    const FONT_CHAR_INFO *asFontCharInfo;	
    const uint8_t *au8FontTable;	
	} FONT_INFO;



extern const FONT_INFO font5x8pxFontInfo;
extern const FONT_INFO ubuntu10ptFontInfo;
extern const FONT_INFO ubuntu10ptBoldFontInfo;
extern const FONT_INFO verdana10ptFontInfo;

#line 6 "..\\Nokia1616\\Nokia1616.h"














 






























#line 60 "..\\Nokia1616\\Nokia1616.h"










#line 89 "..\\Nokia1616\\Nokia1616.h"

extern void LCD_NOKIA1616_reset (void);
extern void LCD_NOKIA1616_init (void);																			   
extern void LCD_NOKIA1616_rectangle (uint8_t first_str, uint8_t last_str, uint8_t first_col, uint8_t last_col, uint32_t color );








	extern void USART1_send (uint16_t data);





	extern void LCD_NOKIA1616_print_icon8x8 (uint8_t icon_ID ,uint16_t x, uint16_t y, uint32_t backgnd_color, uint32_t icon_color);





extern 	uint32_t  		Font_bkgnd_color, Font_color;
extern  uint8_t 		LCD_NOKIA1616_DrawChar(int16_t x, int16_t y, uint8_t c);
extern  uint16_t	 	LCD_NOKIA1616_DrawString(int16_t x, int16_t y, const char *str);
extern  void 			LCD_NOKIA1616_SetFont(uint8_t num);


#line 5 "main.c"

#line 1 "..\\FreeRTOS\\FreeRTOSConfig.h"



#line 16 "..\\FreeRTOS\\FreeRTOSConfig.h"

 



#line 28 "..\\FreeRTOS\\FreeRTOSConfig.h"


 

#line 40 "..\\FreeRTOS\\FreeRTOSConfig.h"


 







 




 












#line 7 "main.c"
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



























#line 8 "main.c"
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









#line 9 "main.c"
#line 1 "..\\FreeRTOS\\include\\semphr.h"



















































 








#line 1 "..\\FreeRTOS\\include\\queue.h"



















































 














#line 68 "..\\FreeRTOS\\include\\queue.h"





 
typedef void * xQueueHandle;


 



 





























































 

















































































 

















































































 



















































































 























































































 
signed long xQueueGenericSend( xQueueHandle pxQueue, const void * const pvItemToQueue, portTickType xTicksToWait, long xCopyPosition );




























































































 




























































































 


































































































 
signed long xQueueGenericReceive( xQueueHandle xQueue, void * const pvBuffer, portTickType xTicksToWait, long xJustPeek );













 
unsigned long uxQueueMessagesWaiting( const xQueueHandle xQueue );












 
void vQueueDelete( xQueueHandle pxQueue );




































































 






































































 









































































 













































































 
signed long xQueueGenericSendFromISR( xQueueHandle pxQueue, const void * const pvItemToQueue, signed long *pxHigherPriorityTaskWoken, long xCopyPosition );























































































 
signed long xQueueReceiveFromISR( xQueueHandle pxQueue, void * const pvBuffer, signed long *pxTaskWoken );




 
signed long xQueueIsQueueEmptyFromISR( const xQueueHandle pxQueue );
signed long xQueueIsQueueFullFromISR( const xQueueHandle pxQueue );
unsigned long uxQueueMessagesWaitingFromISR( const xQueueHandle pxQueue );















 
signed long xQueueAltGenericSend( xQueueHandle pxQueue, const void * const pvItemToQueue, portTickType xTicksToWait, long xCopyPosition );
signed long xQueueAltGenericReceive( xQueueHandle pxQueue, void * const pvBuffer, portTickType xTicksToWait, long xJustPeeking );













 
signed long xQueueCRSendFromISR( xQueueHandle pxQueue, const void *pvItemToQueue, signed long xCoRoutinePreviouslyWoken );
signed long xQueueCRReceiveFromISR( xQueueHandle pxQueue, void *pvBuffer, signed long *pxTaskWoken );
signed long xQueueCRSend( xQueueHandle pxQueue, const void *pvItemToQueue, portTickType xTicksToWait );
signed long xQueueCRReceive( xQueueHandle pxQueue, void *pvBuffer, portTickType xTicksToWait );




 
xQueueHandle xQueueCreateMutex( unsigned char ucQueueType );
xQueueHandle xQueueCreateCountingSemaphore( unsigned long uxCountValue, unsigned long uxInitialCount );




 
long xQueueTakeMutexRecursive( xQueueHandle pxMutex, portTickType xBlockTime );
long xQueueGiveMutexRecursive( xQueueHandle pxMutex );




















 







 
xQueueHandle xQueueGenericCreate( unsigned long uxQueueLength, unsigned long uxItemSize, unsigned char ucQueueType );



 
void vQueueWaitForMessageRestricted( xQueueHandle pxQueue, portTickType xTicksToWait );








#line 62 "..\\FreeRTOS\\include\\semphr.h"

typedef xQueueHandle xSemaphoreHandle;











































 
#line 116 "..\\FreeRTOS\\include\\semphr.h"

































































 




























































































 














 






























































 



















































































 













 


























































































 














































 






















































 






























































 













 





#line 10 "main.c"


const uint8_t  	LCD_decode [] = 
	{'0', '1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
char			dec_number[4];
uint8_t			reg_value;				   
uint16_t		ADC_result = 0;
uint16_t		ADC_data = 0;
char			ADC_result_decoded[5] =
	{'0','0','0','0',0x00};
uint8_t			ADC_counter = 0;
uint8_t 		SPI_data = 0;
struct TIME_INFO current_time =
	{0,	0,	0,	0,	0,	0 };

char time_decoded[] =
	{'0','0',':','0','0',':','0','0',0x00};
uint8_t 		Joystick_data[10];






 

uint16_t		Joystick_axes[3];
uint16_t		Joystick_buttons;
uint8_t 		Joystick_flag = 0xFF;

uint8_t 		SD_buff[512];                  
uint8_t 		SD_buff_2_sectors[1024];	
uint8_t 		SDinit = 0xFF;
uint8_t 		SDread = 0xFF;


xSemaphoreHandle 	Semaphore_ADC_meaning_end;
xSemaphoreHandle 	Semaphore_seconds_incremented; 
xSemaphoreHandle	Mutex_LCD_accesss;
static long xHigherPriorityTaskWoken = ( 0 );


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

void init (void)
	{
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR		&= ~((uint32_t)0x00000003);
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		|= ((uint32_t)0x00000000);
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR			|= ((uint32_t)0x00010000);
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR			&= ~((uint32_t)0x01000000);
	while (!(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x00020000)))
		{};
	((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR 		|= ((uint8_t)0x10);   		
	((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR		&= ~((uint8_t)0x03);
	((FLASH_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x2000))->ACR 		|= ((uint8_t)0x02);
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		|= ((uint32_t)0x00000000) |((uint32_t)0x00000000) |((uint32_t)0x00000400);		
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		&= ~((uint32_t)0x00010000); 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		&= ~((uint32_t)0x00020000); 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		&= ~((uint32_t)0x003C0000); 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR		|= ((uint32_t)0x00010000) | ((uint32_t)0x00100000); 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR			|= ((uint32_t)0x01000000); 			
	
	while (!(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CR & ((uint32_t)0x02000000)))
		{};
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		&= ~((uint32_t)0x00000003);			
 	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR		|= ((uint32_t)0x00000002);
	
	while (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR & ((uint32_t)0x0000000C) != 0x08)
		{};	 		
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR 	|= ((uint32_t)0x00000008) | ((uint32_t)0x00000004);  	
	
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 8); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((0UL | (2UL)) << 8); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 12); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((0UL | (2UL)) << 12); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_low &= ~(15UL << 4); ((mcu_gpio_type *) 0x40010C00)->configuration_register_low |= ((0UL | (2UL)) << 4); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_low &= ~(15UL << 0); ((mcu_gpio_type *) 0x40010C00)->configuration_register_low |= ((0UL | (2UL)) << 0); } }; };
	
 	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 28); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((8UL | (1UL)) << 28); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 24); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((8UL) << 24); } ((mcu_gpio_type *) 0x40010C00)->bit_set_reset_register |= (1UL << 14); }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 20); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((8UL | (1UL)) << 20); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_high &= ~(15UL << 16); ((mcu_gpio_type *) 0x40010C00)->configuration_register_high |= ((8UL | (1UL)) << 16); } }; };
 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR 	|= ((uint32_t)0x00004000);		
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1		&= ~((uint16_t)0x0038);				
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1 		|= ((uint16_t)0x0020) | ((uint16_t)0x0010); 	
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1 		|= ((uint16_t)0x0004);			
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR2 		|= ((uint8_t)0x04);
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->CR1		|= ((uint16_t)0x0040);				
	
 	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 28); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL | (1UL)) << 28); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 24); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL) << 24); } ((mcu_gpio_type *) 0x40010800)->bit_set_reset_register |= (1UL << 6); }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 20); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL | (1UL)) << 20); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 16); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((0UL | (1UL)) << 16); } }; };
 
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR 	|= ((uint32_t)0x00001000);		
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1		&= ~((uint16_t)0x0038);				
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1 		|= ((uint16_t)0x0020) | ((uint16_t)0x0010); 	
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1 		|= ((uint16_t)0x0004);			
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR2 		|= ((uint8_t)0x04);
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->CR1		|= ((uint16_t)0x0040);				
	
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_low &= ~(15UL << 28); ((mcu_gpio_type *) 0x40010C00)->configuration_register_low |= ((12UL | (2UL)) << 28); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_low &= ~(15UL << 24); ((mcu_gpio_type *) 0x40010C00)->configuration_register_low |= ((12UL | (2UL)) << 24); } }; };

	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR 	|= ((uint32_t)0x00200000);		
	((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->CR2 		&= ~((uint16_t)0x003F);	 		
	((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->CR2		|= 36;
	((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->CCR		&= ~((uint16_t)0x0FFF);			
  ((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->CCR		|=  360;
	((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->TRISE		=	37;					   	
	((I2C_TypeDef *) (((uint32_t)0x40000000) + 0x5400))->CR1 		|= ((uint16_t)0x0001); 		 	
	
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 12); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL) << 12); } ((mcu_gpio_type *) 0x40010800)->bit_set_reset_register |= (1UL << 3); }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 8); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL | (2UL)) << 8); } }; };
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR 	|= ((uint32_t)0x00020000);  
	((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->CR1 	|= ((uint16_t)0x2000);		
	((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->BRR		= 9+ (19<<4);		
	((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->CR1 	|= ((uint16_t)0x0020) | ((uint16_t)0x0004);
 	
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_high &= ~(15UL << 8); ((mcu_gpio_type *) 0x40010800)->configuration_register_high |= ((8UL) << 8); } ((mcu_gpio_type *) 0x40010800)->bit_set_reset_register |= (1UL << 10); }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_high &= ~(15UL << 4); ((mcu_gpio_type *) 0x40010800)->configuration_register_high |= ((8UL | (2UL)) << 4); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_high &= ~(15UL << 0); ((mcu_gpio_type *) 0x40010800)->configuration_register_high |= ((8UL | (2UL)) << 0); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 3)) != (1UL << 3)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 3); } { { ((mcu_gpio_type *) 0x40010C00)->configuration_register_low &= ~(15UL << 20); ((mcu_gpio_type *) 0x40010C00)->configuration_register_low |= ((0UL | (2UL)) << 20); } }; };
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_high &= ~(15UL << 16); ((mcu_gpio_type *) 0x40010800)->configuration_register_high |= ((0UL | (2UL)) << 16); } }; };
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR 	|= ((uint32_t)0x00004000);  
	((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800))->CR1 	|= ((uint16_t)0x2000) | ((uint16_t)0x1000) | ((uint16_t)0x8000);		
	((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800))->CR2		|= ((uint16_t)0x0800) | ((uint16_t)0x1000) | ((uint16_t)0x0400) | ((uint16_t)0x0200) | ((uint16_t)0x0100); 
	((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800))->BRR		= (1<<4);		
	((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800))->CR1 	|= ((uint16_t)0x0008);
	
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR	|= ((uint32_t)0x00000800);		
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		&= ~((uint32_t)0x0000C000);
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		|= ((uint32_t)0x00008000);		
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		|= ((uint32_t)0x00002000);	

	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		&= ~((uint32_t)0x00000C00);
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		|= ((uint32_t)0x00000800);		
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRH		|= ((uint32_t)0x00000200);	

	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->PSC		=	39;						
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->ARR		=	36000;					

	
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCR4		=	915;					
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCMR2		|=	((uint16_t)0x4000) | ((uint16_t)0x2000); 
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCMR2		|=  ((uint16_t)0x0800);		
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCER		|=	((uint16_t)0x1000);			
	
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCR3		=	915;					
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCMR2		|=	((uint16_t)0x0040) | ((uint16_t)0x0020); 
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCMR2		|=  ((uint16_t)0x0008);		
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCER		|=	((uint16_t)0x0100);			

	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->BDTR		|=	((uint16_t)0x8000);			
	((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CR1		|=  ((uint16_t)0x0001) | ((uint16_t)0x0080); 	
	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR	|= ((uint32_t)0x00000001);		





	((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->PSC		=	35;						
	((TIM_TypeDef *) (((uint32_t)0x40000000) + 0x0000))->ARR		=	65000;					




	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		&= ~((uint32_t)0x0000C000);		
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->CFGR 		|= ((uint32_t)0x0000C000);	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR	|= ((uint32_t)0x00000200);		

	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRL 		&= ~((uint32_t)0x000000C0);			
	((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0800))->CRL		&= ~((uint32_t)0x00000030); 

	
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->SQR3		 = 0x00;			
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->SQR2		 = 0x00; 
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->SQR1 		|= ((uint32_t)0x00100000) | ((uint32_t)0x00200000) | ((uint32_t)0x00400000); 

	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR1 		|= ((uint32_t)0x0000E000) | ((uint32_t)0x00000800);

	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2		|= ((uint32_t)0x000E0000) | ((uint32_t)0x00100000); 
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2		|= ((uint32_t)0x00000008);
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2		|= ((uint32_t)0x00000001);
	while ((((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 & ((uint32_t)0x00000008)) == ((uint32_t)0x00000008))
		{};
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 		|= ((uint32_t)0x00000004);
	while ((((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 & ((uint32_t)0x00000008)) == ((uint32_t)0x00000004))
		{};
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR1 		|= ((uint32_t)0x00000020);			
	
	{ if((((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register & (1UL << 2)) != (1UL << 2)) { ((mcu_rcc_type *) 0x40021000)->APB2_peripheral_clock_enable_register |= (1UL << 2); } { { ((mcu_gpio_type *) 0x40010800)->configuration_register_low &= ~(15UL << 4); ((mcu_gpio_type *) 0x40010800)->configuration_register_low |= ((8UL) << 4); } ((mcu_gpio_type *) 0x40010800)->bit_set_reset_register |= (1UL << 1); }; };
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB2ENR 	|= ((uint32_t)0x00000001);		
	((AFIO_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0000))->EXTICR[0]	|= ((uint16_t)0x0000);	
	((EXTI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x0400))->FTSR		|= ((uint32_t)0x00000002);			


	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->APB1ENR	|= ((uint32_t)0x10000000) | ((uint32_t)0x08000000);
	((PWR_TypeDef *) (((uint32_t)0x40000000) + 0x7000))->CR			|= ((uint16_t)0x0100);
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR		|= ((uint32_t)0x00000001); 
	while (!(((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR & ((uint32_t)0x00000002)))
		{};
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR		|= ((uint32_t)0x00000100);	
	((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x20000) + 0x1000))->BDCR		|= ((uint32_t)0x00008000);		
	while (!(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint8_t)0x08)))		
		{};
	while (!(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint8_t)0x20)))
		{}; 
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRH		|= ((uint8_t)0x01);		
	while (!(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint8_t)0x20)))
		{};
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL		|= ((uint8_t)0x10);			
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->PRLH		=	0x00;				
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->PRLL		= 	0x7FFF;	
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL		&= ~((uint8_t)0x10);		
	while (!(((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL & ((uint8_t)0x20)))
		{};			

	
	}

uint8_t SD_SPI_Write_read 	(uint8_t data)
	{
	while (!(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->SR & ((uint8_t)0x02)))
		{};
	((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->DR 	= 	data;
	while (!(((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->SR & ((uint8_t)0x01)))
		{};
	return (((SPI_TypeDef *) (((uint32_t)0x40000000) + 0x3800))->DR);	
	}

uint8_t SPI1_Write_read 	(uint8_t data)
	{
	while (!(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->SR & ((uint8_t)0x02)))
		{};
	((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->DR 	= 	data;
	while (!(((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->SR & ((uint8_t)0x01)))
		{};
	return (((SPI_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3000))->DR);	
	}

void vTaskTime (void *pvParameters)
	{
	for (;;)
		{
		xQueueGenericReceive( ( xQueueHandle ) ( Semaphore_seconds_incremented ), 0, ( ( portTickType ) 0xffffffff ), ( 0 ) );
		current_time.hours 	 = current_time.counter / 3600;
		current_time.minutes 	 = (current_time.counter % 3600) /60;
		current_time.seconds = current_time.counter %60;
		LCD_decode_bin_to_dec_00 (current_time.hours, time_decoded);
		LCD_decode_bin_to_dec_00 (current_time.minutes, time_decoded+3);
		LCD_decode_bin_to_dec_00 (current_time.seconds, time_decoded+6);
		
		xQueueGenericReceive( ( xQueueHandle ) ( Mutex_LCD_accesss ), 0, ( ( portTickType ) 0xffffffff ), ( 0 ) );
		LCD_NOKIA1616_DrawString(1, 82, time_decoded);
		xQueueGenericSend( ( xQueueHandle ) ( Mutex_LCD_accesss ), 0, ( ( portTickType ) 0U ), ( 0 ) );
		};
	}

void vTaskADC (void *pvParameters)
	{
	for (;;)
		{		
		xQueueGenericReceive( ( xQueueHandle ) ( Semaphore_ADC_meaning_end ), 0, ( ( portTickType ) 0xffffffff ), ( 0 ) );
		ADC_data = ADC_data>>3;
		LCD_decode_bin_to_dec_0000 (ADC_data,ADC_result_decoded);

		xQueueGenericReceive( ( xQueueHandle ) ( Mutex_LCD_accesss ), 0, ( ( portTickType ) 0xffffffff ), ( 0 ) );
		LCD_NOKIA1616_DrawString(153, 106, ADC_result_decoded);
		xQueueGenericSend( ( xQueueHandle ) ( Mutex_LCD_accesss ), 0, ( ( portTickType ) 0U ), ( 0 ) );

		
		((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 |= ((uint32_t)0x00400000);

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
		((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCR4 = ((Joystick_axes[0] >> 6)*3) + 915;
		((TIM_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2C00))->CCR3 = ((Joystick_axes[1] >> 6)*3) + 915;
		};
	}

void vTaskStepMotor (void *pvParameters)
	{
	for (;;)
		{
		
		};
	}

int main (void)
	{
	
	init();	
	
	{ ( Semaphore_ADC_meaning_end ) = xQueueGenericCreate( ( unsigned long ) 1, ( ( unsigned char ) 0U ), ( 3U ) ); if( ( Semaphore_ADC_meaning_end ) != 0 ) { xQueueGenericSend( ( xQueueHandle ) ( ( Semaphore_ADC_meaning_end ) ), 0, ( ( portTickType ) 0U ), ( 0 ) ); } };
	{ ( Semaphore_seconds_incremented ) = xQueueGenericCreate( ( unsigned long ) 1, ( ( unsigned char ) 0U ), ( 3U ) ); if( ( Semaphore_seconds_incremented ) != 0 ) { xQueueGenericSend( ( xQueueHandle ) ( ( Semaphore_seconds_incremented ) ), 0, ( ( portTickType ) 0U ), ( 0 ) ); } };
	
	Mutex_LCD_accesss = xQueueCreateMutex( ( 1U ) );
	
	__enable_irq();
	NVIC_SetPriority 	(ADC1_2_IRQn,15);
	NVIC_SetPriority 	(SPI2_IRQn,15);
	NVIC_SetPriority 	(USART2_IRQn,15);
	NVIC_SetPriority 	(EXTI1_IRQn,15);
	NVIC_SetPriority 	(RTC_IRQn,48);

	NVIC_EnableIRQ 		(ADC1_2_IRQn);
	NVIC_EnableIRQ 		(SPI2_IRQn);
	NVIC_EnableIRQ 		(USART2_IRQn);
	NVIC_EnableIRQ 		(EXTI1_IRQn);
	NVIC_EnableIRQ 		(RTC_IRQn);
	  
	((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 		|= ((uint32_t)0x00400000);
	

	LCD_NOKIA1616_reset ();
	LCD_NOKIA1616_init ();
	LCD_NOKIA1616_rectangle (1, 160, 1, 130, 0xF50FA4);



  
	LCD_NOKIA1616_SetFont(0);
	{Font_color = 0x161620;};;
	{Font_bkgnd_color = 0x27E717;};;

	SD_init();                          
	delay_ms (100);
		

















 
	
	SDread = SD_ReadMultipleSector(15,2, SD_buff_2_sectors);	
		
	LCD_decode_bin_to_dec_000 (SD_buff[435], dec_number);
	dec_number[3] = 0x00;
	LCD_NOKIA1616_DrawString(140,10,dec_number);

	SD_buff[69] = 208;
	SD_buff[435] = 171;
	SD_WriteMultipleSector(15,2, SD_buff_2_sectors);
		
  SD_buff[69] = 0;
	SD_buff[435] = 185;
	SD_ReadMultipleSector(15,2, SD_buff_2_sectors);	
	
	LCD_decode_bin_to_dec_000 (SD_buff[208], dec_number);
	dec_number[3] = 0x00;
	LCD_NOKIA1616_DrawString(150,10,dec_number);




	

	
	

	
	xTaskGenericCreate( ( vTaskTime ), ( (signed char *) "Time" ), ( ( ( unsigned short ) 120 ) ), ( 0 ), ( 2 ), ( (xTaskHandle *) 0 ), ( 0 ), ( 0 ) );

	xTaskGenericCreate( ( vTaskADC ), ( (signed char *) "ADC" ), ( ( ( unsigned short ) 120 ) ), ( 0 ), ( 2 ), ( (xTaskHandle *) 0 ), ( 0 ), ( 0 ) );

	xTaskGenericCreate( ( vTaskJoystick ), ( (signed char *) "Joystick" ), ( ( ( unsigned short ) 120 ) ), ( 0 ), ( 2 ), ( (xTaskHandle *) 0 ), ( 0 ), ( 0 ) );

	xTaskGenericCreate( ( vTaskStepMotor ), ( (signed char *) "SPI" ), ( ( ( unsigned short ) 120 ) ), ( 0 ), ( 2 ), ( (xTaskHandle *) 0 ), ( 0 ), ( 0 ) );

	
	vTaskStartScheduler();
	
	while (1)
		{
		};
		
	}

void ADC1_2_IRQHandler (void)
	{
	if ((((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->SR & ((uint8_t)0x02)) == ((uint8_t)0x02) )
		{
		ADC_result += ((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->DR;
		ADC_counter++;
		if (ADC_counter == 8)
			{
			ADC_counter = 0;
			xQueueGenericSendFromISR( ( xQueueHandle ) ( Semaphore_ADC_meaning_end ), 0, ( &xHigherPriorityTaskWoken ), ( 0 ) );
			ADC_data = ADC_result;
			ADC_result = 0;
			((ADC_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x2400))->CR2 |= ((uint32_t)0x00400000);
			vPortYieldFromISR();
			}
		}
	}	
void USART2_IRQHandler (void)
	{ 
	 if (((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->SR & ((uint16_t)0x0020))
	 	{
		if (Joystick_flag < 10) 
			{
			Joystick_data[Joystick_flag] = 	((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->DR;
			Joystick_flag++;
			}
		if (((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400))->DR == 65) 
			{
			Joystick_flag = 1;			 
			}
		}
	}
	
void	EXTI1_IRQHandler (void)
	{
	
	
	
	
	
	
	
			
	
	
	}	   
 void	RTC_IRQHandler  (void)
 	{
	((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CRL	&= ~((uint8_t)0x01);	
	current_time.counter = ((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTL;
	current_time.counter = current_time.counter + (((RTC_TypeDef *) (((uint32_t)0x40000000) + 0x2800))->CNTH << 16);
	xQueueGenericSendFromISR( ( xQueueHandle ) ( Semaphore_seconds_incremented ), 0, ( &xHigherPriorityTaskWoken ), ( 0 ) );	
	}
