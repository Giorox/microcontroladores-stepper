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
	// Bit RW is wired to GND in EasyPICV6
	TRISB = 0x00; // Configura o PORTB inteiro como sa�da
	PORTB = 0x00; // Zera os dados na sa�da do PORTB

	// Configura��o dos pinos do motor de passo
	// Configura todos os pinos como sa�da, usar TRISA-PORTA ou TRISD-PORTD
	TRISD = 0x00;
	PORTD = 0x00;
    
	// Fun��es de inicializa��o
    setupSerial(9600); // Configura a comunica��o serial
	setupDisplay(); // Inicializa o display LCD 16x2
	setupStepper();// Inicializa o stepper do motor

	while(1)
	{
		// Implementar a integra��o entre as pe�as
		// Menu de op��es? -- Settar posi��o desejada, escolher velocidade, resettar
		// Interagir via SERIAL aqui
		// Atualizar o LCD quando necess�rio (pensar o que vai onde)
	}
}