// stepper.c
#include "stepper.h"
#define _XTAL_FREQ 4000000  // Pass FOSC value to XC8 compiler to enable use of built-in delay functions

uint16_t posicao;
uint16_t velocidade;
uint16_t posicaoDesejada;	


void setupStepper(void)
{
	posicaoAtual = 0;
    velocidade = 50;
	posicaoDesejada = 0;
	
}

void setPosicaoAtual(uint16_t posicao_atual)
{
	posicaoAtual = posicao_atual;
}

void setVelocidade(uint16_t speed)
{
	velocidade = speed;
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
	float anguloStep = 11.25;
	uint16_t steps = (int)(posicaoDesejada - posicaoAtual)/anguloStep;
}
