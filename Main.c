// Bibliotecas padrão
#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Headers proprietários
#include "lcd.h"
#include "serial.h"
#include "stepper.h"

// CONFIG
#pragma config FOSC = INTRC_NOCLKOUT	// 4MHz 
#pragma config WDTE = OFF  // Watchdog Timer Enable
#pragma config PWRTE = OFF  // Power-up Timer Enable
#pragma config MCLRE = ON  // RE3/MICLR pin function select -- Set to MCLR
#pragma config CP = OFF  // Code Protection
#pragma config CPD = OFF  // Data Code Protection
#pragma config BOREN = ON  // Brown-out Reset Selection
#pragma config IESO = ON  // Internal External Switchover bit
#pragma config FCMEN = ON  // Fail-Safe Clock Monitor Enable
#pragma config LVP = OFF  // Low Voltage Programming Enable -- RB3 is digital, HV on MCLR must be used for programming

// CONFIG
#pragma config BOR4V = BOR40V // Brown-out reset selection -- set to 2.1V
#pragma config WRT = OFF  // Flash Program Memory Self Write Enable -- protection disabled

#define _XTAL_FREQ 4000000  // Pass FOSC value to XC8 compiler to enable use of built-in delay functions

char* input;
char ch;

int main (void)
{
	// Habilita a configuração de pinos analógicos como entradas digitais
	ANSELH=0x00;

	// Configuração dos pinos para comunicação serial
	// Configura o pino 6 como saída (TX) e o pino 7 como entrada (RX)
	TRISCbits.TRISC6 = 0;
	TRISCbits.TRISC7 = 1;

	// Configuração dos pinos para lidar com LCD
	// Bit RW is wired to GND in EasyPICV6
	TRISB = 0x00; // Configura o PORTB inteiro como saída
	PORTB = 0x00; // Zera os dados na saída do PORTB

	// Configuração dos pinos do motor de passo
	// Configura todos os pinos como saída, usar TRISA-PORTA ou TRISD-PORTD
	TRISD = 0x00;
	PORTD = 0x00;
    
	// Funções de inicialização
    setupSerial(2400); // Configura a comunicação serial
	setupDisplay(); // Inicializa o display LCD 16x2
	setupStepper();// Inicializa o stepper do motor

	clearDisplay();
	printLine("PA: ___  PD: ___");
	setCursor(1,0); // Linha 2, posição horizontal 0
	printLine("Vel: ___ RPM");
	
	setPosicaoDesejada(180);
	//rotacionarParaDireita();
	
	while(1)
	{
		// Pega posição atual
		uint16_t posAtual = getPosicaoAtual();
		uint16_t posDesejada = getPosicaoDesejada();
		
		// Converte int para str
		char posAtual_str[10];
		sprintf(posAtual_str, "%d", posAtual);
		char posDesejada_str[10];
		sprintf(posDesejada_str, "%d", posDesejada);
		
		// Printa posição atual
		setCursor(0,4);
		printLine(posAtual_str);
		
		// Printa Posição desejada
		setCursor(0,13);
		printLine(posDesejada_str);
		
		// Printa Velocidade
		setCursor(1,5);
		printLine("200");
		
		// Entrada de dados pelo serial
		ch = getChar();
		if(ch == 0x0D) // Aguarda pelo enter
		{
			clearDisplay();
			setCursor(0,0);
			printLine(input);
			input = NULL;
		}
		else
		{
			//input = input + ch;
    		strcat(input, ch);
    		printLine(input);
		}
	}
}