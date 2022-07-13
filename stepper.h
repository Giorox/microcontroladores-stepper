//stepper.h
#include <xc.h>
#include <stdint.h>

// Inicializa e configura para controlar o motor de passo
void setupStepper(void);

// Setta o valor da posição atual do motor
void setPosicaoAtual(uint16_t posicao_atual);

//Seta o valor da velocidade do motor
void setVelocidade(uint16_t speed);

//Retorna a velocidade do motor
uint16_t getVelocidade()

// Retorna o valor da posição atual do motor
uint16_t getPosicaoAtual(void);

// Setta a posição desejada
void setPosicaoDesejada(uint16_t posicao_desejada);

//Funçao para rotacionar o motor para direita
void rotacionarParaDireita();

//Funçao para rotacionar o motor para esquerda
void rotacionarParaEsquerda();