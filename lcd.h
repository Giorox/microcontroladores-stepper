//lcd.h
#include <xc.h>
#include <stdint.h>

// Inicializa o display LCD
void setupDisplay(void);

// Limpa o display LCD
void clearDisplay(void);

// Escreve um �nico caractere no display LCD
// equivalente a sendChar() como especificado no requisito
// nome trocado para n�o dar problema de "reimplementa��o"
void sendCharToLCD(char ch);

// Escolhe posi��o do cursor no LCD
void setCursor(uint8_t linha, uint8_t coluna);

// Fun��o para enviar algum comando para o LCD
void sendCommand(char cmd);

