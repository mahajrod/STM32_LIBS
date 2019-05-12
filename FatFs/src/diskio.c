/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2012        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control module to the FatFs module with a defined API.        */
/*-----------------------------------------------------------------------*/
#include 		"SDcard.h"
#include 		"diskio.h"		/* FatFs lower layer API */
//#include "usbdisk.h"	/* Example: USB drive control */
//#include "atadrive.h"	/* Example: ATA drive control */

/* Definitions of physical drive number for each media */
#define SD		0
//#define ATA		1
//#define USB		2

/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
	BYTE drv				/* Physical drive nmuber (0..) */
	)
	{
	DSTATUS stat;
	int result;

	switch (drv) 
		{
		case SD :
		result = SD_init();
		stat = 0x00;//&= ~STA_NOINIT;		/* Clear STA_NOINIT */
		// translate the reslut code here
		return stat;
		}
		
	return STA_NOINIT;
	}

/*-----------------------------------------------------------------------*/
/* Get Disk Status                                                       */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
	BYTE drv		/* Physical drive nmuber (0..) */
)
	{
	DSTATUS stat;
//	int result;

	switch (drv) 
		{
		case SD :
			
		if (drv) return STA_NOINIT;		/* Supports only single drive */
		return stat;
		
		}
	return STA_NOINIT;
	}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
	BYTE drv,		/* Physical drive nmuber (0..) */
	BYTE *buff,		/* Data buffer to store read data */
	DWORD sector,	/* Sector address (LBA) */
	BYTE count		/* Number of sectors to read (1..128) */
)
{
	DRESULT res;
	int result;

	switch (drv) 
		{
		case SD :
		// translate the arguments here
		result = (int)SD_ReadMultipleSector(sector,count,buff);
		// translate the reslut code here
		return res;
		}
		
	return RES_PARERR;
	}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if _USE_WRITE
DRESULT disk_write (
	BYTE drv,			/* Physical drive nmuber (0..) */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Sector address (LBA) */
	BYTE count			/* Number of sectors to write (1..128) */
)
{
	DRESULT res;
	int result;

	switch (drv) 
		{
		case SD :
		// translate the arguments here
		result = SD_WriteMultipleSector(sector,count,(uint8_t *) buff);
		// translate the reslut code here
		return res;
		}
		
	return RES_PARERR;
	}
#endif


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

#if _USE_IOCTL
DRESULT disk_ioctl (
	BYTE drv,		// Physical drive nmuber (0..) 
	BYTE ctrl,		// Control code 
	void *buff		// Buffer to send/receive control data 
)
	{
	DRESULT res;
	int result;

	switch (drv) 
		{
		case SD :
		// pre-process here
		//result = MMC_disk_ioctl(ctrl, buff);
		// post-process here
		return res;
		}
	return RES_PARERR;
	}
#endif
