// stepper.c
#include "stepper.h"
#define _XTAL_FREQ 4000000  // Pass FOSC value to XC8 compiler to enable use of built-in delay functions

uint16_t posicaoAtual;
uint16_t velocidade;
uint16_t delayTime;
uint16_t posicaoDesejada;	


void setupStepper(void)
{
	posicaoAtual = 0;
    setVelocidade(1);
	posicaoDesejada = 0;
	
}

void setPosicaoAtual(uint16_t posicao_atual)
{
	posicaoAtual = posicao_atual;
}

void setVelocidade(uint16_t speed)
{
	velocidade = speed;
	delayTime = 240/speed;
}

uint16_t getVelocidade()
{
	return velocidade;
}

uint16_t getPosicaoAtual(void)
{
	return posicaoAtual;
}

void setPosicaoDesejada(uint16_t posicao_desejada)
{
	posicaoDesejada = posicao_desejada;
}

void rotacionarParaDireita()
{
	float anguloCiclo = 4 * 0.18;
	uint16_t ciclos = (int)(posicaoDesejada - posicaoAtual)/anguloCiclo;
	uint16_t i;
	uint16_t j;
	char fullStep[4] = {0b00001100,0b00000110,0b00000011, 0b00001001};
	for(i = 0; i < ciclos; i++){
		for(j = 0; j<4;j++){
			PORTD = fullStep[j]
			__delay_us(delayTime);
		}
	}
	PORTD = 0x00;
	setPosicaoAtual(posicaoDesejada);
}
void rotacionarParaEsquerda()
{
	float anguloCiclo = 4 * 0.18;
	uint16_t ciclos = (int)((posicaoAtual + 360) - posicaoDesejada )/anguloCiclo;
	uint16_t i;
	uint16_t j;
	char fullStep[4] = {0b00001100,0b00000110,0b00000011, 0b00001001};
	for(i = 0; i < ciclos; i++){
		for(j = 3; j>=0;j--){
			PORTD = fullStep[j]
			__delay_us(delayTime);
		}
	}
	PORTD = 0x00;
	setPosicaoAtual(posicaoDesejada);
}