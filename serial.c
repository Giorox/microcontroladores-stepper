//serial.c
#include "serial.h"

void setupSerial(const unsigned long clock)
{
	SSPADD = (4000000/(4*clock))-1; // velocidade de amostragem 
    SSPCON = 0b00101000;     		
	// primeiros  4 bits é do modo mestre de I2c,
	// 6º bit é SSPEN que habilita a linha scl e sda

    SSPSTAT = 0; 
    TRISCbits.TRISC3 = 1;
    TRISCbits.TRISC4 = 1;			// definindo como entrada
}

void serialWait(void)
{
	while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
}

void serialStart(void)
{
	serialWait();
    SSPCON2 |= 0x01; 
	// SEN=1 -> da start no sda e scl
    
	while(!PIR1bits.SSPIF);
    PIR1bits.SSPIF = 0;
}

void serialStop(void)
{
	serialWait();
    SSPCON2 |= 0x04; 
	// PEN=1 -> pausa a operação de SDA e SCL 
}

void serialWrite(uint8_t data)
{
	serialWait();
    SSPBUF = data;  
	// Manda a infromação para o registrador SSPBUF (buffer)
}
