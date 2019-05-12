#ifndef		REX3SP_H_
#define		REX3SP_H_

//-------------REX3SP commands-----------------
//Set USART Port:			AT+SETUART=xx-x 
#define		REX3SP_SETUART						"AT+SETUART="				
//Configure the PANID to distinguish different ZigBee network in the same area, 4 byte arg. AT+SETPID=xxxxxxxx 
#define		REX3SP_SETPID							"AT+SETPID="	
//Configure the communication channel.16 channels 2405MHz ~ 2480MHz, range 0x0B ~ 0x1A :  AT+SETCH=xx 
#define		REX3SP_SETCH							"AT+SETCH="					
//Configure antenna selection
#define		REX3SP_SETANT							"AT+SETANT="				//AT+SETANT=xx 
//Set the transmitting power, in dBm.for REX3SP -03 dbm
#define		REX3SP_SETPOWER						"AT+SETPWR="				//AT+SETPWR=xx 
#define		REX3SP_SETPWRMODE					"AT+SETPWRMODE="		//AT+SETPWRMODE=xxxx 
#define		REX3SP_GETINFO						"AT+GETINFO" 				//return module parameters
#define		REX3SP_RESET							"AT+RESET" 					//reset module
#define		REX3SP_VERSION						"AT+VER"						//returns firmware version
// View the MAC address. 4 last bytes are used in packet for module id
#define		REX3SP_SHOWADDR 					"AT+SHOWADDR" 
//Restore factory settings of each parameter (token).
#define		REX3SP_RTOKEN							"AT+RTOKEN" 
//Set time defined by the user.7 bytes, in HEX format, which stands for Year, Month, Day, Hour, Minute,
//Second, Weekday, respectively. If this command is executed for COO, the time information will
//automatically broadcast to all the other nodes in the network.
#define		REX3SP_SETTIME						"AT+TIME="					//AT+TIME=xxxxxxxxxxxxxx
//View the current time information. Front 7 bytes stand for Year, Month, Day, Hour,
//Minute, Second, Weekday, respectively; the last for time status.
//0x00= Uninitialized time; 0x01=Reserve; 0x02=Network time; 0x03=Local time
#define		REX3SP_SHOWTIME						"AT+SHOWTIME" 
//Set time gap between two USART frames, in ms.
#define		REX3SP_UARTGAP						"AT+UARTGAP="				//AT+UARTGAP=xx 
#define		REX3SP_UARTRVS						"AT+UARTRVS="				//AT+UARTRVS=xx 
//Scan the availability of the designated communication channel.
// 2 bytes, in HEX format. Each bit stands for the channel to be scanned. ZigBee in 2.4GHz
//supports 16 channels in total, corresponding to 2405-2480MHz respectively, 5MHz for each
//channel. Bit0 stands for Channel 11, Bit1 stands for Channel 12, by parity of reasoning, Bit15
//stands for Channel 26. Channels with bit as ‘1’ (in binary) are these to be scanned.
#define		REX3SP_SCAN								"AT+SCAN" 
//Set the module enter sleep mode.
//Description: This command works for ZED and HHU only. Please note ZED will automatically
//enter sleep mode with a sleeping period of 15 seconds, so users do not need to send this
//command to ZED purposefully
#define		REX3SP_SLEEP							"AT+SLEEP"
//Wake the module up from sleep mode.
#define		REX3SP_WAKEUP							"AT+WAKEUP"
//View COO MAC address.
//All the devices except COO support this command. Before a node joins a ZigBee
//etwork, its default COO MAC address is 0x00000000 (4 byte high address omitted). After the
//node joins the ZigBee network, users can get the COO MAC address through this command.
//Note: the previous COO MAC address will stay with the node even if the node is excluded from
//the previous ZigBee network. The previous COO MAC address of the node will not be updated
//until it joins a new ZigBee network with a new COO
#define		REX3SP_VIEWCOOMAC					"AT+CHOSENCOO"
#define		REX3SP_SETCOOMAC					"AT+CHOSENCOO="									//AT+CHOSENCOO=xxxxxxxx 
//Refresh the network structure.
//The command works for COO only. After the command is executed, COO will send
//a broadcast to refresh the network structure in 1 second. Data sending and receiving is not
//recommended in 3-5 seconds as the network will be very busy due to the broadcast sent by COO.
#define		REX3SP_MTO								"AT+MTO"


#define		UART_1200 								"03"
#define		UART_2400 								"04"
#define		UART_4800 								"05"
#define		UART_9600 								"06"
#define		UART_14400 								"07"
#define		UART_19200 								"08"
#define		UART_28800 								"09"
#define		UART_38400 								"0A"
#define		UART_50000 								"0B"
#define		UART_57600 								"0C"
#define		UART_76800 								"0D"
#define		UART_100000 							"0E"
#define		UART_115200 							"0F"
#define		UART_230400 							"10"

#define		UART_PARITY_ODD						"O"
#define		UART_PARITY_EVEN					"E"
#define		UART_PARITY_NO						"N"

#define		CHANNEL_2405MHz						"0B"
#define		CHANNEL_2410MHz						"0C"
#define		CHANNEL_2415MHz						"0D"
#define		CHANNEL_2420MHz						"0E"
#define		CHANNEL_2425MHz						"0F"
#define		CHANNEL_2430MHz						"10"
#define		CHANNEL_2435MHz						"11"
#define		CHANNEL_2440MHz						"12"
#define		CHANNEL_2445MHz						"13"
#define		CHANNEL_2450MHz						"14"
#define		CHANNEL_2455MHz						"15"
#define		CHANNEL_2460MHz						"16"
#define		CHANNEL_2465MHz						"17"
#define		CHANNEL_2470MHz						"18"
#define		CHANNEL_2475MHz						"19"
#define		CHANNEL_2480MHz						"1A"

#define		INT_ANTENNA								"00"
#define		EXT_ANTENNA								"01"

#define		ENCHANCED_PWR							"-03"
#define		STANDARD_PWR							"+07"

//----------------variables-------------------
extern char	frame_header[] = {
			0x2A,														//header
			0x28,														//length, by default 0x28 : 0x23 service bytes + 0x05 data bytes 
			0x41, 0x88,											//frame control
			0x00,0x00,0x00,0x00,0x00,0x00,	//reserved 6 bytes
			0x00,0x00,0x00,0x00,						//source address, last 4 bytes of source MAC
			0x00,0x00,0x00,0x00,						//reserved 4 bytes
			0xFF,0xFF,0xFF,0xFF,						//target address, last 4 bytes of target MAC, by default broadcast
			0x00,0x00,0x00,0x00,0x00,0x00,	//reserved	6 bytes
			0x18,														//node type, by default router
			0x25,														//ID, by default write
			0x00,0x00,											//reserved 2 bytes
			0x00,0x00,											//write/read index
			0x00,														//write/read sub	
			0x00,														//write/read opt
			0x05														//write/read data length, by default 5 bytes
			};
extern char frame_data[128];
extern char	frame_footer[]	=	{
			0x00,														//check
			0x23														//footer
			};


#endif		//REX3SP_H_
