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
	FNCALL	_main,_sendChar
	FNCALL	_main,_setCursor
	FNCALL	_main,_setupDisplay
	FNCALL	_main,_setupSerial
	FNCALL	_setupSerial,___lldiv
	FNCALL	_setupDisplay,_sendCommand
	FNCALL	_setCursor,_sendCommand
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_RCSTA
_RCSTA	set	0x18
	global	_RCIF
_RCIF	set	0x65
	global	_TXIF
_TXIF	set	0x64
	global	_SPBRG
_SPBRG	set	0x99
	global	_TXSTA
_TXSTA	set	0x98
	global	_TRISB
_TRISB	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
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
?_sendChar:	; 1 bytes @ 0x0
??_sendChar:	; 1 bytes @ 0x0
?_sendCommand:	; 1 bytes @ 0x0
??_sendCommand:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	sendChar@ch
sendChar@ch:	; 1 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	sendCommand@cmd
sendCommand@cmd:	; 1 bytes @ 0x1
	ds	1
??_setupDisplay:	; 1 bytes @ 0x2
?_setCursor:	; 1 bytes @ 0x2
	global	setCursor@coluna
setCursor@coluna:	; 1 bytes @ 0x2
	ds	1
??_setCursor:	; 1 bytes @ 0x3
	ds	1
	global	setCursor@linha
setCursor@linha:	; 1 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	setCursor@position
setCursor@position:	; 1 bytes @ 0x5
	ds	3
??___lldiv:	; 1 bytes @ 0x8
	ds	1
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_setupSerial:	; 1 bytes @ 0x0
	global	setupSerial@baudrate
setupSerial@baudrate:	; 2 bytes @ 0x0
	ds	2
??_setupSerial:	; 1 bytes @ 0x2
	ds	4
	global	setupSerial@FOSC
setupSerial@FOSC:	; 4 bytes @ 0x6
	ds	4
??_main:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     11      11
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _setupSerial->___lldiv
;!    _setupDisplay->_sendCommand
;!    _setCursor->_sendCommand
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_setupSerial
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
;! (0) _main                                                 1     1      0     578
;!                                             10 BANK0      1     1      0
;!                           _sendChar
;!                          _setCursor
;!                       _setupDisplay
;!                        _setupSerial
;! ---------------------------------------------------------------------------------
;! (1) _setupSerial                                         10     8      2     366
;!                                              0 BANK0     10     8      2
;!                            ___lldiv
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     268
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _setupDisplay                                         0     0      0      15
;!                        _sendCommand
;! ---------------------------------------------------------------------------------
;! (1) _setCursor                                            4     3      1     182
;!                                              2 COMMON     4     3      1
;!                        _sendCommand
;! ---------------------------------------------------------------------------------
;! (2) _sendCommand                                          2     2      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _sendChar                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _sendChar
;!   _setCursor
;!     _sendCommand
;!   _setupDisplay
;!     _sendCommand
;!   _setupSerial
;!     ___lldiv
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      B       B       5       13.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   16[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sendChar
;;		_setCursor
;;		_setupDisplay
;;		_setupSerial
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\main.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\main.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l670:	
;main.c: 36: TRISCbits.TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,6	;volatile
	line	37
;main.c: 37: TRISCbits.TRISC7 = 1;
	bsf	(135)^080h,7	;volatile
	line	41
	
l672:	
;main.c: 41: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	42
	
l674:	
;main.c: 42: TRISCbits.TRISC0 = 0;
	bcf	(135)^080h,0	;volatile
	line	43
	
l676:	
;main.c: 43: TRISCbits.TRISC1 = 0;
	bcf	(135)^080h,1	;volatile
	line	44
	
l678:	
;main.c: 44: TRISCbits.TRISC2 = 0;
	bcf	(135)^080h,2	;volatile
	line	47
	
l680:	
;main.c: 47: setupSerial(9600);
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setupSerial@baudrate)
	movlw	025h
	movwf	((setupSerial@baudrate))+1
	fcall	_setupSerial
	line	48
	
l682:	
;main.c: 48: setupDisplay();
	fcall	_setupDisplay
	line	50
	
l684:	
;main.c: 50: sendChar('a');
	movlw	low(061h)
	fcall	_sendChar
	line	51
	
l686:	
;main.c: 51: setCursor(0, 11);
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	52
	
l17:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setupSerial

;; *************** function _setupSerial *****************
;; Defined at:
;;		line 4 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
;; Parameters:    Size  Location     Type
;;  baudrate        2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  FOSC            4    6[BANK0 ] unsigned long 
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
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
	line	4
global __ptext1
__ptext1:	;psect for function _setupSerial
psect	text1
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
	line	4
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:	
;incstack = 0
	opt	stack 6
; Regs used in _setupSerial: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l650:	
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
;serial.c: 7: TXSTA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	8
;serial.c: 8: RCSTA = 0b10010000;
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	11
	
l652:	
;serial.c: 11: SPBRG = ((FOSC/baudrate)/64) - 1;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setupSerial+0)+0
	movf	(1+?___lldiv),w
	movwf	((??_setupSerial+0)+0+1)
	movf	(2+?___lldiv),w
	movwf	((??_setupSerial+0)+0+2)
	movf	(3+?___lldiv),w
	movwf	((??_setupSerial+0)+0+3)
	movlw	06h
u205:
	clrc
	rrf	(??_setupSerial+0)+3,f
	rrf	(??_setupSerial+0)+2,f
	rrf	(??_setupSerial+0)+1,f
	rrf	(??_setupSerial+0)+0,f
u200:
	addlw	-1
	skipz
	goto	u205
	movf	0+(??_setupSerial+0)+0,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	13
	
l654:	
;serial.c: 13: TXIF=RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	bcf	(100/8),(100)&7	;volatile
	line	14
	
l34:	
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
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
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
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupSerial
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
global __ptext2
__ptext2:	;psect for function ___lldiv
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l626:	
	movlw	high highword(0)
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
	goto	u131
	goto	u130
u131:
	goto	l646
u130:
	line	16
	
l628:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l632
	
l437:	
	line	18
	
l630:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u145:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u145
	line	19
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l632
	line	20
	
l436:	
	line	17
	
l632:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u151
	goto	u150
u151:
	goto	l630
u150:
	goto	l634
	
l438:	
	goto	l634
	line	21
	
l439:	
	line	22
	
l634:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u165:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u165
	line	23
	
l636:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u175
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u175
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u175
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u175:
	skipc
	goto	u171
	goto	u170
u171:
	goto	l642
u170:
	line	24
	
l638:	
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
	
l640:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l642
	line	26
	
l440:	
	line	27
	
l642:	
	movlw	01h
u185:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u185

	line	28
	
l644:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l634
u190:
	goto	l646
	
l441:	
	goto	l646
	line	29
	
l435:	
	line	30
	
l646:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l442
	
l648:	
	line	31
	
l442:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_setupDisplay

;; *************** function _setupDisplay *****************
;; Defined at:
;;		line 5 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
	line	5
global __ptext3
__ptext3:	;psect for function _setupDisplay
psect	text3
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
	line	5
	global	__size_of_setupDisplay
	__size_of_setupDisplay	equ	__end_of_setupDisplay-_setupDisplay
	
_setupDisplay:	
;incstack = 0
	opt	stack 6
; Regs used in _setupDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l572:	
;lcd.c: 7: sendCommand(0x38);
	movlw	low(038h)
	fcall	_sendCommand
	line	8
;lcd.c: 8: sendCommand(0x0C);
	movlw	low(0Ch)
	fcall	_sendCommand
	line	9
;lcd.c: 9: sendCommand(0x06);
	movlw	low(06h)
	fcall	_sendCommand
	line	10
;lcd.c: 10: sendCommand(0x80);
	movlw	low(080h)
	fcall	_sendCommand
	line	11
;lcd.c: 11: sendCommand(0x8A);
	movlw	low(08Ah)
	fcall	_sendCommand
	line	12
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_setupDisplay
	__end_of_setupDisplay:
	signat	_setupDisplay,89
	global	_setCursor

;; *************** function _setCursor *****************
;; Defined at:
;;		line 39 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
;; Parameters:    Size  Location     Type
;;  linha           1    wreg     unsigned char 
;;  coluna          1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  linha           1    4[COMMON] unsigned char 
;;  position        1    5[COMMON] unsigned char 
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext4
__ptext4:	;psect for function _setCursor
psect	text4
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
	line	39
	global	__size_of_setCursor
	__size_of_setCursor	equ	__end_of_setCursor-_setCursor
	
_setCursor:	
;incstack = 0
	opt	stack 6
; Regs used in _setCursor: [wreg+status,2+status,0+pclath+cstack]
;setCursor@linha stored from wreg
	movwf	(setCursor@linha)
	line	41
	
l656:	
;lcd.c: 41: uint8_t position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	42
	
l658:	
;lcd.c: 42: if (linha == 0)
	movf	((setCursor@linha)),w
	btfss	status,2
	goto	u211
	goto	u210
u211:
	goto	l662
u210:
	line	44
	
l660:	
;lcd.c: 43: {
;lcd.c: 44: position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	45
;lcd.c: 45: }
	goto	l666
	line	46
	
l69:	
	
l662:	
;lcd.c: 46: else if (linha == 1)
		decf	((setCursor@linha)),w
	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l666
u220:
	line	48
	
l664:	
;lcd.c: 47: {
;lcd.c: 48: position = 0xC0;
	movlw	low(0C0h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	goto	l666
	line	49
	
l71:	
	goto	l666
	line	51
	
l70:	
	
l666:	
;lcd.c: 49: }
;lcd.c: 51: position = position + coluna;
	movf	(setCursor@coluna),w
	addwf	(setCursor@position),w
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	52
	
l668:	
;lcd.c: 52: sendCommand(position);
	movf	(setCursor@position),w
	fcall	_sendCommand
	line	53
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_setCursor
	__end_of_setCursor:
	signat	_setCursor,8313
	global	_sendCommand

;; *************** function _sendCommand *****************
;; Defined at:
;;		line 14 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setupDisplay
;;		_setCursor
;;		_clearDisplay
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	14
global __ptext5
__ptext5:	;psect for function _sendCommand
psect	text5
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\lcd.c"
	line	14
	global	__size_of_sendCommand
	__size_of_sendCommand	equ	__end_of_sendCommand-_sendCommand
	
_sendCommand:	
;incstack = 0
	opt	stack 6
; Regs used in _sendCommand: [wreg]
;sendCommand@cmd stored from wreg
	movwf	(sendCommand@cmd)
	line	16
	
l532:	
;lcd.c: 16: PORTB = cmd;
	movf	(sendCommand@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	17
	
l534:	
;lcd.c: 17: TRISCbits.TRISC0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,0	;volatile
	line	18
	
l536:	
;lcd.c: 18: TRISCbits.TRISC1 = 0;
	bcf	(135)^080h,1	;volatile
	line	19
	
l538:	
;lcd.c: 19: TRISCbits.TRISC2 = 1;
	bsf	(135)^080h,2	;volatile
	line	20
;lcd.c: 20: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	16
movwf	((??_sendCommand+0)+0),f
	u237:
decfsz	(??_sendCommand+0)+0,f
	goto	u237
	nop
opt asmopt_pop

	line	21
	
l540:	
;lcd.c: 21: TRISCbits.TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,2	;volatile
	line	22
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_sendCommand
	__end_of_sendCommand:
	signat	_sendCommand,4217
	global	_sendChar

;; *************** function _sendChar *****************
;; Defined at:
;;		line 16 in file "C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
	line	16
global __ptext6
__ptext6:	;psect for function _sendChar
psect	text6
	file	"C:\Users\giova\Desktop\UNIFEI\ECAi11 - Microcontroladores\Projeto - 2022\serial.c"
	line	16
	global	__size_of_sendChar
	__size_of_sendChar	equ	__end_of_sendChar-_sendChar
	
_sendChar:	
;incstack = 0
	opt	stack 7
; Regs used in _sendChar: [wreg]
;sendChar@ch stored from wreg
	movwf	(sendChar@ch)
	line	18
	
l574:	
;serial.c: 18: TXREG = ch;
	movf	(sendChar@ch),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	19
;serial.c: 19: while(!TXIF);
	goto	l37
	
l38:	
	
l37:	
	btfss	(100/8),(100)&7	;volatile
	goto	u91
	goto	u90
u91:
	goto	l37
u90:
	
l39:	
	line	20
;serial.c: 20: TXIF = 0;
	bcf	(100/8),(100)&7	;volatile
	line	21
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_sendChar
	__end_of_sendChar:
	signat	_sendChar,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
