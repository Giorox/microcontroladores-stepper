opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (Free mode) build 201711160504"

opt pagewidth 120

	opt lm

	processor	16F887
opt include "C:\Program Files (x86)\Microchip\xc8\v1.45\include\16f887.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INDF equ 00h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCL equ 02h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
FSR equ 04h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTA equ 05h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTB equ 06h ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTC equ 07h ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTD equ 08h ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTE equ 09h ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCLATH equ 0Ah ;# 
# 459 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INTCON equ 0Bh ;# 
# 537 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR1 equ 0Ch ;# 
# 593 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR2 equ 0Dh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1 equ 0Eh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1L equ 0Eh ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1H equ 0Fh ;# 
# 671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T1CON equ 010h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR2 equ 011h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T2CON equ 012h ;# 
# 843 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPBUF equ 013h ;# 
# 850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON equ 014h ;# 
# 920 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1 equ 015h ;# 
# 927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1L equ 015h ;# 
# 934 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1H equ 016h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP1CON equ 017h ;# 
# 1038 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCSTA equ 018h ;# 
# 1133 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXREG equ 019h ;# 
# 1140 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCREG equ 01Ah ;# 
# 1147 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1238 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISA equ 085h ;# 
# 1478 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISB equ 086h ;# 
# 1540 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISC equ 087h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISD equ 088h ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISE equ 089h ;# 
# 1702 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1815 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCON equ 08Eh ;# 
# 1862 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2041 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PR2 equ 092h ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPADD equ 093h ;# 
# 2055 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPMSK equ 093h ;# 
# 2060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
MSK equ 093h ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WPUB equ 095h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
IOCB equ 096h ;# 
# 2486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
VRCON equ 097h ;# 
# 2556 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXSTA equ 098h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRG equ 099h ;# 
# 2704 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2774 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2844 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2977 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WDTCON equ 0105h ;# 
# 3064 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADR equ 010Dh ;# 
# 3264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3278 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SRCON equ 0185h ;# 
# 3335 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSEL equ 0188h ;# 
# 3449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSELH equ 0189h ;# 
# 3499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON2 equ 018Dh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INDF equ 00h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCL equ 02h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
FSR equ 04h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTA equ 05h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTB equ 06h ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTC equ 07h ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTD equ 08h ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTE equ 09h ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCLATH equ 0Ah ;# 
# 459 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INTCON equ 0Bh ;# 
# 537 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR1 equ 0Ch ;# 
# 593 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR2 equ 0Dh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1 equ 0Eh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1L equ 0Eh ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1H equ 0Fh ;# 
# 671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T1CON equ 010h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR2 equ 011h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T2CON equ 012h ;# 
# 843 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPBUF equ 013h ;# 
# 850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON equ 014h ;# 
# 920 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1 equ 015h ;# 
# 927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1L equ 015h ;# 
# 934 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1H equ 016h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP1CON equ 017h ;# 
# 1038 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCSTA equ 018h ;# 
# 1133 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXREG equ 019h ;# 
# 1140 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCREG equ 01Ah ;# 
# 1147 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1238 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISA equ 085h ;# 
# 1478 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISB equ 086h ;# 
# 1540 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISC equ 087h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISD equ 088h ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISE equ 089h ;# 
# 1702 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1815 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCON equ 08Eh ;# 
# 1862 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2041 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PR2 equ 092h ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPADD equ 093h ;# 
# 2055 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPMSK equ 093h ;# 
# 2060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
MSK equ 093h ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WPUB equ 095h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
IOCB equ 096h ;# 
# 2486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
VRCON equ 097h ;# 
# 2556 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXSTA equ 098h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRG equ 099h ;# 
# 2704 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2774 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2844 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2977 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WDTCON equ 0105h ;# 
# 3064 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADR equ 010Dh ;# 
# 3264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3278 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SRCON equ 0185h ;# 
# 3335 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSEL equ 0188h ;# 
# 3449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSELH equ 0189h ;# 
# 3499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON2 equ 018Dh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INDF equ 00h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCL equ 02h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
FSR equ 04h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTA equ 05h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTB equ 06h ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTC equ 07h ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTD equ 08h ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTE equ 09h ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCLATH equ 0Ah ;# 
# 459 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INTCON equ 0Bh ;# 
# 537 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR1 equ 0Ch ;# 
# 593 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR2 equ 0Dh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1 equ 0Eh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1L equ 0Eh ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1H equ 0Fh ;# 
# 671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T1CON equ 010h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR2 equ 011h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T2CON equ 012h ;# 
# 843 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPBUF equ 013h ;# 
# 850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON equ 014h ;# 
# 920 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1 equ 015h ;# 
# 927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1L equ 015h ;# 
# 934 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1H equ 016h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP1CON equ 017h ;# 
# 1038 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCSTA equ 018h ;# 
# 1133 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXREG equ 019h ;# 
# 1140 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCREG equ 01Ah ;# 
# 1147 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1238 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISA equ 085h ;# 
# 1478 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISB equ 086h ;# 
# 1540 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISC equ 087h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISD equ 088h ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISE equ 089h ;# 
# 1702 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1815 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCON equ 08Eh ;# 
# 1862 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2041 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PR2 equ 092h ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPADD equ 093h ;# 
# 2055 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPMSK equ 093h ;# 
# 2060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
MSK equ 093h ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WPUB equ 095h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
IOCB equ 096h ;# 
# 2486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
VRCON equ 097h ;# 
# 2556 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXSTA equ 098h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRG equ 099h ;# 
# 2704 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2774 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2844 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2977 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WDTCON equ 0105h ;# 
# 3064 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADR equ 010Dh ;# 
# 3264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3278 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SRCON equ 0185h ;# 
# 3335 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSEL equ 0188h ;# 
# 3449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSELH equ 0189h ;# 
# 3499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON2 equ 018Dh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INDF equ 00h ;# 
# 59 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR0 equ 01h ;# 
# 66 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCL equ 02h ;# 
# 73 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
STATUS equ 03h ;# 
# 159 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
FSR equ 04h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTA equ 05h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTB equ 06h ;# 
# 290 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTC equ 07h ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTD equ 08h ;# 
# 414 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PORTE equ 09h ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCLATH equ 0Ah ;# 
# 459 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
INTCON equ 0Bh ;# 
# 537 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR1 equ 0Ch ;# 
# 593 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIR2 equ 0Dh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1 equ 0Eh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1L equ 0Eh ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR1H equ 0Fh ;# 
# 671 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T1CON equ 010h ;# 
# 765 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TMR2 equ 011h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
T2CON equ 012h ;# 
# 843 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPBUF equ 013h ;# 
# 850 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON equ 014h ;# 
# 920 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1 equ 015h ;# 
# 927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1L equ 015h ;# 
# 934 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR1H equ 016h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP1CON equ 017h ;# 
# 1038 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCSTA equ 018h ;# 
# 1133 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXREG equ 019h ;# 
# 1140 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
RCREG equ 01Ah ;# 
# 1147 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1238 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESH equ 01Eh ;# 
# 1245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OPTION_REG equ 081h ;# 
# 1416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISA equ 085h ;# 
# 1478 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISB equ 086h ;# 
# 1540 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISC equ 087h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISD equ 088h ;# 
# 1664 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TRISE equ 089h ;# 
# 1702 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE1 equ 08Ch ;# 
# 1758 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PIE2 equ 08Dh ;# 
# 1815 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PCON equ 08Eh ;# 
# 1862 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCCON equ 08Fh ;# 
# 1927 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
OSCTUNE equ 090h ;# 
# 1979 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPCON2 equ 091h ;# 
# 2041 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PR2 equ 092h ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPADD equ 093h ;# 
# 2055 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPMSK equ 093h ;# 
# 2060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
MSK equ 093h ;# 
# 2177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SSPSTAT equ 094h ;# 
# 2346 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WPUB equ 095h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
IOCB equ 096h ;# 
# 2486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
VRCON equ 097h ;# 
# 2556 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
TXSTA equ 098h ;# 
# 2642 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRG equ 099h ;# 
# 2704 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2774 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2844 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2970 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADRESL equ 09Eh ;# 
# 2977 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
WDTCON equ 0105h ;# 
# 3064 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3129 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3245 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATA equ 010Ch ;# 
# 3250 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDAT equ 010Ch ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADR equ 010Dh ;# 
# 3264 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEDATH equ 010Eh ;# 
# 3271 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EEADRH equ 010Fh ;# 
# 3278 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
SRCON equ 0185h ;# 
# 3335 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3387 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSEL equ 0188h ;# 
# 3449 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
ANSELH equ 0189h ;# 
# 3499 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON1 equ 018Ch ;# 
# 3544 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic16f887.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_clearDisplay
	FNCALL	_main,_getChar
	FNCALL	_main,_getPosicaoAtual
	FNCALL	_main,_getPosicaoDesejada
	FNCALL	_main,_printLine
	FNCALL	_main,_setCursor
	FNCALL	_main,_setPosicaoDesejada
	FNCALL	_main,_setupDisplay
	FNCALL	_main,_setupSerial
	FNCALL	_main,_setupStepper
	FNCALL	_main,_sprintf
	FNCALL	_main,_strcat
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_setupSerial,___lldiv
	FNCALL	_setupDisplay,_sendCommand
	FNCALL	_setCursor,_sendCommand
	FNCALL	_printLine,_sendCharToLCD
	FNCALL	_clearDisplay,_sendCommand
	FNROOT	_main
	global	rotacionarParaEsquerda@F1713
	global	rotacionarParaDireita@F1704
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	74

;initializer for rotacionarParaEsquerda@F1713
	retlw	0Ch
	retlw	06h
	retlw	03h
	retlw	09h
	line	57

;initializer for rotacionarParaDireita@F1704
	retlw	0Ch
	retlw	06h
	retlw	03h
	retlw	09h
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_posicaoDesejada
	global	_delayTime
	global	_velocidade
	global	_posicaoAtual
	global	_ch
	global	_input
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTA
_RCSTA	set	0x18
	global	_PORTD
_PORTD	set	0x8
	global	_PORTB
_PORTB	set	0x6
	global	_RCIF
_RCIF	set	0x65
	global	_TXIF
_TXIF	set	0x64
	global	_SPBRG
_SPBRG	set	0x99
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_TRISD
_TRISD	set	0x88
	global	_TRISB
_TRISB	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_BAUDCTLbits
_BAUDCTLbits	set	0x187
	global	_ANSELH
_ANSELH	set	0x189
	
STR_1:	
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	58	;':'
	retlw	32	;' '
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	32	;' '
	retlw	32	;' '
	retlw	80	;'P'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	0
psect	strings
	
STR_2:	
	retlw	86	;'V'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	58	;':'
	retlw	32	;' '
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	95	;'_'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_5:	
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_4	equ	STR_3+0
; #config settings
global __CFG_FOSC$INTRC_NOCLKOUT
__CFG_FOSC$INTRC_NOCLKOUT equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_BOR4V$BOR40V
__CFG_BOR4V$BOR40V equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
	file	"projeto.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_posicaoDesejada:
       ds      2

_delayTime:
       ds      2

_velocidade:
       ds      2

_posicaoAtual:
       ds      2

_ch:
       ds      1

_input:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	74
rotacionarParaEsquerda@F1713:
       ds      4

psect	dataBANK0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	57
rotacionarParaDireita@F1704:
       ds      4

	file	"projeto.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+8)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_setupDisplay:	; 1 bytes @ 0x0
?_setupStepper:	; 1 bytes @ 0x0
??_setupStepper:	; 1 bytes @ 0x0
?_clearDisplay:	; 1 bytes @ 0x0
?_setPosicaoDesejada:	; 1 bytes @ 0x0
?_getChar:	; 1 bytes @ 0x0
??_getChar:	; 1 bytes @ 0x0
?_strcat:	; 1 bytes @ 0x0
?_sendCommand:	; 1 bytes @ 0x0
??_sendCommand:	; 1 bytes @ 0x0
?_sendCharToLCD:	; 1 bytes @ 0x0
??_sendCharToLCD:	; 1 bytes @ 0x0
	global	?_getPosicaoAtual
?_getPosicaoAtual:	; 2 bytes @ 0x0
	global	?_getPosicaoDesejada
?_getPosicaoDesejada:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	strcat@from
strcat@from:	; 1 bytes @ 0x0
	global	setPosicaoDesejada@posicao_desejada
setPosicaoDesejada@posicao_desejada:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
??_strcat:	; 1 bytes @ 0x1
	ds	1
??_setPosicaoDesejada:	; 1 bytes @ 0x2
??_getPosicaoAtual:	; 1 bytes @ 0x2
??_getPosicaoDesejada:	; 1 bytes @ 0x2
	global	sendCommand@cmd
sendCommand@cmd:	; 1 bytes @ 0x2
	global	sendCharToLCD@ch
sendCharToLCD@ch:	; 1 bytes @ 0x2
	global	strcat@to
strcat@to:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_setupDisplay:	; 1 bytes @ 0x3
??_clearDisplay:	; 1 bytes @ 0x3
?_printLine:	; 1 bytes @ 0x3
?_setCursor:	; 1 bytes @ 0x3
	global	setCursor@coluna
setCursor@coluna:	; 1 bytes @ 0x3
	global	strcat@cp
strcat@cp:	; 1 bytes @ 0x3
	global	printLine@s
printLine@s:	; 2 bytes @ 0x3
	ds	1
??_setCursor:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
??_printLine:	; 1 bytes @ 0x5
	global	setCursor@linha
setCursor@linha:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	setCursor@position
setCursor@position:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??___lldiv:	; 1 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	1
??_setupSerial:	; 1 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??___lwmod:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x1
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x1
	ds	3
??_sprintf:	; 1 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	ds	1
?_setupSerial:	; 1 bytes @ 0x5
	global	setupSerial@baudrate
setupSerial@baudrate:	; 2 bytes @ 0x5
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x7
	global	setupSerial@FOSC
setupSerial@FOSC:	; 4 bytes @ 0x7
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x8
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x9
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0xA
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xD
	ds	1
??_main:	; 1 bytes @ 0xE
	ds	1
	global	main@posAtual_str
main@posAtual_str:	; 10 bytes @ 0xF
	ds	10
	global	main@posDesejada_str
main@posDesejada_str:	; 10 bytes @ 0x19
	ds	10
	global	main@posAtual
main@posAtual:	; 2 bytes @ 0x23
	ds	2
	global	main@posDesejada
main@posDesejada:	; 2 bytes @ 0x25
	ds	2
;!
;!Data Sizes:
;!    Strings     37
;!    Constant    10
;!    Data        8
;!    BSS         10
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           13     13      13
;!    BANK0            80     39      57
;!    BANK1            80      0       0
;!    BANK3            85      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strcat@from	PTR const unsigned char  size(1) Largest target is 8192
;!		 -> ROM(CODE[8192]), 
;!
;!    strcat@to	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    strcat@cp	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@posDesejada_str(BANK0[10]), main@posAtual_str(BANK0[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    printLine@s	PTR unsigned char  size(2) Largest target is 17
;!		 -> NULL(NULL[0]), STR_5(CODE[4]), main@posDesejada_str(BANK0[10]), main@posAtual_str(BANK0[10]), 
;!		 -> STR_2(CODE[13]), STR_1(CODE[17]), 
;!
;!    sp__strcat	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    input	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_setupSerial
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _setupSerial->___lldiv
;!    _setupDisplay->_sendCommand
;!    _setCursor->_sendCommand
;!    _printLine->_sendCharToLCD
;!    _clearDisplay->_sendCommand
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    _setupSerial->___lldiv
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                25    25      0    3020
;!                                             14 BANK0     25    25      0
;!                       _clearDisplay
;!                            _getChar
;!                    _getPosicaoAtual
;!                 _getPosicaoDesejada
;!                          _printLine
;!                          _setCursor
;!                 _setPosicaoDesejada
;!                       _setupDisplay
;!                        _setupSerial
;!                       _setupStepper
;!                            _sprintf
;!                             _strcat
;! ---------------------------------------------------------------------------------
;! (2) _strcat                                               4     3      1     178
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             21    18      3    1276
;!                                              1 BANK0     13    10      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     5     1      4
;!                                              0 BANK0      1     1      0
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     374
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _setupStepper                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setupSerial                                         10     8      2     366
;!                                              9 COMMON     4     4      0
;!                                              5 BANK0      6     4      2
;!                            ___lldiv
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     268
;!                                              0 COMMON     9     1      8
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _setupDisplay                                         2     2      0      44
;!                                              3 COMMON     2     2      0
;!                        _sendCommand
;! ---------------------------------------------------------------------------------
;! (1) _setPosicaoDesejada                                   2     0      2      75
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _setCursor                                            4     3      1     423
;!                                              3 COMMON     4     3      1
;!                        _sendCommand
;! ---------------------------------------------------------------------------------
;! (1) _printLine                                            2     0      2     460
;!                                              3 COMMON     2     0      2
;!                      _sendCharToLCD
;! ---------------------------------------------------------------------------------
;! (2) _sendCharToLCD                                        3     3      0      44
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _getPosicaoDesejada                                   2     0      2       0
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _getPosicaoAtual                                      2     0      2       0
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _getChar                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _clearDisplay                                         0     0      0      44
;!                        _sendCommand
;! ---------------------------------------------------------------------------------
;! (2) _sendCommand                                          3     3      0      44
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clearDisplay
;!     _sendCommand
;!   _getChar
;!   _getPosicaoAtual
;!   _getPosicaoDesejada
;!   _printLine
;!     _sendCharToLCD
;!   _setCursor
;!     _sendCommand
;!   _setPosicaoDesejada
;!   _setupDisplay
;!     _sendCommand
;!   _setupSerial
;!     ___lldiv
;!   _setupStepper
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!   _strcat
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               55      0       0       9        0.0%
;!BITBANK3            55      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     27      39       5       71.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               D      D       D       1      100.0%
;!BITCOMMON            D      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      46      12        0.0%
;!ABS                  0      0      46       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  posDesejada_   10   25[BANK0 ] unsigned char [10]
;;  posAtual_str   10   15[BANK0 ] unsigned char [10]
;;  posDesejada     2   37[BANK0 ] unsigned int 
;;  posAtual        2   35[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   44[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      24       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      25       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clearDisplay
;;		_getChar
;;		_getPosicaoAtual
;;		_getPosicaoDesejada
;;		_printLine
;;		_setCursor
;;		_setPosicaoDesejada
;;		_setupDisplay
;;		_setupSerial
;;		_setupStepper
;;		_sprintf
;;		_strcat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\main.c"
	line	34
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\main.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l1339:	
;main.c: 37: ANSELH=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	41
	
l1341:	
;main.c: 41: TRISCbits.TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,6	;volatile
	line	42
	
l1343:	
;main.c: 42: TRISCbits.TRISC7 = 1;
	bsf	(135)^080h,7	;volatile
	line	46
;main.c: 46: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	47
;main.c: 47: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	51
;main.c: 51: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	52
;main.c: 52: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	55
	
l1345:	
;main.c: 55: setupSerial(2400);
	movlw	060h
	movwf	(setupSerial@baudrate)
	movlw	09h
	movwf	((setupSerial@baudrate))+1
	fcall	_setupSerial
	line	56
	
l1347:	
;main.c: 56: setupDisplay();
	fcall	_setupDisplay
	line	57
	
l1349:	
;main.c: 57: setupStepper();
	fcall	_setupStepper
	line	59
	
l1351:	
;main.c: 59: clearDisplay();
	fcall	_clearDisplay
	line	60
	
l1353:	
;main.c: 60: printLine("PA: ___  PD: ___");
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	line	61
	
l1355:	
;main.c: 61: setCursor(1,0);
	clrf	(setCursor@coluna)
	movlw	low(01h)
	fcall	_setCursor
	line	62
	
l1357:	
;main.c: 62: printLine("Vel: ___ RPM");
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	line	64
	
l1359:	
;main.c: 64: setPosicaoDesejada(180);
	movlw	0B4h
	movwf	(setPosicaoDesejada@posicao_desejada)
	movlw	0
	movwf	((setPosicaoDesejada@posicao_desejada))+1
	fcall	_setPosicaoDesejada
	goto	l1361
	line	67
;main.c: 67: while(1)
	
l45:	
	line	70
	
l1361:	
;main.c: 68: {
;main.c: 70: uint16_t posAtual = getPosicaoAtual();
	fcall	_getPosicaoAtual
	movf	(1+(?_getPosicaoAtual)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@posAtual+1)
	movf	(0+(?_getPosicaoAtual)),w
	movwf	(main@posAtual)
	line	71
	
l1363:	
;main.c: 71: uint16_t posDesejada = getPosicaoDesejada();
	fcall	_getPosicaoDesejada
	movf	(1+(?_getPosicaoDesejada)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@posDesejada+1)
	movf	(0+(?_getPosicaoDesejada)),w
	movwf	(main@posDesejada)
	line	75
	
l1365:	
;main.c: 74: char posAtual_str[10];
;main.c: 75: sprintf(posAtual_str, "%d", posAtual);
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(main@posAtual+1),w
	movwf	1+(?_sprintf)+01h
	movf	(main@posAtual),w
	movwf	0+(?_sprintf)+01h
	movlw	(low(main@posAtual_str|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	77
	
l1367:	
;main.c: 76: char posDesejada_str[10];
;main.c: 77: sprintf(posDesejada_str, "%d", posDesejada);
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(main@posDesejada+1),w
	movwf	1+(?_sprintf)+01h
	movf	(main@posDesejada),w
	movwf	0+(?_sprintf)+01h
	movlw	(low(main@posDesejada_str|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	80
	
l1369:	
;main.c: 80: setCursor(0,4);
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	81
	
l1371:	
;main.c: 81: printLine(posAtual_str);
	movlw	(low(main@posAtual_str|((0x0)<<8))&0ffh)
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	line	84
	
l1373:	
;main.c: 84: setCursor(0,13);
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	85
	
l1375:	
;main.c: 85: printLine(posDesejada_str);
	movlw	(low(main@posDesejada_str|((0x0)<<8))&0ffh)
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	line	88
	
l1377:	
;main.c: 88: setCursor(1,5);
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(01h)
	fcall	_setCursor
	line	89
	
l1379:	
;main.c: 89: printLine("200");
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	line	92
	
l1381:	
;main.c: 92: ch = getChar();
	fcall	_getChar
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_ch)
	line	93
	
l1383:	
;main.c: 93: if(ch == 0x0D)
		movlw	13
	xorwf	((_ch)),w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1391
u930:
	line	95
	
l1385:	
;main.c: 94: {
;main.c: 95: clearDisplay();
	fcall	_clearDisplay
	line	96
;main.c: 96: setCursor(0,0);
	clrf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	97
	
l1387:	
;main.c: 97: printLine(input);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_input),w
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	line	98
	
l1389:	
;main.c: 98: input = (0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_input)
	line	99
;main.c: 99: }
	goto	l1361
	line	100
	
l46:	
	line	103
	
l1391:	
;main.c: 100: else
;main.c: 101: {
;main.c: 103: strcat(input, ch);
	movf	(_ch),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strcat@from)
	movf	(_input),w
	fcall	_strcat
	line	104
	
l1393:	
;main.c: 104: printLine(input);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_input),w
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	goto	l1361
	line	105
	
l47:	
	goto	l1361
	line	106
	
l48:	
	line	67
	goto	l1361
	
l49:	
	line	107
	
l50:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_strcat

;; *************** function _strcat *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\strcat.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> NULL(0), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> ROM(8192), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> NULL(0), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> NULL(0), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\strcat.c"
	line	8
global __ptext1
__ptext1:	;psect for function _strcat
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\strcat.c"
	line	8
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
;incstack = 0
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0+pclath]
;strcat@to stored from wreg
	movwf	(strcat@to)
	line	18
	
l1295:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l1299
	
l636:	
	line	20
	
l1297:	
	movlw	low(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l1299
	
l635:	
	line	19
	
l1299:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l1297
u790:
	goto	l1303
	
l637:	
	line	21
	goto	l1303
	
l639:	
	line	22
	
l1301:	
	movlw	low(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	line	23
	movlw	low(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@from),f
	goto	l1303
	line	24
	
l638:	
	line	21
	
l1303:	
	movf	(strcat@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strcat+0)+0
	movf	(strcat@cp),w
	movwf	fsr0
	movf	(??_strcat+0)+0,w
	movwf	indf
	movf	((indf)),w
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l1301
u800:
	goto	l641
	
l640:	
	line	26
;	Return value of _strcat is never used
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
	signat	_strcat,8313
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@posDesejada_str(10), main@posAtual_str(10), 
;;  f               1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(3), STR_3(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   12[BANK0 ] PTR unsigned char 
;;		 -> main@posDesejada_str(10), main@posAtual_str(10), 
;;  tmpval          4    0        struct .
;;  val             2   10[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   13[BANK0 ] char 
;;  prec            1    9[BANK0 ] char 
;;  flag            1    8[BANK0 ] unsigned char 
;;  ap              1    7[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    1[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	492
global __ptext2
__ptext2:	;psect for function _sprintf
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	533
	
l1231:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 523: union {
;doprnt.c: 524: unsigned long vd;
;doprnt.c: 525: double integ;
;doprnt.c: 526: } tmpval;
;doprnt.c: 528: unsigned int val;
;doprnt.c: 529: unsigned len;
;doprnt.c: 530: const char * cp;
;doprnt.c: 533: *ap = __va_start();
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	536
;doprnt.c: 536: while(c = *f++) {
	goto	l1283
	
l176:	
	line	538
	
l1233:	
;doprnt.c: 538: if(c != '%')
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u701
	goto	u700
u701:
	goto	l1239
u700:
	line	541
	
l1235:	
;doprnt.c: 540: {
;doprnt.c: 541: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1237:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	542
;doprnt.c: 542: continue;
	goto	l1283
	line	543
	
l177:	
	line	548
	
l1239:	
;doprnt.c: 543: }
;doprnt.c: 548: flag = 0;
	clrf	(sprintf@flag)
	line	635
;doprnt.c: 635: switch(c = *f++) {
	goto	l1243
	line	637
;doprnt.c: 637: case 0:
	
l179:	
	line	638
;doprnt.c: 638: goto alldone;
	goto	l1285
	line	697
;doprnt.c: 697: case 'd':
	
l181:	
	goto	l1245
	line	698
	
l182:	
	line	699
;doprnt.c: 698: case 'i':
;doprnt.c: 699: break;
	goto	l1245
	line	802
;doprnt.c: 802: default:
	
l184:	
	line	813
;doprnt.c: 813: continue;
	goto	l1283
	line	822
	
l1241:	
;doprnt.c: 822: }
	goto	l1245
	line	635
	
l178:	
	
l1243:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1285
	xorlw	100^0	; case 100
	skipnz
	goto	l1245
	xorlw	105^100	; case 105
	skipnz
	goto	l1245
	goto	l1283
	opt asmopt_pop

	line	822
	
l183:	
	line	1259
	
l1245:	
;doprnt.c: 1253: {
;doprnt.c: 1259: val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l1247:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1261
	
l1249:	
;doprnt.c: 1261: if((int)val < 0) {
	btfss	(sprintf@val+1),7
	goto	u711
	goto	u710
u711:
	goto	l1255
u710:
	line	1262
	
l1251:	
;doprnt.c: 1262: flag |= 0x03;
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1263
	
l1253:	
;doprnt.c: 1263: val = -val;
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	goto	l1255
	line	1264
	
l185:	
	line	1305
	
l1255:	
;doprnt.c: 1264: }
;doprnt.c: 1266: }
;doprnt.c: 1305: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	
l1257:	
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l1261
u720:
	goto	l1267
	
l1259:	
	goto	l1267
	line	1306
	
l186:	
	
l1261:	
;doprnt.c: 1306: if(val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u735
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u735:
	skipnc
	goto	u731
	goto	u730
u731:
	goto	l1265
u730:
	goto	l1267
	line	1307
	
l1263:	
;doprnt.c: 1307: break;
	goto	l1267
	
l188:	
	line	1305
	
l1265:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1261
u740:
	goto	l1267
	
l187:	
	line	1438
	
l1267:	
;doprnt.c: 1422: {
;doprnt.c: 1438: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u751
	goto	u750
u751:
	goto	l1273
u750:
	line	1439
	
l1269:	
;doprnt.c: 1439: ((*sp++ = ('-')));
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1271:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1273
	
l189:	
	line	1472
	
l1273:	
;doprnt.c: 1469: }
;doprnt.c: 1472: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1474
;doprnt.c: 1474: while(prec--) {
	goto	l1281
	
l191:	
	line	1489
	
l1275:	
;doprnt.c: 1478: {
;doprnt.c: 1489: c = (val / dpowers[prec]) % 10 + '0';
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1524
	
l1277:	
;doprnt.c: 1523: }
;doprnt.c: 1524: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1279:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1281
	line	1525
	
l190:	
	line	1474
	
l1281:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l1275
u760:
	goto	l1283
	
l192:	
	goto	l1283
	line	1533
	
l175:	
	line	536
	
l1283:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u771
	goto	u770
u771:
	goto	l1233
u770:
	goto	l1285
	
l193:	
	goto	l1285
	line	1535
;doprnt.c: 1525: }
;doprnt.c: 1533: }
;doprnt.c: 1535: alldone:
	
l180:	
	line	1538
	
l1285:	
;doprnt.c: 1538: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l194
	line	1540
	
l1287:	
	line	1541
;doprnt.c: 1540: return 0;
;	Return value of _sprintf is never used
	
l194:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       1       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1141:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u601
	goto	u600
u601:
	goto	l1159
u600:
	line	14
	
l1143:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1149
	
l622:	
	line	16
	
l1145:	
	movlw	01h
	
u615:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u615
	line	17
	
l1147:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1149
	line	18
	
l621:	
	line	15
	
l1149:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u621
	goto	u620
u621:
	goto	l1145
u620:
	goto	l1151
	
l623:	
	goto	l1151
	line	19
	
l624:	
	line	20
	
l1151:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u635
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u635:
	skipc
	goto	u631
	goto	u630
u631:
	goto	l1155
u630:
	line	21
	
l1153:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1155
	
l625:	
	line	22
	
l1155:	
	movlw	01h
	
u645:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u645
	line	23
	
l1157:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1151
u650:
	goto	l1159
	
l626:	
	goto	l1159
	line	24
	
l620:	
	line	25
	
l1159:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	goto	l627
	
l1161:	
	line	26
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;;		_setVelocidade
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1115:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1117:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u531
	goto	u530
u531:
	goto	l1137
u530:
	line	16
	
l1119:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1125
	
l612:	
	line	18
	
l1121:	
	movlw	01h
	
u545:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u545
	line	19
	
l1123:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1125
	line	20
	
l611:	
	line	17
	
l1125:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u551
	goto	u550
u551:
	goto	l1121
u550:
	goto	l1127
	
l613:	
	goto	l1127
	line	21
	
l614:	
	line	22
	
l1127:	
	movlw	01h
	
u565:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u565
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u575
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u575:
	skipc
	goto	u571
	goto	u570
u571:
	goto	l1133
u570:
	line	24
	
l1129:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1131:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1133
	line	26
	
l615:	
	line	27
	
l1133:	
	movlw	01h
	
u585:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u585
	line	28
	
l1135:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l1127
u590:
	goto	l1137
	
l616:	
	goto	l1137
	line	29
	
l610:	
	line	30
	
l1137:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	goto	l617
	
l1139:	
	line	31
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_setupStepper

;; *************** function _setupStepper *****************
;; Defined at:
;;		line 11 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	11
global __ptext5
__ptext5:	;psect for function _setupStepper
psect	text5
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	11
	global	__size_of_setupStepper
	__size_of_setupStepper	equ	__end_of_setupStepper-_setupStepper
	
_setupStepper:	
;incstack = 0
	opt	stack 7
; Regs used in _setupStepper: [wreg+status,2]
	line	13
	
l1191:	
;stepper.c: 13: posicaoAtual = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_posicaoAtual)
	clrf	(_posicaoAtual+1)
	line	14
	
l1193:	
;stepper.c: 14: velocidade = 1;
	movlw	01h
	movwf	(_velocidade)
	movlw	0
	movwf	((_velocidade))+1
	line	15
	
l1195:	
;stepper.c: 15: delayTime = 50;
	movlw	032h
	movwf	(_delayTime)
	movlw	0
	movwf	((_delayTime))+1
	line	16
;stepper.c: 16: posicaoDesejada = 0;
	clrf	(_posicaoDesejada)
	clrf	(_posicaoDesejada+1)
	line	18
	
l128:	
	return
	opt stack 0
GLOBAL	__end_of_setupStepper
	__end_of_setupStepper:
	signat	_setupStepper,89
	global	_setupSerial

;; *************** function _setupSerial *****************
;; Defined at:
;;		line 4 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
;; Parameters:    Size  Location     Type
;;  baudrate        2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  FOSC            4    7[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       6       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	4
global __ptext6
__ptext6:	;psect for function _setupSerial
psect	text6
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	4
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:	
;incstack = 0
	opt	stack 6
; Regs used in _setupSerial: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l1163:	
;serial.c: 6: unsigned long FOSC = 4000000;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSerial@FOSC+3)
	movlw	03Dh
	movwf	(setupSerial@FOSC+2)
	movlw	09h
	movwf	(setupSerial@FOSC+1)
	movlw	0
	movwf	(setupSerial@FOSC)

	line	7
	
l1165:	
;serial.c: 7: TXSTAbits.BRGH = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,2	;volatile
	line	8
	
l1167:	
;serial.c: 8: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	9
	
l1169:	
;serial.c: 9: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	10
;serial.c: 10: RCSTA = 0b10010000;
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	11
	
l1171:	
;serial.c: 11: BAUDCTLbits.BRG16 = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(391)^0180h,3	;volatile
	line	14
	
l1173:	
;serial.c: 14: SPBRG = ((FOSC/baudrate)/64) - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setupSerial@baudrate),w
	movwf	(___lldiv@divisor)
	movf	(setupSerial@baudrate+1),w
	movwf	((___lldiv@divisor))+1
	clrf	2+((___lldiv@divisor))
	clrf	3+((___lldiv@divisor))
	movf	(setupSerial@FOSC+3),w
	movwf	(___lldiv@dividend+3)
	movf	(setupSerial@FOSC+2),w
	movwf	(___lldiv@dividend+2)
	movf	(setupSerial@FOSC+1),w
	movwf	(___lldiv@dividend+1)
	movf	(setupSerial@FOSC),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(0+?___lldiv),w
	movwf	(??_setupSerial+0)+0
	movf	(1+?___lldiv),w
	movwf	((??_setupSerial+0)+0+1)
	movf	(2+?___lldiv),w
	movwf	((??_setupSerial+0)+0+2)
	movf	(3+?___lldiv),w
	movwf	((??_setupSerial+0)+0+3)
	movlw	06h
u665:
	clrc
	rrf	(??_setupSerial+0)+3,f
	rrf	(??_setupSerial+0)+2,f
	rrf	(??_setupSerial+0)+1,f
	rrf	(??_setupSerial+0)+0,f
u660:
	addlw	-1
	skipz
	goto	u665
	movf	0+(??_setupSerial+0)+0,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l1175:	
;serial.c: 16: TXIF=RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	bcf	(100/8),(100)&7	;volatile
	line	17
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_setupSerial
	__end_of_setupSerial:
	signat	_setupSerial,4217
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    0[BANK0 ] unsigned long 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       5       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSerial
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lldiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l1091:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	low highword(0)
	movwf	(___lldiv@quotient+2)
	movlw	high(0)
	movwf	(___lldiv@quotient+1)
	movlw	low(0)
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u461
	goto	u460
u461:
	goto	l1111
u460:
	line	16
	
l1093:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l1097
	
l559:	
	line	18
	
l1095:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u475:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u475
	line	19
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l1097
	line	20
	
l558:	
	line	17
	
l1097:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u481
	goto	u480
u481:
	goto	l1095
u480:
	goto	l1099
	
l560:	
	goto	l1099
	line	21
	
l561:	
	line	22
	
l1099:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u495:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u495
	line	23
	
l1101:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u505
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u505
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u505
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u505:
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1107
u500:
	line	24
	
l1103:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l1105:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l1107
	line	26
	
l562:	
	line	27
	
l1107:	
	movlw	01h
u515:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u515

	line	28
	
l1109:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1099
u520:
	goto	l1111
	
l563:	
	goto	l1111
	line	29
	
l557:	
	line	30
	
l1111:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l564
	
l1113:	
	line	31
	
l564:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_setupDisplay

;; *************** function _setupDisplay *****************
;; Defined at:
;;		line 5 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	5
global __ptext8
__ptext8:	;psect for function _setupDisplay
psect	text8
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	5
	global	__size_of_setupDisplay
	__size_of_setupDisplay	equ	__end_of_setupDisplay-_setupDisplay
	
_setupDisplay:	
;incstack = 0
	opt	stack 6
; Regs used in _setupDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l1177:	
;lcd.c: 7: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	26
movwf	((??_setupDisplay+0)+0+1),f
	movlw	248
movwf	((??_setupDisplay+0)+0),f
	u1317:
decfsz	((??_setupDisplay+0)+0),f
	goto	u1317
	decfsz	((??_setupDisplay+0)+0+1),f
	goto	u1317
	nop
opt asmopt_pop

	line	8
	
l1179:	
;lcd.c: 8: sendCommand(0x02);
	movlw	low(02h)
	fcall	_sendCommand
	line	9
	
l1181:	
;lcd.c: 9: sendCommand(0x28);
	movlw	low(028h)
	fcall	_sendCommand
	line	10
	
l1183:	
;lcd.c: 10: sendCommand(0x0C);
	movlw	low(0Ch)
	fcall	_sendCommand
	line	11
	
l1185:	
;lcd.c: 11: sendCommand(0x06);
	movlw	low(06h)
	fcall	_sendCommand
	line	12
	
l1187:	
;lcd.c: 12: sendCommand(0x01);
	movlw	low(01h)
	fcall	_sendCommand
	line	13
	
l1189:	
;lcd.c: 13: sendCommand(0x80);
	movlw	low(080h)
	fcall	_sendCommand
	line	14
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_setupDisplay
	__end_of_setupDisplay:
	signat	_setupDisplay,89
	global	_setPosicaoDesejada

;; *************** function _setPosicaoDesejada *****************
;; Defined at:
;;		line 46 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;  posicao_dese    2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	46
global __ptext9
__ptext9:	;psect for function _setPosicaoDesejada
psect	text9
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	46
	global	__size_of_setPosicaoDesejada
	__size_of_setPosicaoDesejada	equ	__end_of_setPosicaoDesejada-_setPosicaoDesejada
	
_setPosicaoDesejada:	
;incstack = 0
	opt	stack 7
; Regs used in _setPosicaoDesejada: [wreg]
	line	48
	
l1221:	
;stepper.c: 48: posicaoDesejada = posicao_desejada;
	movf	(setPosicaoDesejada@posicao_desejada+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_posicaoDesejada+1)
	movf	(setPosicaoDesejada@posicao_desejada),w
	movwf	(_posicaoDesejada)
	line	49
	
l146:	
	return
	opt stack 0
GLOBAL	__end_of_setPosicaoDesejada
	__end_of_setPosicaoDesejada:
	signat	_setPosicaoDesejada,4217
	global	_setCursor

;; *************** function _setCursor *****************
;; Defined at:
;;		line 59 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;  linha           1    wreg     unsigned char 
;;  coluna          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  linha           1    5[COMMON] unsigned char 
;;  position        1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	59
global __ptext10
__ptext10:	;psect for function _setCursor
psect	text10
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	59
	global	__size_of_setCursor
	__size_of_setCursor	equ	__end_of_setCursor-_setCursor
	
_setCursor:	
;incstack = 0
	opt	stack 6
; Regs used in _setCursor: [wreg+status,2+status,0+pclath+cstack]
;setCursor@linha stored from wreg
	movwf	(setCursor@linha)
	line	61
	
l1207:	
;lcd.c: 61: uint8_t position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	62
	
l1209:	
;lcd.c: 62: if (linha == 0)
	movf	((setCursor@linha)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1213
u680:
	line	64
	
l1211:	
;lcd.c: 63: {
;lcd.c: 64: position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	65
;lcd.c: 65: }
	goto	l1217
	line	66
	
l104:	
	
l1213:	
;lcd.c: 66: else if (linha == 1)
		decf	((setCursor@linha)),w
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l1217
u690:
	line	68
	
l1215:	
;lcd.c: 67: {
;lcd.c: 68: position = 0xC0;
	movlw	low(0C0h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	goto	l1217
	line	69
	
l106:	
	goto	l1217
	line	71
	
l105:	
	
l1217:	
;lcd.c: 69: }
;lcd.c: 71: position = position + coluna;
	movf	(setCursor@coluna),w
	addwf	(setCursor@position),w
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	72
	
l1219:	
;lcd.c: 72: sendCommand(position);
	movf	(setCursor@position),w
	fcall	_sendCommand
	line	73
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_setCursor
	__end_of_setCursor:
	signat	_setCursor,8313
	global	_printLine

;; *************** function _printLine *****************
;; Defined at:
;;		line 75 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR unsigned char 
;;		 -> NULL(0), STR_5(4), main@posDesejada_str(10), main@posAtual_str(10), 
;;		 -> STR_2(13), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendCharToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	75
global __ptext11
__ptext11:	;psect for function _printLine
psect	text11
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	75
	global	__size_of_printLine
	__size_of_printLine	equ	__end_of_printLine-_printLine
	
_printLine:	
;incstack = 0
	opt	stack 6
; Regs used in _printLine: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l1199:	
;lcd.c: 77: while(*s) {
	goto	l1205
	
l111:	
	line	78
	
l1201:	
;lcd.c: 78: sendCharToLCD(*s++);
	movf	(printLine@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printLine@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_sendCharToLCD
	
l1203:	
	movlw	01h
	addwf	(printLine@s),f
	skipnc
	incf	(printLine@s+1),f
	goto	l1205
	line	79
	
l110:	
	line	77
	
l1205:	
	movf	(printLine@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printLine@s),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u671
	goto	u670
u671:
	goto	l1201
u670:
	goto	l113
	
l112:	
	line	80
	
l113:	
	return
	opt stack 0
GLOBAL	__end_of_printLine
	__end_of_printLine:
	signat	_printLine,4217
	global	_sendCharToLCD

;; *************** function _sendCharToLCD *****************
;; Defined at:
;;		line 35 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printLine
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	35
global __ptext12
__ptext12:	;psect for function _sendCharToLCD
psect	text12
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	35
	global	__size_of_sendCharToLCD
	__size_of_sendCharToLCD	equ	__end_of_sendCharToLCD-_sendCharToLCD
	
_sendCharToLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _sendCharToLCD: [wreg+status,2+status,0]
;sendCharToLCD@ch stored from wreg
	movwf	(sendCharToLCD@ch)
	line	37
	
l1067:	
;lcd.c: 37: PORTB = (ch & 0xF0)>>4;
	movf	(sendCharToLCD@ch),w
	movwf	(??_sendCharToLCD+0)+0
	movlw	04h
u455:
	clrc
	rrf	(??_sendCharToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u455
	movf	0+(??_sendCharToLCD+0)+0,w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	38
	
l1069:	
;lcd.c: 38: PORTBbits.RB4 = 1;
	bsf	(6),4	;volatile
	line	39
	
l1071:	
;lcd.c: 39: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	40
	
l1073:	
;lcd.c: 40: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1327:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1327
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1327
opt asmopt_pop

	line	41
	
l1075:	
;lcd.c: 41: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	43
	
l1077:	
;lcd.c: 43: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1337:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1337
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1337
opt asmopt_pop

	line	45
	
l1079:	
;lcd.c: 45: PORTB = (ch & 0x0F);
	movf	(sendCharToLCD@ch),w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	46
	
l1081:	
;lcd.c: 46: PORTBbits.RB4 = 1;
	bsf	(6),4	;volatile
	line	47
	
l1083:	
;lcd.c: 47: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	48
	
l1085:	
;lcd.c: 48: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1347:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1347
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1347
opt asmopt_pop

	line	49
	
l1087:	
;lcd.c: 49: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	51
	
l1089:	
;lcd.c: 51: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1357:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1357
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1357
opt asmopt_pop

	line	52
	
l98:	
	return
	opt stack 0
GLOBAL	__end_of_sendCharToLCD
	__end_of_sendCharToLCD:
	signat	_sendCharToLCD,4217
	global	_getPosicaoDesejada

;; *************** function _getPosicaoDesejada *****************
;; Defined at:
;;		line 41 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	41
global __ptext13
__ptext13:	;psect for function _getPosicaoDesejada
psect	text13
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	41
	global	__size_of_getPosicaoDesejada
	__size_of_getPosicaoDesejada	equ	__end_of_getPosicaoDesejada-_getPosicaoDesejada
	
_getPosicaoDesejada:	
;incstack = 0
	opt	stack 7
; Regs used in _getPosicaoDesejada: [wreg]
	line	43
	
l1227:	
;stepper.c: 43: return posicaoDesejada;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicaoDesejada+1),w
	movwf	(?_getPosicaoDesejada+1)
	movf	(_posicaoDesejada),w
	movwf	(?_getPosicaoDesejada)
	goto	l143
	
l1229:	
	line	44
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of_getPosicaoDesejada
	__end_of_getPosicaoDesejada:
	signat	_getPosicaoDesejada,90
	global	_getPosicaoAtual

;; *************** function _getPosicaoAtual *****************
;; Defined at:
;;		line 36 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext14
__ptext14:	;psect for function _getPosicaoAtual
psect	text14
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	36
	global	__size_of_getPosicaoAtual
	__size_of_getPosicaoAtual	equ	__end_of_getPosicaoAtual-_getPosicaoAtual
	
_getPosicaoAtual:	
;incstack = 0
	opt	stack 7
; Regs used in _getPosicaoAtual: [wreg]
	line	38
	
l1223:	
;stepper.c: 38: return posicaoAtual;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_posicaoAtual+1),w
	movwf	(?_getPosicaoAtual+1)
	movf	(_posicaoAtual),w
	movwf	(?_getPosicaoAtual)
	goto	l140
	
l1225:	
	line	39
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_getPosicaoAtual
	__end_of_getPosicaoAtual:
	signat	_getPosicaoAtual,90
	global	_getChar

;; *************** function _getChar *****************
;; Defined at:
;;		line 26 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	26
global __ptext15
__ptext15:	;psect for function _getChar
psect	text15
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	26
	global	__size_of_getChar
	__size_of_getChar	equ	__end_of_getChar-_getChar
	
_getChar:	
;incstack = 0
	opt	stack 7
; Regs used in _getChar: [wreg]
	line	28
	
l1289:	
;serial.c: 28: while(!RCIF);
	goto	l78
	
l79:	
	
l78:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u781
	goto	u780
u781:
	goto	l78
u780:
	
l80:	
	line	29
;serial.c: 29: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	30
	
l1291:	
;serial.c: 30: return RCREG;
	movf	(26),w	;volatile
	goto	l81
	
l1293:	
	line	31
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_getChar
	__end_of_getChar:
	signat	_getChar,89
	global	_clearDisplay

;; *************** function _clearDisplay *****************
;; Defined at:
;;		line 54 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	54
global __ptext16
__ptext16:	;psect for function _clearDisplay
psect	text16
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	54
	global	__size_of_clearDisplay
	__size_of_clearDisplay	equ	__end_of_clearDisplay-_clearDisplay
	
_clearDisplay:	
;incstack = 0
	opt	stack 6
; Regs used in _clearDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l1197:	
;lcd.c: 56: sendCommand(0x01);
	movlw	low(01h)
	fcall	_sendCommand
	line	57
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_clearDisplay
	__end_of_clearDisplay:
	signat	_clearDisplay,89
	global	_sendCommand

;; *************** function _sendCommand *****************
;; Defined at:
;;		line 16 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupDisplay
;;		_clearDisplay
;;		_setCursor
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext17
__ptext17:	;psect for function _sendCommand
psect	text17
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	16
	global	__size_of_sendCommand
	__size_of_sendCommand	equ	__end_of_sendCommand-_sendCommand
	
_sendCommand:	
;incstack = 0
	opt	stack 6
; Regs used in _sendCommand: [wreg+status,2+status,0]
;sendCommand@cmd stored from wreg
	movwf	(sendCommand@cmd)
	line	18
	
l1043:	
;lcd.c: 18: PORTB = (cmd & 0xF0)>>4;
	movf	(sendCommand@cmd),w
	movwf	(??_sendCommand+0)+0
	movlw	04h
u445:
	clrc
	rrf	(??_sendCommand+0)+0,f
	addlw	-1
	skipz
	goto	u445
	movf	0+(??_sendCommand+0)+0,w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	19
	
l1045:	
;lcd.c: 19: PORTBbits.RB4 = 0;
	bcf	(6),4	;volatile
	line	20
	
l1047:	
;lcd.c: 20: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	21
	
l1049:	
;lcd.c: 21: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u1367:
decfsz	((??_sendCommand+0)+0),f
	goto	u1367
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u1367
opt asmopt_pop

	line	22
	
l1051:	
;lcd.c: 22: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	24
	
l1053:	
;lcd.c: 24: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u1377:
decfsz	((??_sendCommand+0)+0),f
	goto	u1377
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u1377
opt asmopt_pop

	line	26
	
l1055:	
;lcd.c: 26: PORTB = (cmd & 0x0F);
	movf	(sendCommand@cmd),w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l1057:	
;lcd.c: 27: PORTBbits.RB4 = 0;
	bcf	(6),4	;volatile
	line	28
	
l1059:	
;lcd.c: 28: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	29
	
l1061:	
;lcd.c: 29: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u1387:
decfsz	((??_sendCommand+0)+0),f
	goto	u1387
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u1387
opt asmopt_pop

	line	30
	
l1063:	
;lcd.c: 30: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	32
	
l1065:	
;lcd.c: 32: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u1397:
decfsz	((??_sendCommand+0)+0),f
	goto	u1397
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u1397
opt asmopt_pop

	line	33
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_sendCommand
	__end_of_sendCommand:
	signat	_sendCommand,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
