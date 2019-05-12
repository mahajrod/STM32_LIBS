#include "image_files.h"

uint32_t BMP_get_LE_bytes_from_buffer (uint8_t * buffer, uint16_t start_byte)
	{
	return buffer[start_byte] + (buffer[start_byte+1]<<8) + (buffer[start_byte+2]<<16) + (buffer[start_byte+3]<<24);
	}


BITMAPFILEHEADER BMP_get_file_header(uint8_t * buffer)
	{		
	BITMAPFILEHEADER BMP_file_header;
	BMP_file_header.bfType 				= 	buffer[0] + (buffer[1] << 8);
	BMP_file_header.bfSize 				= 	BMP_get_LE_bytes_from_buffer (buffer, 2);
	BMP_file_header.bfReserved1 	= 	buffer[6] + (buffer[7] << 8);
	BMP_file_header.bfReserved2 	= 	buffer[8] + (buffer[9] << 8);
	BMP_file_header.bfOffBits 		= 	BMP_get_LE_bytes_from_buffer (buffer, 10);

	return BMP_file_header;	
	}
	
BITMAPINFOHEADER BMP_get_info_header(uint8_t * buffer)
	{
	BITMAPINFOHEADER BMP_info_header;

	BMP_info_header.biSize						=		BMP_get_LE_bytes_from_buffer (buffer, 14); 
	BMP_info_header.biWidth						=		BMP_get_LE_bytes_from_buffer (buffer, 18); 
	BMP_info_header.biHeight					=		BMP_get_LE_bytes_from_buffer (buffer, 22); 
	BMP_info_header.biPlanes					=		buffer[26] + (buffer[27] << 8);
	BMP_info_header.biBitCount				=		buffer[28] + (buffer[29] << 8);
	BMP_info_header.biCompression			=		BMP_get_LE_bytes_from_buffer (buffer, 30); 
	BMP_info_header.biSizeImage				=		BMP_get_LE_bytes_from_buffer (buffer, 34); 
	BMP_info_header.biXPelsPerMeter		=		BMP_get_LE_bytes_from_buffer (buffer, 38); 
	BMP_info_header.biYPelsPerMeter		=		BMP_get_LE_bytes_from_buffer (buffer, 42); 
	BMP_info_header.biClrUsed					=		BMP_get_LE_bytes_from_buffer (buffer, 46); 
	BMP_info_header.biClrImportant		=		BMP_get_LE_bytes_from_buffer (buffer, 50); 
	return BMP_info_header;
	}	
