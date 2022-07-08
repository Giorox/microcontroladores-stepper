//lcd.c
#include "lcd.h"

void setupDisplay(void)
{
	sendCommand(0x38); // Configure to 2 lines and to use 5x7 matrices
    sendCommand(0x0c);
    sendCommand(0x06);
    sendCommand(0x80);
	sendCommand(0x8A); //Set cursor to 0x8A position
}

void sendCommand(char a)
{
    PORTB = a; // Set the command to PORTB
    TRISCbits.TRISC0=0; //
    TRISCbits.TRISC1=0;
    TRISCbits.TRISC2=1;
    delay;
    TRISCbits.TRISC2=0;
}

void dat(char b)
{
    PORTB=b;
    TRISCbits.TRISC0=1;
    TRISCbits.TRISC1=0;
    TRISCbits.TRISC2=1;
    delay;
    TRISCbits.TRISC2=0;
}