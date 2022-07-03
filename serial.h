//serial.h
#include <xc.h>
#include <stdint.h>

#define SLAVE_ADDRESS_LCD 0x4E // definindo o endere�o do escravo

// Inicializa as configura��es como MESTRE e habilita
// os barramentos SDA e SCL
void setupSerial(const unsigned long clock);

// Espera a transmiss�o de dados acabar
void serialWait(void);

// Habilita o transporte de dados
void serialStart(void);

// Para a transmiss�o de dados
void serialStop(void);

// Enviar um dado
void serialWrite(uint8_t data);


