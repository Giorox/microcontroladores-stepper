//stepper.h
#include <xc.h>
#include <stdint.h>

// Configura o motor de passo
void setupStepper(void);

// Setta posição atual
void setPosicaoAtual(uint16_t posicao_atual);

// Retorna a posição atual
uint16_t getPosicaoAtual(void);

// Setta posição desejada
void setPosicaoDesejada(uint16_t posicao_desejada);

// Altera a velocidade do motor de passo
void veloc(void);

// Gira o motor em sentido horário
void sentido_horario_wave_step(uint32_t  g, uint32_t  x);

// Gira o motor em sentido anti-horário
void sentido_anti_horario_wave_step(uint32_t  g, uint32_t  x);





