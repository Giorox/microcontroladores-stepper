//lcd.h
#include <xc.h>
#include <stdint.h>

// Inicializa o display LCD
void setupDisplay(void);

// Limpa o display LCD
void clearDisplay(void);

// Escreve um �nico caractere no display LCD
void sendChar(char ch);

// Escolhe posi��o do cursor no LCD
void setCursor(uint8_t linha, uint8_t coluna);

