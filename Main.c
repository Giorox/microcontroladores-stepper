// Bibliotecas padr�o
#include <xc.h>
#include <stdint.h>
#include <stdio.h>

// Headers propriet�rios
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

int main (void)
{
	// Habilita a configura��o de pinos anal�gicos como entradas digitais
	//ANSELH=0x00;

	// Configura��o dos pinos para comunica��o serial
	// Configura o pino 6 como sa�da (TX) e o pino 7 como entrada (RX)
	TRISCbits.TRISC6 = 0;
	TRISCbits.TRISC7 = 1;

	// Configura��o dos pinos para lidar com LCD
	// Zera todos os pinos de dados, os pinos de RS, RW e EN
	TRISB = 0; // Data
	TRISCbits.TRISC0 = 0; // Pino de Register Select - RS
	TRISCbits.TRISC1 = 0; // Pino de Read/Write - RW
	TRISCbits.TRISC2 = 0; // Pino de Enable - EN
    
	// Fun��es de inicializa��o
    setupSerial(9600); // Configura a comunica��o serial
	setupDisplay(); // Inicializa o display LCD 16x2

	sendChar('a'); // Transmission test
	setCursor(0, 11); // Test set cursor position to line 1, column 11 (B in hex)
}