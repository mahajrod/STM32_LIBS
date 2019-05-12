#ifndef IMAGE_FILES_H_
#define IMAGE_FILES_H_

#include 	"stdint.h"
#include 	"file_types_conf.h"

//------------File types structures----------------
#ifdef 		USE_BMP

typedef  struct  tagBITMAPFILEHEADER 
	{ 
	uint16_t   	bfType;        
	uint32_t   	bfSize;        
	uint16_t    bfReserved1; 
	uint16_t    bfReserved2; 
	uint32_t   	bfOffBits;    
	} BITMAPFILEHEADER, *PBITMAPFILEHEADER;
	
typedef struct tagBITMAPINFOHEADER
	{
	uint32_t  	biSize; 
	uint32_t  	biWidth; 
	uint32_t   	biHeight; 
	uint16_t   	biPlanes; 
	uint16_t   	biBitCount; 
	uint32_t  	biCompression; 
	uint32_t  	biSizeImage; 
	uint32_t   	biXPelsPerMeter; 
	uint32_t   	biYPelsPerMeter; 
	uint32_t  	biClrUsed; 
	uint32_t  	biClrImportant; 
	} BITMAPINFOHEADER, *PBITMAPINFOHEADER;	
	
extern BITMAPINFOHEADER BMP_get_info_header(uint8_t * buffer);
extern BITMAPFILEHEADER BMP_get_file_header(uint8_t * buffer);

#endif 	//USE_BMP

#endif //IMAGE_FILES_H_
