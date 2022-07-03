//stepper.h
#include <xc.h>
#include <stdint.h>

// Configura o motor de passo
void setupStepper(void);

// Setta posi��o atual
void setPosicaoAtual(uint16_t posicao_atual);

// Retorna a posi��o atual
uint16_t getPosicaoAtual(void);

// Setta posi��o desejada
void setPosicaoDesejada(uint16_t posicao_desejada);

// Altera a velocidade do motor de passo
void veloc(void);

// Gira o motor em sentido hor�rio
void sentido_horario_wave_step(uint32_t  g, uint32_t  x);

// Gira o motor em sentido anti-hor�rio
void sentido_anti_horario_wave_step(uint32_t  g, uint32_t  x);





