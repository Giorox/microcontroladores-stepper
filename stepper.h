//stepper.h
#include <xc.h>
#include <stdint.h>

// Inicializa e configura para controlar o motor de passo
void setupStepper(void);

// Setta o valor da posi��o atual do motor
void setPosicaoAtual(uint16_t posicao_atual);

// Retorna o valor da posi��o atual do motor
uint16_t getPosicaoAtual(void);

// Setta a posi��o desejada
void setPosicaoDesejada(uint16_t posicao_desejada);