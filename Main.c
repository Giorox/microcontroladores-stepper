// Bibliotecas padrão
#include <xc.h>
#include <stdint.h>
#include <stdio.h>

// Headers proprietários
#include "lcd.h"
#include "serial.h"
#include "stepper.h"

// CONFIG
#pragma config FOSC = INTRC_NOCLKOUT	// 4MHz 
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config CPD = OFF
#pragma config BOREN = ON
#pragma config IESO = ON
#pragma config FCMEN = ON
#pragma config LVP = OFF

// CONFIG
#pragma config BOR4V = BOR40V 
#pragma config WRT = OFF

#define _XTAL_FREQ 4000000

// Declaração de variáveis
uint32_t valor = 0;
uint32_t div = 0;
uint32_t valor_anterior = 0;
uint32_t delta = 0;
uint32_t angulo = 0;
uint32_t velocidade = 50;
uint32_t contador = 0;
uint32_t angulo_atual = 0;

uint8_t ang1 = 0;
uint8_t ang2 = 0;
uint8_t ang3 = 0;
uint8_t p1 = 0;
uint8_t p2 = 0;
uint8_t p3 = 0;
uint8_t nibblesup = 0;
uint8_t nibbleinf = 0;

// Motor de passo
uint32_t i;
uint32_t j;
uint32_t p; 

// Funções
void apresenta(void);
void calculaDelta(char polaridade);

int main (void)
{
	// Configura o pino 2 do PORTB como entrada
	TRISBbits.TRISB2 = 1;

	// Habilita a configuração de pinos analógicos como entradas digitais
	ANSELH=0x00;

	// Configura o pino 2 do PORTA como entrada
	TRISAbits.TRISA2 = 1;

	// Configura o pino 0, 1, 2 e 3 do PORTD como saída
	TRISDbits.TRISD0 = 0;
	TRISDbits.TRISD1 = 0;
	TRISDbits.TRISD2 = 0;
	TRISDbits.TRISD3 = 0;
	ANSELbits.ANS2 = 1; 		// define RA2 como entrada analógica

	// Zera a entrada do bit 2 do PORTB e dos bits 0, 1, 2 e 3 do PORTD
    PORTBbits.RB2 = 0; // O RB2 será a entrada que determina a velocidade! 
 	PORTDbits.RD0 = 0;
    PORTDbits.RD1 = 0;
    PORTDbits.RD2 = 0;
    PORTDbits.RD3 = 0;
    
	// Funções de inicialização
	setupStepper(); // Configura o motor de passo
    setupSerial(100000); // Configura a comunicação serial
    setupDisplay(); // Configura o display LCD
    
	displaySendCmd(0xC0); //
	__delay_ms(5000);

	clearDisplay();
	
	// Configuração do conversor analógico-digital
	nibblesup = 0;
    nibbleinf = 0;
	ADCON0 = 0x49;		// Fosc/8 e Channel 2
	ADCON1 = 0x80;		// Referência interna da tensão e justifica pra direita
	ADRESH = 0x00;
	ADRESL = 0x00;
	
	PIR1 &= ~(1<<6);	// Limpa a flag que solicita interrupção

	// Delay para cumprir o requisito que o bit GO/DONE
	// não deve ser settado no mesmo ciclo de instrução de configuração
	__delay_us(20);
	ADCON0 |= (1<<1);	// Setta o bit GO/DONE
	
	// Informação básica na tela do LCD
	displaySendCmd(0x80);
	displaySendString("P");
	displaySendCmd(0x80);
	displaySendString("Posicao: ");	// apresenta a posição
	displaySendCmd(0xC0);
	displaySendString("Ang: ");		// apresenta o angulo
	displaySendCmd(0xC9);
	displaySendString("Vel: ");
		
    while (1)
	{

		__delay_us(500);
	
		//seletor de velocidade !!
		if(PORTBbits.RB2){	
			
			veloc();
			while(PORTBbits.RB2){}
		}
		
		// Peripheral Interupt Request Register 1 (PIR1)
		// A/D Converter Interrupt Flag bit (ADIF)
		// Verifica se a flag de interrupção do conversor AD ta settada
		if(PIR1bits.ADIF)
		{
			// Captura o valor convertido e separa os nibbles
			nibblesup = ADRESH;
			nibbleinf = ADRESL;
		
			// Reconstroi o valor, guarda na variável valor e faz o
			// type-cast pra int32
			valor = (nibblesup<<8) + nibbleinf;
			valor = (int)(360*valor/1023);
			
			char polaridade = '+'; // Guarda o sentido de rotação -- +(horario) ou -(antihorario)
			if(valor>valor_anterior) // sentido horario
			{
				delta = valor - valor_anterior;
				polaridade = '+';
			}
			else if(valor<valor_anterior) // sentido anti-horario
			{
				delta = valor_anterior - valor ;
				polaridade = '-';
			}

			// Função para fazer os cálcuos de variação de angulo
			calculaDelta(polaridade);
		
			// Salva o valor, reseta o bit de interrupção e o bit de GO//DONE
			valor_anterior=valor;
			PIR1bits.ADIF = 0;
			ADCON0 |= (1<<1);
		}
	}
}

void apresenta(void)
{
	// Apresenta posição atual do motor
	displaySendCmd(0x89);
	displaySendData(0x30+p1);
	displaySendData(0x30+p2);
	displaySendData(0x30+p3);
	
	// Apresenta ângulo de entrada do potenciômetro
	displaySendCmd(0xC5);
	displaySendData(0x30+ang1);
	displaySendData(0x30+ang2);
	displaySendData(0x30+ang3);

	// Apresenta a velocidade
	displaySendCmd(0xCD); 
	displaySendData(0x30+contador+1);  
}

void calculaDelta(char polaridade)
{
	angulo=delta;

	// Verifica o sentido de rotação
	if(polaridade == '-')
	{
		angulo_atual = (angulo_atual - angulo);// posição do motor -- delta negativo
	}
	else if(polaridade == '+')
	{
		angulo_atual = angulo_atual + angulo;// posição do motor -- delta positivo
	}

	// Calculo do angulo de entrada para a mostrar no display potenciometro
	//div = (int)(360.0*valor/1023.0); 
	div=valor;
	if(div>99){ // valor da entrada
		ang1=(int)(div/100);
		ang2=(int)((div - ang1*100)/10);
		ang3=(int)(div - ang1*100 - ang2*10);
	}
	else if(div<100 & div>9) {
		ang1=0;
		ang2=(int)(div/10);
		ang3=(int)(div-(ang2*10));
	} 
	else if(div<10){
		ang1=0;
		ang2=0;
		ang3=(div);
	}
	
	if(angulo_atual>99){ // valor posição motor
		p1=(int)(angulo_atual/100);
		p2=(int)((angulo_atual - p1*100)/10);
		p3=(int)(angulo_atual - p1*100 - p2*10);
	}
	else if(angulo_atual<100 & angulo_atual>9) {
		p1=0;
		p2=(int)(angulo_atual/10);
		p3=(int)(angulo_atual-p2*10);
	} 
	else if(angulo_atual<10){
		p1=0;
		p2=0;
		p3=(angulo_atual);
	}
	
	// Verifica polaridade novamente para executar rotação
	if(polaridade == '-')
	{
		sentido_anti_horario_wave_step(angulo,velocidade); // delta negativo
	}
	else if(polaridade == '+')
	{
		sentido_horario_wave_step(angulo,velocidade); // delta positivo
	}

	apresenta();
}
