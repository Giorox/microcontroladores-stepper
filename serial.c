//serial.c
#include "serial.h"

void setupSerial(uint16_t baudrate)
{
	unsigned long FOSC = 4000000;
	TXSTAbits.BRGH = 0; //BRGH=0, TXEN = 1, SYNC=0, 8-bit mode, Asynchronous Mode
	TXSTAbits.SYNC = 0;
	TXSTAbits.TXEN = 1;
    RCSTA = 0b10010000; //Serial Port enabled,8-bit reception
    BAUDCTLbits.BRG16 = 0; // BRG16 = 0

	// Solve for baudrate considering FOSC = 4MHz	
    SPBRG = ((FOSC/baudrate)/64) - 1;
    
	TXIF=RCIF=0; // Set TX and RX buffers to 0
}

void sendChar(char ch)
{
    TXREG = ch; // Set char value to the transmit buffer
    while(!TXIF); // Wait until the transmit interruption is set
    TXIF = 0; // Reset the interruption and finish
}

char getChar()
{
    while(!RCIF);  // Wait until the receive interruption is set
    RCIF = 0;  // Reset the interruption
    return RCREG;  // Return the value contained in the receive buffer
}

void sendLineSerial(unsigned char *s)
{
    while(*s) {
        sendChar(*s++);
    }
}