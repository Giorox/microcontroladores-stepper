//serial.h
#include <xc.h>
#include <stdint.h>

#define SLAVE_ADDRESS_LCD 0x4E // definindo o endereço do escravo

// Inicializa as configurações como MESTRE e habilita
// os barramentos SDA e SCL
void setupSerial(const unsigned long clock);

// Espera a transmissão de dados acabar
void serialWait(void);

// Habilita o transporte de dados
void serialStart(void);

// Para a transmissão de dados
void serialStop(void);

// Enviar um dado
void serialWrite(uint8_t data);


