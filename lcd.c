//lcd.c
#include "lcd.h"
#define _XTAL_FREQ 4000000  // Pass FOSC value to XC8 compiler to enable use of built-in delay functions

void setupDisplay(void)
{
	sendCommand(0x38); // Configure to 2 lines and to use 5x7 matrices
    sendCommand(0x0C); // Display on - cursor off
    sendCommand(0x06); // Move cursor to the right
    sendCommand(0x80); // Force cursor to beginning of first line
	sendCommand(0x8A); //Set cursor to 0x8A position
}

void sendCommand(char cmd)
{
    PORTB = cmd; // Set the command to PORTB
    TRISCbits.TRISC0 = 0; // RS = 0
    TRISCbits.TRISC1 = 0; // RW = 0
    TRISCbits.TRISC2 = 1; // EN = 1
    __delay_us(50);
    TRISCbits.TRISC2 = 0; // EN = 0
}

void sendCharToLCD(char ch)
{
    PORTB = ch; // Set character to output
    TRISCbits.TRISC0 = 1; // RS = 1
    TRISCbits.TRISC1 = 0; // RW = 0
    TRISCbits.TRISC2 = 1; // EN = 1
    __delay_us(50);
    TRISCbits.TRISC2 = 0; // EN = 0
}

void clearDisplay(void)
{
	sendCommand(0x01); // Clear LCD screen
}

void setCursor(uint8_t linha, uint8_t coluna)
{
	uint8_t position = 0x80; // Set a neutral position
	if (linha == 0) // line 1 selected
	{
		position = 0x80; // default position is beginning of line
	}
	else if (linha == 1) // line 2 selected
	{
		position = 0xC0; // default position is beginning of line
	}

	position = position + coluna;
	sendCommand(position);
}

void printLine(unsigned char *s)
{
    while(*s) {
        sendCharToLCD(*s++);
    }
}