
#ifndef FONT_H_
#define FONT_H_

#define	FONT_FIXEDWIDTH	0x01
#define	FONT_PACKEDDATA	0x02

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

#define	MAKECHARDESCRIPTOR(width) ((const FONT_CHAR_INFO *)(width))

extern const FONT_INFO font5x8pxFontInfo;
extern const FONT_INFO ubuntu10ptFontInfo;
extern const FONT_INFO ubuntu10ptBoldFontInfo;
extern const FONT_INFO verdana10ptFontInfo;

#endif /* FONT_H_ */
