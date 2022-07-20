//serial.h
#include <xc.h>
#include <stdint.h>

// Inicializa e configura a comunica��o serial ass�ncrona (UART)
void setupSerial(uint16_t baudrate);

// Retonar um caractere vindo pela comunica��o serial (RX)
char getChar(void);

// Envia um caractere atrav�s da comunica��o serial (TX)
void sendChar(char ch);

// Envia uma string pro serial
void sendLineSerial(unsigned char *s);