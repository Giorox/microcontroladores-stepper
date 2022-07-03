//lcd.c
#include "lcd.h"
#include "serial.h"

void setupDisplay(void)
{
	displaySendCmd(0x02);
	displaySendCmd(0x28);
	displaySendCmd(0x0c);
	displaySendCmd(0x80);
}

void displaySendString(const char *str)
{
	while (*str) displaySendData(*str++);
}

void displaySendCmd(unsigned char data)
{
	unsigned char data_l, data_u;
	data_l = (data<<4)&0xf0;  //seleciona o nibble inferior
	data_u = data&0xf0;  //seleciona o nibble superior
 
	serialStart();
	serialWrite(SLAVE_ADDRESS_LCD);
	serialWrite(data_u|0x0C);  //enable=1 and rs =0
	serialWrite(data_u|0x08);  //enable=0 and rs =0
 
	serialWrite(data_l|0x0C);  //enable =1 and rs =0
	serialWrite(data_l|0x08);  //enable=0 and rs =0
 
	serialStop();
}

void displaySendData(unsigned char data)
{
	unsigned char data_l, data_u;
	data_l = (data<<4)&0xf0;  	//seleciona o nibble inferior
	data_u = data&0xf0;  		//seleciona o nibble superior
 
	serialStart();
	serialWrite(SLAVE_ADDRESS_LCD);
	serialWrite(data_u|0x0D);  //enable=1 and rs=1
	serialWrite(data_u|0x09);  //enable=0 and rs=1
 
	serialWrite(data_l|0x0D);  //enable=1 and rs=1
	serialWrite(data_l|0x09);  //enable=0 and rs=1
 
	serialStop();
}

void clearDisplay(void)
{
	displaySendCmd(0x01);
}