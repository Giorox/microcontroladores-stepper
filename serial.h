//serial.h
#include <xc.h>
#include <stdint.h>

// Inicializa e configura a comunicação serial assíncrona (UART)
void setupSerial(uint16_t baudrate);

// Retonar um caractere vindo pela comunicação serial (RX)
char getChar(void);

// Envia um caractere através da comunicação serial (TX)
void sendChar(char ch);

// Envia uma string pro serial
void sendLineSerial(unsigned char *s);