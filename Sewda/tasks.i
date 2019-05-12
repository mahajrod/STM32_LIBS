#line 1 "..\\FreeRTOS\\tasks.c"



















































 


#line 1 "C:\\Keil\\ARM\\RV31\\Inc\\stdio.h"
 
 
 





 






 









#line 34 "C:\\Keil\\ARM\\RV31\\Inc\\stdio.h"


  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 125 "C:\\Keil\\ARM\\RV31\\Inc\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 944 "C:\\Keil\\ARM\\RV31\\Inc\\stdio.h"



 
#line 56 "..\\FreeRTOS\\tasks.c"
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


 
#line 57 "..\\FreeRTOS\\tasks.c"
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



 
#line 58 "..\\FreeRTOS\\tasks.c"



 


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



























#line 65 "..\\FreeRTOS\\tasks.c"
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









#line 66 "..\\FreeRTOS\\tasks.c"
#line 1 "..\\FreeRTOS\\include\\timers.h"



















































 









#line 63 "..\\FreeRTOS\\include\\timers.h"
#line 64 "..\\FreeRTOS\\include\\timers.h"
#line 65 "..\\FreeRTOS\\include\\timers.h"







 







 

 




 
typedef void * xTimerHandle;

 
typedef void (*tmrTIMER_CALLBACK)( xTimerHandle xTimer );































































































































 
xTimerHandle xTimerCreate( const signed char *pcTimerName, portTickType xTimerPeriodInTicks, unsigned long uxAutoReload, void * pvTimerID, tmrTIMER_CALLBACK pxCallbackFunction ) ;




















 
void *pvTimerGetTimerID( xTimerHandle xTimer ) ;


































 
long xTimerIsTimerActive( xTimerHandle xTimer ) ;







 
xTaskHandle xTimerGetTimerDaemonTaskHandle( void );


















































 









































 














































































 





































 


























































































































 



















































































 





























































 







































































 




















































































 





 
long xTimerCreateTimerTask( void ) ;
long xTimerGenericCommand( xTimerHandle xTimer, long xCommandID, portTickType xOptionalValue, signed long *pxHigherPriorityTaskWoken, portTickType xBlockTime ) ;








#line 67 "..\\FreeRTOS\\tasks.c"
#line 1 "..\\FreeRTOS\\include\\StackMacros.h"



















































 
















 

 



	 




 

#line 89 "..\\FreeRTOS\\include\\StackMacros.h"
 

#line 104 "..\\FreeRTOS\\include\\StackMacros.h"
 

#line 120 "..\\FreeRTOS\\include\\StackMacros.h"
 

#line 141 "..\\FreeRTOS\\include\\StackMacros.h"
 

#line 165 "..\\FreeRTOS\\include\\StackMacros.h"
 



#line 68 "..\\FreeRTOS\\tasks.c"





 





 
typedef struct tskTaskControlBlock
{
	volatile unsigned long	*pxTopOfStack;		 




	
	xListItem				xGenericListItem;	 
	xListItem				xEventListItem;		 
	unsigned long	uxPriority;			 
	unsigned long			*pxStack;			 
	signed char				pcTaskName[ ( 16 ) ]; 















		unsigned long uxBasePriority;	 










} tskTCB;





 




 
 tskTCB * volatile pxCurrentTCB = 0;

 

 static xList pxReadyTasksLists[ ( ( unsigned long ) 5 ) ];	 
 static xList xDelayedTaskList1;							 
 static xList xDelayedTaskList2;							 
 static xList * volatile pxDelayedTaskList ;				 
 static xList * volatile pxOverflowDelayedTaskList;		 
 static xList xPendingReadyList;							 

#line 148 "..\\FreeRTOS\\tasks.c"



	 static xList xSuspendedTaskList;					 









 
 static volatile unsigned long uxCurrentNumberOfTasks 	= ( unsigned long ) 0U;
 static volatile portTickType xTickCount 						= ( portTickType ) 0U;
 static unsigned long uxTopUsedPriority	 				= ( ( unsigned long ) 0U );
 static volatile unsigned long uxTopReadyPriority 		= ( ( unsigned long ) 0U );
 static volatile signed long xSchedulerRunning 			= ( 0 );
 static volatile unsigned long uxSchedulerSuspended	 	= ( unsigned long ) ( 0 );
 static volatile unsigned long uxMissedTicks 			= ( unsigned long ) 0U;
 static volatile long xMissedYield 						= ( long ) ( 0 );
 static volatile long xNumOfOverflows 					= ( long ) 0;
 static unsigned long uxTCBNumber 						= ( unsigned long ) 0U;
 static portTickType xNextTaskUnblockTime						= ( portTickType ) ( portTickType ) 0xffffffff;

#line 181 "..\\FreeRTOS\\tasks.c"

 




 




 





 







 
#line 213 "..\\FreeRTOS\\tasks.c"
 








 
#line 274 "..\\FreeRTOS\\tasks.c"
 






 


 
extern void vApplicationStackOverflowHook( xTaskHandle *pxTask, signed char *pcTaskName );
extern void vApplicationTickHook( void );
		
 




 
static void prvInitialiseTCBVariables( tskTCB *pxTCB, const signed char * const pcName, unsigned long uxPriority, const xMemoryRegion * const xRegions, unsigned short usStackDepth ) ;




 
static void prvInitialiseTaskLists( void ) ;











 
static void prvIdleTask( void *pvParameters );







 










 
static void prvCheckTasksWaitingTermination( void ) ;




 
static void prvAddCurrentTaskToDelayedList( portTickType xTimeToWake ) ;




 
static tskTCB *prvAllocateTCBAndStack( unsigned short usStackDepth, unsigned long *puxStackBuffer ) ;









 










 







 





 

signed long xTaskGenericCreate( pdTASK_CODE pxTaskCode, const signed char * const pcName, unsigned short usStackDepth, void *pvParameters, unsigned long uxPriority, xTaskHandle *pxCreatedTask, unsigned long *puxStackBuffer, const xMemoryRegion * const xRegions )
{
signed long xReturn;
tskTCB * pxNewTCB;

	;
	;

	
 
	pxNewTCB = prvAllocateTCBAndStack( usStackDepth, puxStackBuffer );

	if( pxNewTCB != 0 )
	{
		unsigned long *pxTopOfStack;

#line 411 "..\\FreeRTOS\\tasks.c"

		


 

		{
			pxTopOfStack = pxNewTCB->pxStack + ( usStackDepth - ( unsigned short ) 1 );
			pxTopOfStack = ( unsigned long * ) ( ( ( unsigned long ) pxTopOfStack ) & ( ( unsigned long ) ~( 0x0007 )  ) );

			 
			;
		}
#line 437 "..\\FreeRTOS\\tasks.c"

		 
		prvInitialiseTCBVariables( pxNewTCB, pcName, uxPriority, xRegions, usStackDepth );

		


 





		{
			pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
		}


		 
		;

		if( ( void * ) pxCreatedTask != 0 )
		{
			

 
			*pxCreatedTask = ( xTaskHandle ) pxNewTCB;
		}
		
		
 
		vPortEnterCritical();
		{
			uxCurrentNumberOfTasks++;
			if( pxCurrentTCB == 0 )
			{
				
 
				pxCurrentTCB =  pxNewTCB;

				if( uxCurrentNumberOfTasks == ( unsigned long ) 1 )
				{
					

 
					prvInitialiseTaskLists();
				}
			}
			else
			{
				

 
				if( xSchedulerRunning == ( 0 ) )
				{
					if( pxCurrentTCB->uxPriority <= uxPriority )
					{
						pxCurrentTCB = pxNewTCB;
					}
				}
			}

			
 
			if( pxNewTCB->uxPriority > uxTopUsedPriority )
			{
				uxTopUsedPriority = pxNewTCB->uxPriority;
			}

#line 512 "..\\FreeRTOS\\tasks.c"
			uxTCBNumber++;

			if( ( pxNewTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxNewTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxNewTCB )->uxPriority ] ), &( ( pxNewTCB )->xGenericListItem ) );

			xReturn = ( 1 );
			;
		}
		vPortExitCritical();
	}
	else
	{
		xReturn = ( -1 );
		;
	}

	if( xReturn == ( 1 ) )
	{
		if( xSchedulerRunning != ( 0 ) )
		{
			
 
			if( pxCurrentTCB->uxPriority < uxPriority )
			{
				vPortYieldFromISR();
			}
		}
	}

	return xReturn;
}
 

#line 600 "..\\FreeRTOS\\tasks.c"








 



	void vTaskDelayUntil( portTickType * const pxPreviousWakeTime, portTickType xTimeIncrement )
	{
	portTickType xTimeToWake;
	long xAlreadyYielded, xShouldDelay = ( 0 );

		;
		;

		vTaskSuspendAll();
		{
			 
			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;

			if( xTickCount < *pxPreviousWakeTime )
			{
				



 
				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xTickCount ) )
				{
					xShouldDelay = ( 1 );
				}
			}
			else
			{
				

 
				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xTickCount ) )
				{
					xShouldDelay = ( 1 );
				}
			}

			 
			*pxPreviousWakeTime = xTimeToWake;

			if( xShouldDelay != ( 0 ) )
			{
				;

				

 
				vListRemove( ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );
				prvAddCurrentTaskToDelayedList( xTimeToWake );
			}
		}
		xAlreadyYielded = xTaskResumeAll();

		
 
		if( xAlreadyYielded == ( 0 ) )
		{
			vPortYieldFromISR();
		}
	}


 



	void vTaskDelay( portTickType xTicksToDelay )
	{
	portTickType xTimeToWake;
	signed long xAlreadyYielded = ( 0 );

		 
		if( xTicksToDelay > ( portTickType ) 0U )
		{
			vTaskSuspendAll();
			{
				;

				





 

				
 
				xTimeToWake = xTickCount + xTicksToDelay;

				

 
				vListRemove( ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );
				prvAddCurrentTaskToDelayedList( xTimeToWake );
			}
			xAlreadyYielded = xTaskResumeAll();
		}

		
 
		if( xAlreadyYielded == ( 0 ) )
		{
			vPortYieldFromISR();
		}
	}


 



	unsigned long uxTaskPriorityGet( xTaskHandle pxTask )
	{
	tskTCB *pxTCB;
	unsigned long uxReturn;

		vPortEnterCritical();
		{
			
 
			pxTCB = ( ( ( pxTask ) == 0 ) ? ( tskTCB * ) pxCurrentTCB : ( tskTCB * ) ( pxTask ) );
			uxReturn = pxTCB->uxPriority;
		}
		vPortExitCritical();

		return uxReturn;
	}


 



	void vTaskPrioritySet( xTaskHandle pxTask, unsigned long uxNewPriority )
	{
	tskTCB *pxTCB;
	unsigned long uxCurrentPriority;
	long xYieldRequired = ( 0 );

		;

		 
		if( uxNewPriority >= ( ( unsigned long ) 5 ) )
		{
			uxNewPriority = ( ( unsigned long ) 5 ) - ( unsigned long ) 1U;
		}

		vPortEnterCritical();
		{
			if( pxTask == pxCurrentTCB )
			{
				pxTask = 0;
			}

			
 
			pxTCB = ( ( ( pxTask ) == 0 ) ? ( tskTCB * ) pxCurrentTCB : ( tskTCB * ) ( pxTask ) );

			;


			{
				uxCurrentPriority = pxTCB->uxBasePriority;
			}






			if( uxCurrentPriority != uxNewPriority )
			{
				
 
				if( uxNewPriority > uxCurrentPriority )
				{
					if( pxTask != 0 )
					{
						


 
						xYieldRequired = ( 1 );
					}
				}
				else if( pxTask == 0 )
				{
					
 
					xYieldRequired = ( 1 );
				}




				{
					
 
					if( pxTCB->uxBasePriority == pxTCB->uxPriority )
					{
						pxTCB->uxPriority = uxNewPriority;
					}

					 
					pxTCB->uxBasePriority = uxNewPriority;
				}






				( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( ( unsigned long ) 5 ) - ( portTickType ) uxNewPriority ) );

				


 
				if( ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ uxCurrentPriority ] ) ) ) )
				{
					

 
					vListRemove( &( pxTCB->xGenericListItem ) );
					if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}

				if( xYieldRequired == ( 1 ) )
				{
					vPortYieldFromISR();
				}
			}
		}
		vPortExitCritical();
	}


 



	void vTaskSuspend( xTaskHandle pxTaskToSuspend )
	{
	tskTCB *pxTCB;

		vPortEnterCritical();
		{
			
 
			if( pxTaskToSuspend == pxCurrentTCB )
			{
				pxTaskToSuspend = 0;
			}

			 
			pxTCB = ( ( ( pxTaskToSuspend ) == 0 ) ? ( tskTCB * ) pxCurrentTCB : ( tskTCB * ) ( pxTaskToSuspend ) );

			;

			 
			vListRemove( &( pxTCB->xGenericListItem ) );

			 
			if( pxTCB->xEventListItem.pvContainer != 0 )
			{
				vListRemove( &( pxTCB->xEventListItem ) );
			}

			vListInsertEnd( ( xList * ) &xSuspendedTaskList, &( pxTCB->xGenericListItem ) );
		}
		vPortExitCritical();

		if( ( void * ) pxTaskToSuspend == 0 )
		{
			if( xSchedulerRunning != ( 0 ) )
			{
				 
				vPortYieldFromISR();
			}
			else
			{
				

 
				if( ( ( &xSuspendedTaskList )->uxNumberOfItems ) == uxCurrentNumberOfTasks )
				{
					


 
					pxCurrentTCB = 0;
				}
				else
				{
					vTaskSwitchContext();
				}
			}
		}
	}


 



	signed long xTaskIsTaskSuspended( xTaskHandle xTask )
	{
	long xReturn = ( 0 );
	const tskTCB * const pxTCB = ( tskTCB * ) xTask;

		 
		;

		
 
		if( ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &xSuspendedTaskList ) ) != ( 0 ) )
		{
			 
			if( ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( &xPendingReadyList ) ) != ( 1 ) )
			{
				


 
				if( ( ( &( pxTCB->xEventListItem ) )->pvContainer == ( void * ) ( 0 ) ) == ( 1 ) )
				{
					xReturn = ( 1 );
				}
			}
		}

		return xReturn;
	}


 



	void vTaskResume( xTaskHandle pxTaskToResume )
	{
	tskTCB *pxTCB;

		 
		;

		
 
		pxTCB = ( tskTCB * ) pxTaskToResume;

		
 
		if( ( pxTCB != 0 ) && ( pxTCB != pxCurrentTCB ) )
		{
			vPortEnterCritical();
			{
				if( xTaskIsTaskSuspended( pxTCB ) == ( 1 ) )
				{
					;

					
 
					vListRemove(  &( pxTCB->xGenericListItem ) );
					if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

					 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						
 
						vPortYieldFromISR();
					}
				}
			}
			vPortExitCritical();
		}
	}



 



	long xTaskResumeFromISR( xTaskHandle pxTaskToResume )
	{
	long xYieldRequired = ( 0 );
	tskTCB *pxTCB;
	unsigned long uxSavedInterruptStatus;

		;

		pxTCB = ( tskTCB * ) pxTaskToResume;

		uxSavedInterruptStatus = 0;vPortSetInterruptMask();
		{
			if( xTaskIsTaskSuspended( pxTCB ) == ( 1 ) )
			{
				;

				if( uxSchedulerSuspended == ( unsigned long ) ( 0 ) )
				{
					xYieldRequired = ( pxTCB->uxPriority >= pxCurrentTCB->uxPriority );
					vListRemove(  &( pxTCB->xGenericListItem ) );
					if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
				}
				else
				{
					

 
					vListInsertEnd( ( xList * ) &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
				}
			}
		}
		vPortClearInterruptMask();(void)uxSavedInterruptStatus;

		return xYieldRequired;
	}








 


void vTaskStartScheduler( void )
{
long xReturn;

	 
#line 1054 "..\\FreeRTOS\\tasks.c"
	{
		 
		xReturn = xTaskGenericCreate( ( prvIdleTask ), ( ( signed char * ) "IDLE" ), ( ( ( unsigned short ) 120 ) ), ( ( void * ) 0 ), ( ( ( ( unsigned long ) 0U ) | ( ( unsigned long ) 0x00 ) ) ), ( 0 ), ( 0 ), ( 0 ) );
	}


#line 1068 "..\\FreeRTOS\\tasks.c"

	if( xReturn == ( 1 ) )
	{
		






 
		vPortSetInterruptMask();

		xSchedulerRunning = ( 1 );
		xTickCount = ( portTickType ) 0U;

		

 
		;
		
		
 
		if( xPortStartScheduler() != ( 0 ) )
		{
			
 
		}
		else
		{
			 
		}
	}

	 
	;
}
 

void vTaskEndScheduler( void )
{
	

 
	vPortSetInterruptMask();
	xSchedulerRunning = ( 0 );
	vPortEndScheduler();
}
 

void vTaskSuspendAll( void )
{
	
 
	++uxSchedulerSuspended;
}
 

signed long xTaskResumeAll( void )
{
register tskTCB *pxTCB;
signed long xAlreadyYielded = ( 0 );

	
 
	;

	



 
	vPortEnterCritical();
	{
		--uxSchedulerSuspended;

		if( uxSchedulerSuspended == ( unsigned long ) ( 0 ) )
		{
			if( uxCurrentNumberOfTasks > ( unsigned long ) 0U )
			{
				long xYieldRequired = ( 0 );

				
 
				while( ( ( ( xList * ) &xPendingReadyList )->uxNumberOfItems == ( unsigned long ) 0 ) == ( 0 ) )
				{
					pxTCB = ( tskTCB * ) ( (&( ( ( ( xList * ) &xPendingReadyList ) )->xListEnd ))->pxNext->pvOwner );
					vListRemove( &( pxTCB->xEventListItem ) );
					vListRemove( &( pxTCB->xGenericListItem ) );
					if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );

					
 
					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
					{
						xYieldRequired = ( 1 );
					}
				}

				

 
				if( uxMissedTicks > ( unsigned long ) 0U )
				{
					while( uxMissedTicks > ( unsigned long ) 0U )
					{
						vTaskIncrementTick();
						--uxMissedTicks;
					}

					

 

					{
						xYieldRequired = ( 1 );
					}

				}

				if( ( xYieldRequired == ( 1 ) ) || ( xMissedYield == ( 1 ) ) )
				{
					xAlreadyYielded = ( 1 );
					xMissedYield = ( 0 );
					vPortYieldFromISR();
				}
			}
		}
	}
	vPortExitCritical();

	return xAlreadyYielded;
}








 



portTickType xTaskGetTickCount( void )
{
portTickType xTicks;

	 
	vPortEnterCritical();
	{
		xTicks = xTickCount;
	}
	vPortExitCritical();

	return xTicks;
}
 

portTickType xTaskGetTickCountFromISR( void )
{
portTickType xReturn;
unsigned long uxSavedInterruptStatus;

	uxSavedInterruptStatus = 0;vPortSetInterruptMask();
	xReturn = xTickCount;
	vPortClearInterruptMask();(void)uxSavedInterruptStatus;

	return xReturn;
}
 

unsigned long uxTaskGetNumberOfTasks( void )
{
	
 
	return uxCurrentNumberOfTasks;
}
 

#line 1262 "..\\FreeRTOS\\tasks.c"
 

#line 1325 "..\\FreeRTOS\\tasks.c"
 

#line 1400 "..\\FreeRTOS\\tasks.c"
 

#line 1413 "..\\FreeRTOS\\tasks.c"




 

void vTaskIncrementTick( void )
{
tskTCB * pxTCB;

	

 
	if( uxSchedulerSuspended == ( unsigned long ) ( 0 ) )
	{
		++xTickCount;
		if( xTickCount == ( portTickType ) 0U )
		{
			xList *pxTemp;

			

 
			;
			
			pxTemp = pxDelayedTaskList;
			pxDelayedTaskList = pxOverflowDelayedTaskList;
			pxOverflowDelayedTaskList = pxTemp;
			xNumOfOverflows++;
	
			if( ( ( pxDelayedTaskList )->uxNumberOfItems == ( unsigned long ) 0 ) != ( 0 ) )
			{
				



 
				xNextTaskUnblockTime = ( portTickType ) 0xffffffff;
			}
			else
			{
				


 
				pxTCB = ( tskTCB * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner );
				xNextTaskUnblockTime = ( ( &( pxTCB->xGenericListItem ) )->xItemValue );
			}
		}

		 
		{ portTickType xItemValue; if( xTickCount >= xNextTaskUnblockTime ) { for( ;; ) { if( ( ( pxDelayedTaskList )->uxNumberOfItems == ( unsigned long ) 0 ) != ( 0 ) ) { xNextTaskUnblockTime = ( portTickType ) 0xffffffff; break; } else { pxTCB = ( tskTCB * ) ( (&( ( pxDelayedTaskList )->xListEnd ))->pxNext->pvOwner ); xItemValue = ( ( &( pxTCB->xGenericListItem ) )->xItemValue ); if( xTickCount < xItemValue ) { xNextTaskUnblockTime = xItemValue; break; } vListRemove( &( pxTCB->xGenericListItem ) ); if( pxTCB->xEventListItem . pvContainer != 0 ) { vListRemove( &( pxTCB->xEventListItem ) ); } if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) ); } } } };
	}
	else
	{
		++uxMissedTicks;

		
 





	}

#line 1489 "..\\FreeRTOS\\tasks.c"

	;
}
 

#line 1518 "..\\FreeRTOS\\tasks.c"
 

#line 1547 "..\\FreeRTOS\\tasks.c"
 

#line 1579 "..\\FreeRTOS\\tasks.c"
 

void vTaskSwitchContext( void )
{
	if( uxSchedulerSuspended != ( unsigned long ) ( 0 ) )
	{
		
 
		xMissedYield = ( 1 );
	}
	else
	{
		;
	
#line 1612 "..\\FreeRTOS\\tasks.c"
	
		;
		;
	
		 
		while( ( ( &( pxReadyTasksLists[ uxTopReadyPriority ] ) )->uxNumberOfItems == ( unsigned long ) 0 ) )
		{
			;
			--uxTopReadyPriority;
		}
	
		
 
		{ xList * const pxConstList = ( &( pxReadyTasksLists[ uxTopReadyPriority ] ) ); ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( pxConstList )->pxIndex == ( xListItem * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxCurrentTCB ) = ( pxConstList )->pxIndex->pvOwner; };
	
		;
	}
}
 

void vTaskPlaceOnEventList( const xList * const pxEventList, portTickType xTicksToWait )
{
portTickType xTimeToWake;

	;

	
 

	

 
	vListInsert( ( xList * ) pxEventList, ( xListItem * ) &( pxCurrentTCB->xEventListItem ) );

	

 
	vListRemove( ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );



	{
		if( xTicksToWait == ( portTickType ) 0xffffffff )
		{
			

 
			vListInsertEnd( ( xList * ) &xSuspendedTaskList, ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );
		}
		else
		{
			
 
			xTimeToWake = xTickCount + xTicksToWait;
			prvAddCurrentTaskToDelayedList( xTimeToWake );
		}
	}
#line 1677 "..\\FreeRTOS\\tasks.c"
}
 

#line 1712 "..\\FreeRTOS\\tasks.c"
 

signed long xTaskRemoveFromEventList( const xList * const pxEventList )
{
tskTCB *pxUnblockedTCB;
long xReturn;

	
 

	








 
	pxUnblockedTCB = ( tskTCB * ) ( (&( ( pxEventList )->xListEnd ))->pxNext->pvOwner );
	;
	vListRemove( &( pxUnblockedTCB->xEventListItem ) );

	if( uxSchedulerSuspended == ( unsigned long ) ( 0 ) )
	{
		vListRemove( &( pxUnblockedTCB->xGenericListItem ) );
		if( ( pxUnblockedTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxUnblockedTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxUnblockedTCB )->uxPriority ] ), &( ( pxUnblockedTCB )->xGenericListItem ) );
	}
	else
	{
		
 
		vListInsertEnd( ( xList * ) &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
	}

	if( pxUnblockedTCB->uxPriority >= pxCurrentTCB->uxPriority )
	{
		


 
		xReturn = ( 1 );
	}
	else
	{
		xReturn = ( 0 );
	}

	return xReturn;
}
 

void vTaskSetTimeOutState( xTimeOutType * const pxTimeOut )
{
	;
	pxTimeOut->xOverflowCount = xNumOfOverflows;
	pxTimeOut->xTimeOnEntering = xTickCount;
}
 

long xTaskCheckForTimeOut( xTimeOutType * const pxTimeOut, portTickType * const pxTicksToWait )
{
long xReturn;

	;
	;

	vPortEnterCritical();
	{

			

 
			if( *pxTicksToWait == ( portTickType ) 0xffffffff )
			{
				xReturn = ( 0 );
			}
			else  


		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( ( portTickType ) xTickCount >= ( portTickType ) pxTimeOut->xTimeOnEntering ) )
		{
			


 
			xReturn = ( 1 );
		}
		else if( ( ( portTickType ) ( ( portTickType ) xTickCount - ( portTickType ) pxTimeOut->xTimeOnEntering ) ) < ( portTickType ) *pxTicksToWait )
		{
			 
			*pxTicksToWait -= ( ( portTickType ) xTickCount - ( portTickType ) pxTimeOut->xTimeOnEntering );
			vTaskSetTimeOutState( pxTimeOut );
			xReturn = ( 0 );
		}
		else
		{
			xReturn = ( 1 );
		}
	}
	vPortExitCritical();

	return xReturn;
}
 

void vTaskMissedYield( void )
{
	xMissedYield = ( 1 );
}
 

#line 1844 "..\\FreeRTOS\\tasks.c"
 

#line 1858 "..\\FreeRTOS\\tasks.c"












 
static void prvIdleTask( void *pvParameters )
{
	 
	( void ) pvParameters;

	for( ;; )
	{
		 
		prvCheckTasksWaitingTermination();

#line 1890 "..\\FreeRTOS\\tasks.c"


		{
			







 
			if( ( ( &( pxReadyTasksLists[ ( ( unsigned long ) 0U ) ] ) )->uxNumberOfItems ) > ( unsigned long ) 1 )
			{
				vPortYieldFromISR();
			}
		}


#line 1921 "..\\FreeRTOS\\tasks.c"
	}
}  









 



static void prvInitialiseTCBVariables( tskTCB *pxTCB, const signed char * const pcName, unsigned long uxPriority, const xMemoryRegion * const xRegions, unsigned short usStackDepth )
{
	 

	{
		 
		strncpy( ( char * ) pxTCB->pcTaskName, ( const char * ) pcName, ( unsigned short ) ( 16 ) );
	}

	pxTCB->pcTaskName[ ( unsigned short ) ( 16 ) - ( unsigned short ) 1 ] = ( signed char ) '\0';

	
 
	if( uxPriority >= ( ( unsigned long ) 5 ) )
	{
		uxPriority = ( ( unsigned long ) 5 ) - ( unsigned long ) 1U;
	}

	pxTCB->uxPriority = uxPriority;

	{
		pxTCB->uxBasePriority = uxPriority;
	}


	vListInitialiseItem( &( pxTCB->xGenericListItem ) );
	vListInitialiseItem( &( pxTCB->xEventListItem ) );

	
 
	( &( pxTCB->xGenericListItem ) )->pvOwner = ( void * ) ( pxTCB );

	 
	( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( unsigned long ) 5 ) - ( portTickType ) uxPriority );
	( &( pxTCB->xEventListItem ) )->pvOwner = ( void * ) ( pxTCB );
























	{
		( void ) xRegions;
		( void ) usStackDepth;
	}

}
 

#line 2021 "..\\FreeRTOS\\tasks.c"

static void prvInitialiseTaskLists( void )
{
unsigned long uxPriority;

	for( uxPriority = ( unsigned long ) 0U; uxPriority < ( ( unsigned long ) 5 ); uxPriority++ )
	{
		vListInitialise( ( xList * ) &( pxReadyTasksLists[ uxPriority ] ) );
	}

	vListInitialise( ( xList * ) &xDelayedTaskList1 );
	vListInitialise( ( xList * ) &xDelayedTaskList2 );
	vListInitialise( ( xList * ) &xPendingReadyList );








	{
		vListInitialise( ( xList * ) &xSuspendedTaskList );
	}


	
 
	pxDelayedTaskList = &xDelayedTaskList1;
	pxOverflowDelayedTaskList = &xDelayedTaskList2;
}
 

static void prvCheckTasksWaitingTermination( void )
{
#line 2086 "..\\FreeRTOS\\tasks.c"
}
 

static void prvAddCurrentTaskToDelayedList( portTickType xTimeToWake )
{
	 
	( &( pxCurrentTCB->xGenericListItem ) )->xItemValue = ( xTimeToWake );

	if( xTimeToWake < xTickCount )
	{
		 
		vListInsert( ( xList * ) pxOverflowDelayedTaskList, ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );
	}
	else
	{
		 
		vListInsert( ( xList * ) pxDelayedTaskList, ( xListItem * ) &( pxCurrentTCB->xGenericListItem ) );

		

 
		if( xTimeToWake < xNextTaskUnblockTime )
		{
			xNextTaskUnblockTime = xTimeToWake;
		}
	}
}
 

static tskTCB *prvAllocateTCBAndStack( unsigned short usStackDepth, unsigned long *puxStackBuffer )
{
tskTCB *pxNewTCB;

	
 
	pxNewTCB = ( tskTCB * ) pvPortMalloc( sizeof( tskTCB ) );

	if( pxNewTCB != 0 )
	{
		

 
		pxNewTCB->pxStack = ( unsigned long * ) ( ( ( puxStackBuffer ) == 0 ) ? ( pvPortMalloc( ( ( ( ( size_t )usStackDepth ) * sizeof( unsigned long ) ) ) ) ) : ( puxStackBuffer ) );

		if( pxNewTCB->pxStack == 0 )
		{
			 
			vPortFree( pxNewTCB );
			pxNewTCB = 0;
		}
		else
		{
			 
			memset( pxNewTCB->pxStack, ( int ) ( 0xa5U ), ( size_t ) usStackDepth * sizeof( unsigned long ) );
		}
	}

	return pxNewTCB;
}
 

#line 2177 "..\\FreeRTOS\\tasks.c"
 

#line 2248 "..\\FreeRTOS\\tasks.c"
 

#line 2268 "..\\FreeRTOS\\tasks.c"
 

#line 2296 "..\\FreeRTOS\\tasks.c"
 

#line 2313 "..\\FreeRTOS\\tasks.c"


 



	xTaskHandle xTaskGetCurrentTaskHandle( void )
	{
	xTaskHandle xReturn;

		

 
		xReturn = pxCurrentTCB;

		return xReturn;
	}



 

#line 2361 "..\\FreeRTOS\\tasks.c"
 



	void vTaskPriorityInherit( xTaskHandle * const pxMutexHolder )
	{
	tskTCB * const pxTCB = ( tskTCB * ) pxMutexHolder;

		;

		if( pxTCB->uxPriority < pxCurrentTCB->uxPriority )
		{
			 
			( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( unsigned long ) 5 ) - ( portTickType ) pxCurrentTCB->uxPriority );

			
 
			if( ( ( &( pxTCB->xGenericListItem ) )->pvContainer == ( void * ) ( &( pxReadyTasksLists[ pxTCB->uxPriority ] ) ) ) != ( 0 ) )
			{
				vListRemove( &( pxTCB->xGenericListItem ) );

				 
				pxTCB->uxPriority = pxCurrentTCB->uxPriority;
				if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
			}
			else
			{
				 
				pxTCB->uxPriority = pxCurrentTCB->uxPriority;
			}

			;
		}
	}


 



	void vTaskPriorityDisinherit( xTaskHandle * const pxMutexHolder )
	{
	tskTCB * const pxTCB = ( tskTCB * ) pxMutexHolder;

		if( pxMutexHolder != 0 )
		{
			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
			{
				
 
				vListRemove( &( pxTCB->xGenericListItem ) );

				
 
				;
				pxTCB->uxPriority = pxTCB->uxBasePriority;
				( &( pxTCB->xEventListItem ) )->xItemValue = ( ( ( unsigned long ) 5 ) - ( portTickType ) pxTCB->uxPriority );
				if( ( pxTCB )->uxPriority > uxTopReadyPriority ) { uxTopReadyPriority = ( pxTCB )->uxPriority; } vListInsertEnd( ( xList * ) &( pxReadyTasksLists[ ( pxTCB )->uxPriority ] ), &( ( pxTCB )->xGenericListItem ) );
			}
		}
	}


 

#line 2439 "..\\FreeRTOS\\tasks.c"
 

#line 2460 "..\\FreeRTOS\\tasks.c"
 




