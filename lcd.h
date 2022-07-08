//lcd.h
#include <xc.h>
#include <stdint.h>

// Inicializa o display LCD
void setupDisplay(void);

// Limpa o display LCD
void clearDisplay(void);

// Escreve um único caractere no display LCD
void sendChar(char ch);

// Escolhe posição do cursor no LCD
void setCursor(uint8_t linha, uint8_t coluna);

