//lcd.c
#include "lcd.h"
#define _XTAL_FREQ 4000000  // Pass FOSC value to XC8 compiler to enable use of built-in delay functions

void setupDisplay(void)
{
	sendCommand(0x02); //  4-bit mode
	sendCommand(0x28); // Configure to 2 lines and to use 5x7 matrices
    sendCommand(0x0E); // Display off - cursor on
    sendCommand(0x01); // Clear Display
    sendCommand(0x80); // Force cursor to beginning of first line
}

void sendCommand(char cmd)
{
    PORTB = (cmd & 0xF0)>>4;     // Send higher nibble
    PORTBbits.RB4 = 0; // RS = 0
    PORTBbits.RB5 = 1; // EN = 1
    __delay_us(50);
    PORTBbits.RB5 = 0; // EN = 0

    __delay_us(50);

    PORTB = (cmd & 0x0F); // Send Lower nibble
    PORTBbits.RB4 = 0; // RS = 0
    PORTBbits.RB5 = 1; // EN = 1
    __delay_us(50);
    PORTBbits.RB5 = 0; // EN = 0

    __delay_us(50);
}

void sendCharToLCD(char ch)
{
    PORTB = (ch & 0xF0)>>4;     // Send higher nibble
    PORTBbits.RB4 = 1; // RS = 1
    PORTBbits.RB5 = 1; // EN = 1
    __delay_us(50);
    PORTBbits.RB5 = 0; // EN = 0

    __delay_us(50);

    PORTB = (ch & 0x0F); // Send Lower nibble
    PORTBbits.RB4 = 1; // RS = 1
    PORTBbits.RB5 = 1; // EN = 1
    __delay_us(50);
    PORTBbits.RB5 = 0; // EN = 0

    __delay_us(50);
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