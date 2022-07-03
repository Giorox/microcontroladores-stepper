//lcd.h
#include <xc.h>
#include <stdint.h>

// Inicializa o display LCD
void setupDisplay(void);

// Escreve uma string no display LCD
void displaySendString(const char *str);

// Manda um comando para o display LCD
// como por exemplo, mudar o cursor...
void displaySendCmd(unsigned char data);

// Escreve um único caractere no display LCD
void displaySendData(unsigned char data);

// Limpa o display LCD
void clearDisplay(void);
