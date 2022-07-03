// stepper.c 
#include "stepper.h"
#include "lcd.h"

#define _XTAL_FREQ 4000000

uint32_t contador;
uint32_t velocidade;
uint16_t posicaoAtual;
uint16_t posicaoDesejada;

uint32_t i;
uint32_t j;
uint32_t p;

void setupStepper(void)
{
	// Configura os valores iniciais dos pinos do motor de passo
	i = 0;
	j = 0;
	p = 0;

	// Configura as variáveis de controle de velocidade
	contador = 0;
	velocidade = 50;

	// Setta valor inicial do controle de posição
	posicaoAtual = 0;
	posicaoDesejada = 0;
}

void setPosicaoAtual(uint16_t posicao_atual)
{
	posicaoAtual = posicao_atual;
}

uint16_t getPosicaoAtual(void)
{
	return posicaoAtual;
}

void setPosicaoDesejada(uint16_t posicao_desejada)
{
	posicaoDesejada = posicao_desejada;
}

void veloc(void)
{

	if(contador < 3)
	{
		contador = contador+1;	
		velocidade = velocidade+50;
	}
	else if(contador == 3)
	{
		contador = 0;
		velocidade = 50;
	}

	displaySendCmd(0xCD); // apresenta a velocidade
	displaySendData(0x30+contador+1);
}

void sentido_horario_wave_step(uint32_t  g, uint32_t  x)
{
	// Cada ciclo tem 4 steps do motor que é igual
	// a (0,35 graus). p = numero de ciclos = Graus/0.35

	char move_horario[4] = {0b00001100,0b00000110,0b00000011, 0b00001001};

    p = (int)((g*140)/100);
	
	for (i = 0; i < p; i++)
	{
		PORTD=move_horario[0];
	 	for (j = 0; j < x; j++)
			__delay_us(1);

		PORTD=move_horario[1];
	 	for (j = 0; j < x; j++)
			__delay_us(1);
	
		PORTD=move_horario[2];
		for (j = 0; j < x; j++)
			__delay_us(1);

		PORTD=move_horario[3];
		for (j = 0; j < x; j++)
			__delay_us(1);
	}
	
	PORTD=0x00;
}

void sentido_anti_horario_wave_step(uint32_t  g, uint32_t  x)
{
	// Cada ciclo tem 4 steps do motor que é igual 
	// a (0,35 graus). p = numero de ciclos = Graus/0.35

	char move_anti_horario[4] = {0b00001001,0b00000011,0b00000110,0b00001100};

 	p = (int)((g*140)/100);

	for (i = 0; i < p; i++)
	{
		PORTD=move_anti_horario[0];
		for (j = 0; j < x; j++)
			__delay_us(1);

		PORTD=move_anti_horario[1];
		for (j = 0; j < x; j++)
			__delay_us(1);

		PORTD=move_anti_horario[2];
		for (j = 0; j < x; j++)
			__delay_us(1);

		PORTD=move_anti_horario[3];
		for (j = 0; j < x; j++)
			__delay_us(1);
	}
		
	PORTD=0x00;
}



