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
	FNCALL	_main,___wmul
	FNCALL	_main,_clearDisplay
	FNCALL	_main,_getChar
	FNCALL	_main,_getPosicaoAtual
	FNCALL	_main,_getPosicaoDesejada
	FNCALL	_main,_printLine
	FNCALL	_main,_rotacionarParaDireita
	FNCALL	_main,_sendCharToLCD
	FNCALL	_main,_setCursor
	FNCALL	_main,_setPosicaoDesejada
	FNCALL	_main,_setupDisplay
	FNCALL	_main,_setupSerial
	FNCALL	_main,_setupStepper
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_setupSerial,___lldiv
	FNCALL	_setupDisplay,_sendCommand
	FNCALL	_setCursor,_sendCommand
	FNCALL	_rotacionarParaDireita,___awtoft
	FNCALL	_rotacionarParaDireita,___ftdiv
	FNCALL	_rotacionarParaDireita,___ftmul
	FNCALL	_rotacionarParaDireita,___fttol
	FNCALL	_rotacionarParaDireita,___lwtoft
	FNCALL	_rotacionarParaDireita,_setPosicaoAtual
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_printLine,_sendCharToLCD
	FNCALL	_clearDisplay,_sendCommand
	FNROOT	_main
	global	rotacionarParaEsquerda@F1713
	global	rotacionarParaDireita@F1704
	global	_input
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
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
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\main.c"
	line	31

;initializer for _input
	retlw	020h
	retlw	0

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
	global	_ch
	global	_posicaoDesejada
	global	_delayTime
	global	_velocidade
	global	_posicaoAtual
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
	global	_TXIF
_TXIF	set	0x64
	global	_RCIF
_RCIF	set	0x65
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
_ch:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_posicaoDesejada:
       ds      2

_delayTime:
       ds      2

_velocidade:
       ds      2

_posicaoAtual:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	74
rotacionarParaEsquerda@F1713:
       ds      4

psect	dataBANK1
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	57
rotacionarParaDireita@F1704:
       ds      4

psect	dataBANK1
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\main.c"
	line	31
_input:
       ds      2

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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+10)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram0
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
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
?_getChar:	; 1 bytes @ 0x0
??_getChar:	; 1 bytes @ 0x0
?_setPosicaoDesejada:	; 1 bytes @ 0x0
?_rotacionarParaDireita:	; 1 bytes @ 0x0
?_sendCharToLCD:	; 1 bytes @ 0x0
??_sendCharToLCD:	; 1 bytes @ 0x0
?_sendCommand:	; 1 bytes @ 0x0
??_sendCommand:	; 1 bytes @ 0x0
?_setPosicaoAtual:	; 1 bytes @ 0x0
	global	?_getPosicaoAtual
?_getPosicaoAtual:	; 2 bytes @ 0x0
	global	?_getPosicaoDesejada
?_getPosicaoDesejada:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	setPosicaoAtual@posicao_atual
setPosicaoAtual@posicao_atual:	; 2 bytes @ 0x0
	global	setPosicaoDesejada@posicao_desejada
setPosicaoDesejada@posicao_desejada:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	2
??_getPosicaoAtual:	; 1 bytes @ 0x2
??_getPosicaoDesejada:	; 1 bytes @ 0x2
??_setPosicaoDesejada:	; 1 bytes @ 0x2
??_setPosicaoAtual:	; 1 bytes @ 0x2
	global	sendCommand@cmd
sendCommand@cmd:	; 1 bytes @ 0x2
	global	sendCharToLCD@ch
sendCharToLCD@ch:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_setupDisplay:	; 1 bytes @ 0x3
??_clearDisplay:	; 1 bytes @ 0x3
?_printLine:	; 1 bytes @ 0x3
?_setCursor:	; 1 bytes @ 0x3
	global	setCursor@coluna
setCursor@coluna:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	printLine@s
printLine@s:	; 2 bytes @ 0x3
	ds	1
??_setCursor:	; 1 bytes @ 0x4
??___wmul:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
??_printLine:	; 1 bytes @ 0x5
??___ftpack:	; 1 bytes @ 0x5
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
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds	1
??_setupSerial:	; 1 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 1 bytes @ 0xB
??___lwtoft:	; 1 bytes @ 0xB
	ds	1
??___lwmod:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x0
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x1
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1
	ds	2
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	ds	1
??_sprintf:	; 1 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x4
	ds	1
?_setupSerial:	; 1 bytes @ 0x5
	global	setupSerial@baudrate
setupSerial@baudrate:	; 2 bytes @ 0x5
	ds	1
??___ftmul:	; 1 bytes @ 0x6
	ds	1
??___ftdiv:	; 1 bytes @ 0x7
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
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0xA
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xB
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xC
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xC
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xD
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xF
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x10
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x11
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x11
	ds	4
??___fttol:	; 1 bytes @ 0x15
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x19
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1A
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1E
	ds	1
??_rotacionarParaDireita:	; 1 bytes @ 0x1F
	ds	4
	global	rotacionarParaDireita@fullStep
rotacionarParaDireita@fullStep:	; 4 bytes @ 0x23
	ds	4
	global	rotacionarParaDireita@anguloCiclo
rotacionarParaDireita@anguloCiclo:	; 3 bytes @ 0x27
	ds	3
	global	rotacionarParaDireita@ciclos
rotacionarParaDireita@ciclos:	; 2 bytes @ 0x2A
	ds	2
	global	rotacionarParaDireita@i
rotacionarParaDireita@i:	; 2 bytes @ 0x2C
	ds	2
	global	rotacionarParaDireita@j
rotacionarParaDireita@j:	; 2 bytes @ 0x2E
	ds	2
??_main:	; 1 bytes @ 0x30
	ds	3
	global	main@posAtual_str
main@posAtual_str:	; 10 bytes @ 0x33
	ds	10
	global	main@posDesejada_str
main@posDesejada_str:	; 10 bytes @ 0x3D
	ds	10
	global	main@posAtual
main@posAtual:	; 2 bytes @ 0x47
	ds	2
	global	main@posDesejada
main@posDesejada:	; 2 bytes @ 0x49
	ds	2
	global	main@value
main@value:	; 2 bytes @ 0x4B
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x4D
	ds	2
;!
;!Data Sizes:
;!    Strings     37
;!    Constant    10
;!    Data        10
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           13     13      13
;!    BANK0            80     79      80
;!    BANK1            80      0      18
;!    BANK3            85      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
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
;!		 -> STR_5(CODE[4]), main@posDesejada_str(BANK0[10]), main@posAtual_str(BANK0[10]), STR_2(CODE[13]), 
;!		 -> STR_1(CODE[17]), 
;!
;!    input	PTR unsigned char  size(2) Largest target is 512
;!		 -> RAM(DATA[512]), 
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
;!    _rotacionarParaDireita->___awtoft
;!    ___lwtoft->___ftpack
;!    ___fttol->___awtoft
;!    ___ftmul->___lwtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    _printLine->_sendCharToLCD
;!    _clearDisplay->_sendCommand
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_rotacionarParaDireita
;!    _sprintf->___lwmod
;!    _setupSerial->___lldiv
;!    _rotacionarParaDireita->___fttol
;!    ___fttol->___ftdiv
;!    ___ftdiv->___awtoft
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                31    31      0   12270
;!                                             48 BANK0     31    31      0
;!                             ___wmul
;!                       _clearDisplay
;!                            _getChar
;!                    _getPosicaoAtual
;!                 _getPosicaoDesejada
;!                          _printLine
;!              _rotacionarParaDireita
;!                      _sendCharToLCD
;!                          _setCursor
;!                 _setPosicaoDesejada
;!                       _setupDisplay
;!                        _setupSerial
;!                       _setupStepper
;!                            _sprintf
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
;! (1) _rotacionarParaDireita                               19    19      0    8937
;!                                             31 BANK0     17    17      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                    _setPosicaoAtual
;! ---------------------------------------------------------------------------------
;! (2) _setPosicaoAtual                                      2     0      2     128
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             4     1      3    1835
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     464
;!                                             17 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2245
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             16    10      6    2199
;!                                              1 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             6     3      3    1904
;!                                              8 COMMON     5     2      3
;!                                              0 BANK0      1     1      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    1707
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _printLine                                            2     0      2     354
;!                                              3 COMMON     2     0      2
;!                      _sendCharToLCD
;! ---------------------------------------------------------------------------------
;! (1) _sendCharToLCD                                        3     3      0      44
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
;! (1) ___wmul                                               6     2      4     304
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___wmul
;!   _clearDisplay
;!     _sendCommand
;!   _getChar
;!   _getPosicaoAtual
;!   _getPosicaoDesejada
;!   _printLine
;!     _sendCharToLCD
;!   _rotacionarParaDireita
;!     ___awtoft
;!       ___ftpack
;!     ___ftdiv
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!     _setPosicaoAtual
;!   _sendCharToLCD
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
;!BANK1               50      0      12       7       22.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4F      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               D      D       D       1      100.0%
;!BITCOMMON            D      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      6F      12        0.0%
;!ABS                  0      0      6F       3        0.0%
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
;;  i               2   77[BANK0 ] int 
;;  value           2   75[BANK0 ] unsigned int 
;;  posDesejada_   10   61[BANK0 ] unsigned char [10]
;;  posAtual_str   10   51[BANK0 ] unsigned char [10]
;;  posDesejada     2   73[BANK0 ] unsigned int 
;;  posAtual        2   71[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   48[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      28       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      31       0       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;;		_clearDisplay
;;		_getChar
;;		_getPosicaoAtual
;;		_getPosicaoDesejada
;;		_printLine
;;		_rotacionarParaDireita
;;		_sendCharToLCD
;;		_setCursor
;;		_setPosicaoDesejada
;;		_setupDisplay
;;		_setupSerial
;;		_setupStepper
;;		_sprintf
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
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l1757:	
;main.c: 37: ANSELH=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	41
	
l1759:	
;main.c: 41: TRISCbits.TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,6	;volatile
	line	42
	
l1761:	
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
	
l1763:	
;main.c: 55: setupSerial(2400);
	movlw	060h
	movwf	(setupSerial@baudrate)
	movlw	09h
	movwf	((setupSerial@baudrate))+1
	fcall	_setupSerial
	line	56
	
l1765:	
;main.c: 56: setupDisplay();
	fcall	_setupDisplay
	line	57
	
l1767:	
;main.c: 57: setupStepper();
	fcall	_setupStepper
	line	59
	
l1769:	
;main.c: 59: clearDisplay();
	fcall	_clearDisplay
	line	60
	
l1771:	
;main.c: 60: printLine("PA: ___  PD: ___");
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	line	61
	
l1773:	
;main.c: 61: setCursor(1,0);
	clrf	(setCursor@coluna)
	movlw	low(01h)
	fcall	_setCursor
	line	62
	
l1775:	
;main.c: 62: printLine("Vel: ___ RPM");
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	goto	l1777
	line	64
;main.c: 64: while(1)
	
l49:	
	line	67
	
l1777:	
;main.c: 65: {
;main.c: 67: uint16_t posAtual = getPosicaoAtual();
	fcall	_getPosicaoAtual
	movf	(1+(?_getPosicaoAtual)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@posAtual+1)
	movf	(0+(?_getPosicaoAtual)),w
	movwf	(main@posAtual)
	line	68
	
l1779:	
;main.c: 68: uint16_t posDesejada = getPosicaoDesejada();
	fcall	_getPosicaoDesejada
	movf	(1+(?_getPosicaoDesejada)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@posDesejada+1)
	movf	(0+(?_getPosicaoDesejada)),w
	movwf	(main@posDesejada)
	line	72
	
l1781:	
;main.c: 71: char posAtual_str[10];
;main.c: 72: sprintf(posAtual_str, "%d", posAtual);
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
	line	74
	
l1783:	
;main.c: 73: char posDesejada_str[10];
;main.c: 74: sprintf(posDesejada_str, "%d", posDesejada);
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
	line	77
	
l1785:	
;main.c: 77: setCursor(0,4);
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	78
	
l1787:	
;main.c: 78: printLine(posAtual_str);
	movlw	(low(main@posAtual_str|((0x0)<<8))&0ffh)
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	line	81
	
l1789:	
;main.c: 81: setCursor(0,13);
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	82
	
l1791:	
;main.c: 82: printLine(posDesejada_str);
	movlw	(low(main@posDesejada_str|((0x0)<<8))&0ffh)
	movwf	(printLine@s)
	movlw	(0x0)
	movwf	(printLine@s+1)
	fcall	_printLine
	line	85
	
l1793:	
;main.c: 85: setCursor(1,5);
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(01h)
	fcall	_setCursor
	line	86
	
l1795:	
;main.c: 86: printLine("200");
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	movwf	(printLine@s)
	movlw	80h
	movwf	(printLine@s+1)
	fcall	_printLine
	line	88
	
l1797:	
;main.c: 88: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l1777
u1860:
	line	90
	
l1799:	
;main.c: 89: {
;main.c: 90: RCIF=0;
	bcf	(101/8),(101)&7	;volatile
	line	91
	
l1801:	
;main.c: 91: uint16_t value = 0;
	clrf	(main@value)
	clrf	(main@value+1)
	line	92
;main.c: 92: for(int i =0; i<4; i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1803:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1875
	movlw	04h
	subwf	(main@i),w
u1875:

	skipc
	goto	u1871
	goto	u1870
u1871:
	goto	l1807
u1870:
	goto	l1777
	
l1805:	
	goto	l1777
	line	93
	
l51:	
	line	94
	
l1807:	
;main.c: 93: {
;main.c: 94: ch = getChar();
	fcall	_getChar
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_ch)
	line	95
	
l1809:	
;main.c: 95: if(ch == 0x0D)
		movlw	13
	xorwf	((_ch)),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l1827
u1880:
	line	97
	
l1811:	
;main.c: 96: {
;main.c: 97: if (value == 0)
	movf	((main@value)),w
iorwf	((main@value+1)),w
	btfss	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l1815
u1890:
	line	99
	
l1813:	
;main.c: 98: {
;main.c: 99: value = 360;
	movlw	068h
	movwf	(main@value)
	movlw	01h
	movwf	((main@value))+1
	goto	l1815
	line	100
	
l54:	
	line	101
	
l1815:	
;main.c: 100: }
;main.c: 101: setPosicaoDesejada(value);
	movf	(main@value+1),w
	movwf	(setPosicaoDesejada@posicao_desejada+1)
	movf	(main@value),w
	movwf	(setPosicaoDesejada@posicao_desejada)
	fcall	_setPosicaoDesejada
	line	102
	
l1817:	
;main.c: 102: rotacionarParaDireita();
	fcall	_rotacionarParaDireita
	line	103
	
l1819:	
;main.c: 103: setCursor(0,15);
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(setCursor@coluna)
	movlw	low(0)
	fcall	_setCursor
	line	104
	
l1821:	
;main.c: 104: sendCharToLCD(' ');
	movlw	low(020h)
	fcall	_sendCharToLCD
	line	105
	
l1823:	
;main.c: 105: input = (char *) 0x20;
	movlw	020h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_input)^080h
	movlw	0
	movwf	((_input)^080h)+1
	line	106
;main.c: 106: break;
	goto	l1777
	line	107
	
l1825:	
;main.c: 107: }
	goto	l1839
	line	108
	
l53:	
	line	110
	
l1827:	
;main.c: 108: else
;main.c: 109: {
;main.c: 110: if(i == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((main@i)),w
iorwf	((main@i+1)),w
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l1831
u1900:
	line	112
	
l1829:	
;main.c: 111: {
;main.c: 112: value = value + ((int)ch - 48)*100;
	movf	(_ch),w
	addlw	low(0FFD0h)
	movwf	(___wmul@multiplier)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((___wmul@multiplier))+1
	movlw	064h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@value),w
	addwf	(0+(?___wmul)),w
	movwf	(main@value)
	movf	(main@value+1),w
	skipnc
	incf	(main@value+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(main@value)
	line	113
;main.c: 113: }
	goto	l1839
	line	114
	
l56:	
	
l1831:	
;main.c: 114: else if(i == 1)
		decf	((main@i)),w
iorwf	((main@i+1)),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1835
u1910:
	line	116
	
l1833:	
;main.c: 115: {
;main.c: 116: value = value + ((int)ch - 48)*10;
	movf	(_ch),w
	addlw	low(0FFD0h)
	movwf	(___wmul@multiplier)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((___wmul@multiplier))+1
	movlw	0Ah
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@value),w
	addwf	(0+(?___wmul)),w
	movwf	(main@value)
	movf	(main@value+1),w
	skipnc
	incf	(main@value+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(main@value)
	line	117
;main.c: 117: }
	goto	l1839
	line	118
	
l58:	
	
l1835:	
;main.c: 118: else if(i == 2)
		movlw	2
	xorwf	((main@i)),w
iorwf	((main@i+1)),w
	btfss	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l1839
u1920:
	line	120
	
l1837:	
;main.c: 119: {
;main.c: 120: value = value + ((int)ch - 48);
	movf	(_ch),w
	addwf	(main@value),w
	movwf	(??_main+0)+0
	movf	(main@value+1),w
	skipnc
	incf	(main@value+1),w
	movwf	((??_main+0)+0)+1
	movf	0+(??_main+0)+0,w
	addlw	low(0FFD0h)
	movwf	(main@value)
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(main@value)
	goto	l1839
	line	121
	
l60:	
	goto	l1839
	line	122
	
l59:	
	goto	l1839
	
l57:	
	goto	l1839
	
l55:	
	line	123
	
l1839:	
;main.c: 121: }
;main.c: 122: }
;main.c: 123: input[i] = ch;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_ch),w
	movwf	(??_main+0)+0
	movf	(main@i),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_input)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(main@i+1),w
	skipnc
	incf	(main@i+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_input+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_main+1)+0,0
	bcf	status,7
	movf	(??_main+0)+0,w
	movwf	indf
	line	92
	
l1841:	
	movlw	01h
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	0
	addwf	(main@i+1),f
	
l1843:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u1935
	movlw	04h
	subwf	(main@i),w
u1935:

	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l1807
u1930:
	goto	l1777
	
l52:	
	goto	l1777
	line	125
	
l50:	
	goto	l1777
	line	126
	
l61:	
	line	64
	goto	l1777
	
l62:	
	line	127
	
l63:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
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
	
l1649:	
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
	goto	l1701
	
l195:	
	line	538
	
l1651:	
;doprnt.c: 538: if(c != '%')
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l1657
u1700:
	line	541
	
l1653:	
;doprnt.c: 540: {
;doprnt.c: 541: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1655:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	542
;doprnt.c: 542: continue;
	goto	l1701
	line	543
	
l196:	
	line	548
	
l1657:	
;doprnt.c: 543: }
;doprnt.c: 548: flag = 0;
	clrf	(sprintf@flag)
	line	635
;doprnt.c: 635: switch(c = *f++) {
	goto	l1661
	line	637
;doprnt.c: 637: case 0:
	
l198:	
	line	638
;doprnt.c: 638: goto alldone;
	goto	l1703
	line	697
;doprnt.c: 697: case 'd':
	
l200:	
	goto	l1663
	line	698
	
l201:	
	line	699
;doprnt.c: 698: case 'i':
;doprnt.c: 699: break;
	goto	l1663
	line	802
;doprnt.c: 802: default:
	
l203:	
	line	813
;doprnt.c: 813: continue;
	goto	l1701
	line	822
	
l1659:	
;doprnt.c: 822: }
	goto	l1663
	line	635
	
l197:	
	
l1661:	
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
	goto	l1703
	xorlw	100^0	; case 100
	skipnz
	goto	l1663
	xorlw	105^100	; case 105
	skipnz
	goto	l1663
	goto	l1701
	opt asmopt_pop

	line	822
	
l202:	
	line	1259
	
l1663:	
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
	
l1665:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1261
	
l1667:	
;doprnt.c: 1261: if((int)val < 0) {
	btfss	(sprintf@val+1),7
	goto	u1711
	goto	u1710
u1711:
	goto	l1673
u1710:
	line	1262
	
l1669:	
;doprnt.c: 1262: flag |= 0x03;
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1263
	
l1671:	
;doprnt.c: 1263: val = -val;
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	goto	l1673
	line	1264
	
l204:	
	line	1305
	
l1673:	
;doprnt.c: 1264: }
;doprnt.c: 1266: }
;doprnt.c: 1305: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	
l1675:	
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l1679
u1720:
	goto	l1685
	
l1677:	
	goto	l1685
	line	1306
	
l205:	
	
l1679:	
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
	goto	u1735
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u1735:
	skipnc
	goto	u1731
	goto	u1730
u1731:
	goto	l1683
u1730:
	goto	l1685
	line	1307
	
l1681:	
;doprnt.c: 1307: break;
	goto	l1685
	
l207:	
	line	1305
	
l1683:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l1679
u1740:
	goto	l1685
	
l206:	
	line	1438
	
l1685:	
;doprnt.c: 1422: {
;doprnt.c: 1438: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l1691
u1750:
	line	1439
	
l1687:	
;doprnt.c: 1439: ((*sp++ = ('-')));
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1689:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1691
	
l208:	
	line	1472
	
l1691:	
;doprnt.c: 1469: }
;doprnt.c: 1472: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1474
;doprnt.c: 1474: while(prec--) {
	goto	l1699
	
l210:	
	line	1489
	
l1693:	
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
	
l1695:	
;doprnt.c: 1523: }
;doprnt.c: 1524: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1697:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1699
	line	1525
	
l209:	
	line	1474
	
l1699:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l1693
u1760:
	goto	l1701
	
l211:	
	goto	l1701
	line	1533
	
l194:	
	line	536
	
l1701:	
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
	goto	u1771
	goto	u1770
u1771:
	goto	l1651
u1770:
	goto	l1703
	
l212:	
	goto	l1703
	line	1535
;doprnt.c: 1525: }
;doprnt.c: 1533: }
;doprnt.c: 1535: alldone:
	
l199:	
	line	1538
	
l1703:	
;doprnt.c: 1538: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l213
	line	1540
	
l1705:	
	line	1541
;doprnt.c: 1540: return 0;
;	Return value of _sprintf is never used
	
l213:	
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
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	6
global __ptext2
__ptext2:	;psect for function ___lwmod
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1557:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1575
u1600:
	line	14
	
l1559:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1565
	
l641:	
	line	16
	
l1561:	
	movlw	01h
	
u1615:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1615
	line	17
	
l1563:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1565
	line	18
	
l640:	
	line	15
	
l1565:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l1561
u1620:
	goto	l1567
	
l642:	
	goto	l1567
	line	19
	
l643:	
	line	20
	
l1567:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1635
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1635:
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l1571
u1630:
	line	21
	
l1569:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1571
	
l644:	
	line	22
	
l1571:	
	movlw	01h
	
u1645:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u1645
	line	23
	
l1573:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l1567
u1650:
	goto	l1575
	
l645:	
	goto	l1575
	line	24
	
l639:	
	line	25
	
l1575:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	goto	l646
	
l1577:	
	line	26
	
l646:	
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
psect	text3,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1531:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1533:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l1553
u1530:
	line	16
	
l1535:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1541
	
l631:	
	line	18
	
l1537:	
	movlw	01h
	
u1545:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1545
	line	19
	
l1539:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1541
	line	20
	
l630:	
	line	17
	
l1541:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l1537
u1550:
	goto	l1543
	
l632:	
	goto	l1543
	line	21
	
l633:	
	line	22
	
l1543:	
	movlw	01h
	
u1565:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1565
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1575
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1575:
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l1549
u1570:
	line	24
	
l1545:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1547:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1549
	line	26
	
l634:	
	line	27
	
l1549:	
	movlw	01h
	
u1585:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1585
	line	28
	
l1551:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l1543
u1590:
	goto	l1553
	
l635:	
	goto	l1553
	line	29
	
l629:	
	line	30
	
l1553:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	goto	l636
	
l1555:	
	line	31
	
l636:	
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	11
global __ptext4
__ptext4:	;psect for function _setupStepper
psect	text4
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	11
	global	__size_of_setupStepper
	__size_of_setupStepper	equ	__end_of_setupStepper-_setupStepper
	
_setupStepper:	
;incstack = 0
	opt	stack 7
; Regs used in _setupStepper: [wreg+status,2]
	line	13
	
l1611:	
;stepper.c: 13: posicaoAtual = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_posicaoAtual)^080h
	clrf	(_posicaoAtual+1)^080h
	line	14
	
l1613:	
;stepper.c: 14: velocidade = 1;
	movlw	01h
	movwf	(_velocidade)^080h
	movlw	0
	movwf	((_velocidade)^080h)+1
	line	15
	
l1615:	
;stepper.c: 15: delayTime = 50;
	movlw	032h
	movwf	(_delayTime)^080h
	movlw	0
	movwf	((_delayTime)^080h)+1
	line	16
;stepper.c: 16: posicaoDesejada = 0;
	clrf	(_posicaoDesejada)^080h
	clrf	(_posicaoDesejada+1)^080h
	line	18
	
l147:	
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	4
global __ptext5
__ptext5:	;psect for function _setupSerial
psect	text5
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	4
	global	__size_of_setupSerial
	__size_of_setupSerial	equ	__end_of_setupSerial-_setupSerial
	
_setupSerial:	
;incstack = 0
	opt	stack 6
; Regs used in _setupSerial: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l1583:	
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
	
l1585:	
;serial.c: 7: TXSTAbits.BRGH = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,2	;volatile
	line	8
	
l1587:	
;serial.c: 8: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	9
	
l1589:	
;serial.c: 9: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	10
;serial.c: 10: RCSTA = 0b10010000;
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	11
	
l1591:	
;serial.c: 11: BAUDCTLbits.BRG16 = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(391)^0180h,3	;volatile
	line	14
	
l1593:	
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
u1665:
	clrc
	rrf	(??_setupSerial+0)+3,f
	rrf	(??_setupSerial+0)+2,f
	rrf	(??_setupSerial+0)+1,f
	rrf	(??_setupSerial+0)+0,f
u1660:
	addlw	-1
	skipz
	goto	u1665
	movf	0+(??_setupSerial+0)+0,w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l1595:	
;serial.c: 16: TXIF=RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7	;volatile
	bcf	(100/8),(100)&7	;volatile
	line	17
	
l82:	
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
psect	text6,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lldiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l1507:	
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
	goto	u1461
	goto	u1460
u1461:
	goto	l1527
u1460:
	line	16
	
l1509:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l1513
	
l578:	
	line	18
	
l1511:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u1475:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u1475
	line	19
	movlw	low(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l1513
	line	20
	
l577:	
	line	17
	
l1513:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u1481
	goto	u1480
u1481:
	goto	l1511
u1480:
	goto	l1515
	
l579:	
	goto	l1515
	line	21
	
l580:	
	line	22
	
l1515:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u1495:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u1495
	line	23
	
l1517:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u1505
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u1505
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u1505
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u1505:
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l1523
u1500:
	line	24
	
l1519:	
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
	
l1521:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l1523
	line	26
	
l581:	
	line	27
	
l1523:	
	movlw	01h
u1515:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u1515

	line	28
	
l1525:	
	movlw	01h
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l1515
u1520:
	goto	l1527
	
l582:	
	goto	l1527
	line	29
	
l576:	
	line	30
	
l1527:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l583
	
l1529:	
	line	31
	
l583:	
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	5
global __ptext7
__ptext7:	;psect for function _setupDisplay
psect	text7
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	5
	global	__size_of_setupDisplay
	__size_of_setupDisplay	equ	__end_of_setupDisplay-_setupDisplay
	
_setupDisplay:	
;incstack = 0
	opt	stack 6
; Regs used in _setupDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l1597:	
;lcd.c: 7: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	26
movwf	((??_setupDisplay+0)+0+1),f
	movlw	248
movwf	((??_setupDisplay+0)+0),f
	u1957:
decfsz	((??_setupDisplay+0)+0),f
	goto	u1957
	decfsz	((??_setupDisplay+0)+0+1),f
	goto	u1957
	nop
opt asmopt_pop

	line	8
	
l1599:	
;lcd.c: 8: sendCommand(0x02);
	movlw	low(02h)
	fcall	_sendCommand
	line	9
	
l1601:	
;lcd.c: 9: sendCommand(0x28);
	movlw	low(028h)
	fcall	_sendCommand
	line	10
	
l1603:	
;lcd.c: 10: sendCommand(0x0C);
	movlw	low(0Ch)
	fcall	_sendCommand
	line	11
	
l1605:	
;lcd.c: 11: sendCommand(0x06);
	movlw	low(06h)
	fcall	_sendCommand
	line	12
	
l1607:	
;lcd.c: 12: sendCommand(0x01);
	movlw	low(01h)
	fcall	_sendCommand
	line	13
	
l1609:	
;lcd.c: 13: sendCommand(0x80);
	movlw	low(080h)
	fcall	_sendCommand
	line	14
	
l111:	
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	46
global __ptext8
__ptext8:	;psect for function _setPosicaoDesejada
psect	text8
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	46
	global	__size_of_setPosicaoDesejada
	__size_of_setPosicaoDesejada	equ	__end_of_setPosicaoDesejada-_setPosicaoDesejada
	
_setPosicaoDesejada:	
;incstack = 0
	opt	stack 7
; Regs used in _setPosicaoDesejada: [wreg]
	line	48
	
l1713:	
;stepper.c: 48: posicaoDesejada = posicao_desejada;
	movf	(setPosicaoDesejada@posicao_desejada+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_posicaoDesejada+1)^080h
	movf	(setPosicaoDesejada@posicao_desejada),w
	movwf	(_posicaoDesejada)^080h
	line	49
	
l165:	
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	59
global __ptext9
__ptext9:	;psect for function _setCursor
psect	text9
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
	
l1627:	
;lcd.c: 61: uint8_t position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	62
	
l1629:	
;lcd.c: 62: if (linha == 0)
	movf	((setCursor@linha)),w
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l1633
u1680:
	line	64
	
l1631:	
;lcd.c: 63: {
;lcd.c: 64: position = 0x80;
	movlw	low(080h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	65
;lcd.c: 65: }
	goto	l1637
	line	66
	
l123:	
	
l1633:	
;lcd.c: 66: else if (linha == 1)
		decf	((setCursor@linha)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l1637
u1690:
	line	68
	
l1635:	
;lcd.c: 67: {
;lcd.c: 68: position = 0xC0;
	movlw	low(0C0h)
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	goto	l1637
	line	69
	
l125:	
	goto	l1637
	line	71
	
l124:	
	
l1637:	
;lcd.c: 69: }
;lcd.c: 71: position = position + coluna;
	movf	(setCursor@coluna),w
	addwf	(setCursor@position),w
	movwf	(??_setCursor+0)+0
	movf	(??_setCursor+0)+0,w
	movwf	(setCursor@position)
	line	72
	
l1639:	
;lcd.c: 72: sendCommand(position);
	movf	(setCursor@position),w
	fcall	_sendCommand
	line	73
	
l126:	
	return
	opt stack 0
GLOBAL	__end_of_setCursor
	__end_of_setCursor:
	signat	_setCursor,8313
	global	_rotacionarParaDireita

;; *************** function _rotacionarParaDireita *****************
;; Defined at:
;;		line 51 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fullStep        4   35[BANK0 ] unsigned char [4]
;;  anguloCiclo     3   39[BANK0 ] float 
;;  j               2   46[BANK0 ] unsigned int 
;;  i               2   44[BANK0 ] unsigned int 
;;  ciclos          2   42[BANK0 ] unsigned int 
;;  k               2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_setPosicaoAtual
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	51
global __ptext10
__ptext10:	;psect for function _rotacionarParaDireita
psect	text10
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	51
	global	__size_of_rotacionarParaDireita
	__size_of_rotacionarParaDireita	equ	__end_of_rotacionarParaDireita-_rotacionarParaDireita
	
_rotacionarParaDireita:	
;incstack = 0
	opt	stack 5
; Regs used in _rotacionarParaDireita: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	53
	
l1715:	
;stepper.c: 53: float anguloCiclo = 4 * 0.18;
	movlw	0x52
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotacionarParaDireita@anguloCiclo)
	movlw	0x38
	movwf	(rotacionarParaDireita@anguloCiclo+1)
	movlw	0x3f
	movwf	(rotacionarParaDireita@anguloCiclo+2)
	line	54
	
l1717:	
;stepper.c: 54: uint16_t ciclos = (int)(posicaoDesejada - posicaoAtual)/anguloCiclo;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_posicaoAtual)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_rotacionarParaDireita+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_posicaoAtual+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_rotacionarParaDireita+0)+0+1)
	incf	(??_rotacionarParaDireita+0)+0,f
	skipnz
	incf	((??_rotacionarParaDireita+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_posicaoDesejada)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_rotacionarParaDireita+0)+0,w
	movwf	(___awtoft@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_posicaoDesejada+1)^080h,w
	skipnc
	incf	(_posicaoDesejada+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_rotacionarParaDireita+0)+0,w
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftdiv@f1+2)
	movf	(rotacionarParaDireita@anguloCiclo),w
	movwf	(___ftdiv@f2)
	movf	(rotacionarParaDireita@anguloCiclo+1),w
	movwf	(___ftdiv@f2+1)
	movf	(rotacionarParaDireita@anguloCiclo+2),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	movwf	(rotacionarParaDireita@ciclos+1)
	movf	(0+(?___fttol)),w
	movwf	(rotacionarParaDireita@ciclos)
	line	58
	
l1719:	
;stepper.c: 55: uint16_t i;
;stepper.c: 56: uint16_t j;
;stepper.c: 57: uint16_t k;
;stepper.c: 58: char fullStep[4] = {0b00001100,0b00000110,0b00000011, 0b00001001};
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotacionarParaDireita@F1704+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotacionarParaDireita@fullStep+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotacionarParaDireita@F1704+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotacionarParaDireita@fullStep+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotacionarParaDireita@F1704+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotacionarParaDireita@fullStep+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(rotacionarParaDireita@F1704)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(rotacionarParaDireita@fullStep)

	line	59
	
l1721:	
;stepper.c: 59: for(i = 0; i < ciclos; i++){
	clrf	(rotacionarParaDireita@i)
	clrf	(rotacionarParaDireita@i+1)
	goto	l170
	
l171:	
	line	60
	
l1723:	
;stepper.c: 60: for(j = 0; j<4;j++){
	clrf	(rotacionarParaDireita@j)
	clrf	(rotacionarParaDireita@j+1)
	
l1725:	
	movlw	0
	subwf	(rotacionarParaDireita@j+1),w
	movlw	04h
	skipnz
	subwf	(rotacionarParaDireita@j),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l1729
u1790:
	goto	l1737
	
l1727:	
	goto	l1737
	
l172:	
	line	61
	
l1729:	
;stepper.c: 61: PORTD = fullStep[j];
	movf	(rotacionarParaDireita@j),w
	addlw	low(rotacionarParaDireita@fullStep|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	62
	
l1731:	
;stepper.c: 62: _delay((unsigned long)((delayTime)*(4000000/4000000.0)));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_delayTime+1)^080h,w
	movwf	(___lwtoft@c+1)
	movf	(_delayTime)^080h,w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+?___fttol),w
	movwf	(??_rotacionarParaDireita+0)+0
	movf	(1+?___fttol),w
	movwf	((??_rotacionarParaDireita+0)+0+1)
	movf	(2+?___fttol),w
	movwf	((??_rotacionarParaDireita+0)+0+2)
	movf	(3+?___fttol),w
	movwf	((??_rotacionarParaDireita+0)+0+3)
		opt asmopt_push
	opt asmopt_off
	opt asmopt_pop

	line	60
	
l1733:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(rotacionarParaDireita@j),f
	skipnc
	incf	(rotacionarParaDireita@j+1),f
	movlw	0
	addwf	(rotacionarParaDireita@j+1),f
	
l1735:	
	movlw	0
	subwf	(rotacionarParaDireita@j+1),w
	movlw	04h
	skipnz
	subwf	(rotacionarParaDireita@j),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l1729
u1800:
	goto	l1737
	
l173:	
	line	59
	
l1737:	
	movlw	01h
	addwf	(rotacionarParaDireita@i),f
	skipnc
	incf	(rotacionarParaDireita@i+1),f
	movlw	0
	addwf	(rotacionarParaDireita@i+1),f
	
l170:	
	movf	(rotacionarParaDireita@ciclos+1),w
	subwf	(rotacionarParaDireita@i+1),w
	skipz
	goto	u1815
	movf	(rotacionarParaDireita@ciclos),w
	subwf	(rotacionarParaDireita@i),w
u1815:
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l1723
u1810:
	goto	l1739
	
l174:	
	line	65
	
l1739:	
;stepper.c: 63: }
;stepper.c: 64: }
;stepper.c: 65: PORTD = 0x00;
	clrf	(8)	;volatile
	line	66
	
l1741:	
;stepper.c: 66: setPosicaoAtual(posicaoDesejada);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_posicaoDesejada+1)^080h,w
	movwf	(setPosicaoAtual@posicao_atual+1)
	movf	(_posicaoDesejada)^080h,w
	movwf	(setPosicaoAtual@posicao_atual)
	fcall	_setPosicaoAtual
	line	67
	
l175:	
	return
	opt stack 0
GLOBAL	__end_of_rotacionarParaDireita
	__end_of_rotacionarParaDireita:
	signat	_rotacionarParaDireita,89
	global	_setPosicaoAtual

;; *************** function _setPosicaoAtual *****************
;; Defined at:
;;		line 20 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
;; Parameters:    Size  Location     Type
;;  posicao_atua    2    0[COMMON] unsigned int 
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
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	20
global __ptext11
__ptext11:	;psect for function _setPosicaoAtual
psect	text11
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	20
	global	__size_of_setPosicaoAtual
	__size_of_setPosicaoAtual	equ	__end_of_setPosicaoAtual-_setPosicaoAtual
	
_setPosicaoAtual:	
;incstack = 0
	opt	stack 6
; Regs used in _setPosicaoAtual: [wreg]
	line	22
	
l1359:	
;stepper.c: 22: posicaoAtual = posicao_atual;
	movf	(setPosicaoAtual@posicao_atual+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_posicaoAtual+1)^080h
	movf	(setPosicaoAtual@posicao_atual),w
	movwf	(_posicaoAtual)^080h
	line	23
	
l150:	
	return
	opt stack 0
GLOBAL	__end_of_setPosicaoAtual
	__end_of_setPosicaoAtual:
	signat	_setPosicaoAtual,4217
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1579:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l651
	
l1581:	
	line	31
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   26[BANK0 ] unsigned long 
;;  exp1            1   30[BANK0 ] unsigned char 
;;  sign1           1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   17[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\fttol.c"
	line	44
global __ptext13
__ptext13:	;psect for function ___fttol
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1465:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l1471
u1360:
	line	50
	
l1467:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l542
	
l1469:	
	goto	l542
	
l541:	
	line	51
	
l1471:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1375:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1370:
	addlw	-1
	skipz
	goto	u1375
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1473:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1475:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1477:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1479:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1481:	
	btfss	(___fttol@exp1),7
	goto	u1381
	goto	u1380
u1381:
	goto	l1491
u1380:
	line	57
	
l1483:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1391
	goto	u1390
u1391:
	goto	l1489
u1390:
	line	58
	
l1485:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l542
	
l1487:	
	goto	l542
	
l544:	
	goto	l1489
	line	59
	
l545:	
	line	60
	
l1489:	
	movlw	01h
u1405:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1405

	line	61
	movlw	low(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l1489
u1410:
	goto	l1499
	
l546:	
	line	62
	goto	l1499
	
l543:	
	line	63
	
l1491:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l549
u1420:
	line	64
	
l1493:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l542
	
l1495:	
	goto	l542
	
l548:	
	line	65
	goto	l549
	
l550:	
	line	66
	
l1497:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1435:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1435
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l549:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l1497
u1440:
	goto	l1499
	
l551:	
	goto	l1499
	line	69
	
l547:	
	line	70
	
l1499:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l1503
u1450:
	line	71
	
l1501:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1503
	
l552:	
	line	72
	
l1503:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l542
	
l1505:	
	line	73
	
l542:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftmul.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftmul
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1415:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l1421
u1220:
	line	68
	
l1417:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l521
	
l1419:	
	goto	l521
	
l520:	
	line	69
	
l1421:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1427
u1230:
	line	70
	
l1423:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l521
	
l1425:	
	goto	l521
	
l522:	
	line	71
	
l1427:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1245:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1240:
	addlw	-1
	skipz
	goto	u1245
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1255:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1250:
	addlw	-1
	skipz
	goto	u1255
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1429:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1431:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1433:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1435:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1437:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1439
	line	135
	
l523:	
	line	136
	
l1439:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1261
	goto	u1260
u1261:
	goto	l1443
u1260:
	line	137
	
l1441:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1271
	addwf	(___ftmul@f3_as_product+1),f
u1271:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1272
	addwf	(___ftmul@f3_as_product+2),f
u1272:

	goto	l1443
	
l524:	
	line	138
	
l1443:	
	movlw	01h
u1285:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1285

	line	139
	
l1445:	
	movlw	01h
u1295:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1295
	line	140
	
l1447:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1439
u1300:
	goto	l1449
	
l525:	
	line	143
	
l1449:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1451
	line	144
	
l526:	
	line	145
	
l1451:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l1455
u1310:
	line	146
	
l1453:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1321
	addwf	(___ftmul@f3_as_product+1),f
u1321:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1322
	addwf	(___ftmul@f3_as_product+2),f
u1322:

	goto	l1455
	
l527:	
	line	147
	
l1455:	
	movlw	01h
u1335:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1335

	line	148
	
l1457:	
	movlw	01h
u1345:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1345

	line	149
	
l1459:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l1451
u1350:
	goto	l1461
	
l528:	
	line	156
	
l1461:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l521
	
l1463:	
	line	157
	
l521:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    1[BANK0 ] float 
;;  f1              3    4[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   12[BANK0 ] float 
;;  sign            1   16[BANK0 ] unsigned char 
;;  exp             1   15[BANK0 ] unsigned char 
;;  cntr            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    1[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftdiv.c"
	line	56
global __ptext15
__ptext15:	;psect for function ___ftdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1373:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1379
u1140:
	line	64
	
l1375:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l506
	
l1377:	
	goto	l506
	
l505:	
	line	65
	
l1379:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1385
u1150:
	line	66
	
l1381:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l506
	
l1383:	
	goto	l506
	
l507:	
	line	67
	
l1385:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1387:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1389:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1165:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1160:
	addlw	-1
	skipz
	goto	u1165
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	70
	
l1391:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1175:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1170:
	addlw	-1
	skipz
	goto	u1175
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l1393:	
	movlw	low(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	72
	
l1395:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1397:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1399
	line	77
	
l508:	
	line	78
	
l1399:	
	movlw	01h
u1185:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1185
	line	79
	
l1401:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1195
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1195
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1195:
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l1407
u1190:
	line	80
	
l1403:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l1405:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1407
	line	82
	
l509:	
	line	83
	
l1407:	
	movlw	01h
u1205:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1205
	line	84
	
l1409:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l1399
u1210:
	goto	l1411
	
l510:	
	line	85
	
l1411:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l506
	
l1413:	
	line	86
	
l506:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       1       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_rotacionarParaDireita
;;		_rotacionarParaEsquerda
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\awtoft.c"
	line	32
global __ptext16
__ptext16:	;psect for function ___awtoft
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1361:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l1363:	
	btfss	(___awtoft@c+1),7
	goto	u1131
	goto	u1130
u1131:
	goto	l1369
u1130:
	line	38
	
l1365:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1367:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1369
	line	40
	
l447:	
	line	41
	
l1369:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l448
	
l1371:	
	line	42
	
l448:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\float.c"
	line	62
global __ptext17
__ptext17:	;psect for function ___ftpack
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1279:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u991
	goto	u990
u991:
	goto	l1283
u990:
	
l1281:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l1289
u1000:
	goto	l1283
	
l453:	
	line	65
	
l1283:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l454
	
l1285:	
	goto	l454
	
l451:	
	line	66
	goto	l1289
	
l456:	
	line	67
	
l1287:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1015:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1015

	goto	l1289
	line	69
	
l455:	
	line	66
	
l1289:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1021
	goto	u1020
u1021:
	goto	l1287
u1020:
	goto	l458
	
l457:	
	line	70
	goto	l458
	
l459:	
	line	71
	
l1291:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1293:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1295:	
	movlw	01h
u1035:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1035

	line	74
	
l458:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1291
u1040:
	goto	l1299
	
l460:	
	line	75
	goto	l1299
	
l462:	
	line	76
	
l1297:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1055:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1055
	goto	l1299
	line	78
	
l461:	
	line	75
	
l1299:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l465
u1060:
	
l1301:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1071
	goto	u1070
u1071:
	goto	l1297
u1070:
	goto	l465
	
l464:	
	
l465:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l466
u1080:
	line	80
	
l1303:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l466:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1305:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1095:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1090:
	addlw	-1
	skipz
	goto	u1095
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1307:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l467
u1100:
	line	84
	
l1309:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l467:	
	line	85
	line	86
	
l454:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_printLine

;; *************** function _printLine *****************
;; Defined at:
;;		line 75 in file "C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR unsigned char 
;;		 -> STR_5(4), main@posDesejada_str(10), main@posAtual_str(10), STR_2(13), 
;;		 -> STR_1(17), 
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	75
global __ptext18
__ptext18:	;psect for function _printLine
psect	text18
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	75
	global	__size_of_printLine
	__size_of_printLine	equ	__end_of_printLine-_printLine
	
_printLine:	
;incstack = 0
	opt	stack 6
; Regs used in _printLine: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l1619:	
;lcd.c: 77: while(*s) {
	goto	l1625
	
l130:	
	line	78
	
l1621:	
;lcd.c: 78: sendCharToLCD(*s++);
	movf	(printLine@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printLine@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_sendCharToLCD
	
l1623:	
	movlw	01h
	addwf	(printLine@s),f
	skipnc
	incf	(printLine@s+1),f
	goto	l1625
	line	79
	
l129:	
	line	77
	
l1625:	
	movf	(printLine@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printLine@s),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l1621
u1670:
	goto	l132
	
l131:	
	line	80
	
l132:	
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
;;		_main
;;		_printLine
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	35
global __ptext19
__ptext19:	;psect for function _sendCharToLCD
psect	text19
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	35
	global	__size_of_sendCharToLCD
	__size_of_sendCharToLCD	equ	__end_of_sendCharToLCD-_sendCharToLCD
	
_sendCharToLCD:	
;incstack = 0
	opt	stack 7
; Regs used in _sendCharToLCD: [wreg+status,2+status,0]
;sendCharToLCD@ch stored from wreg
	movwf	(sendCharToLCD@ch)
	line	37
	
l1311:	
;lcd.c: 37: PORTB = (ch & 0xF0)>>4;
	movf	(sendCharToLCD@ch),w
	movwf	(??_sendCharToLCD+0)+0
	movlw	04h
u1115:
	clrc
	rrf	(??_sendCharToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u1115
	movf	0+(??_sendCharToLCD+0)+0,w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	38
	
l1313:	
;lcd.c: 38: PORTBbits.RB4 = 1;
	bsf	(6),4	;volatile
	line	39
	
l1315:	
;lcd.c: 39: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	40
	
l1317:	
;lcd.c: 40: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1967:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1967
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1967
opt asmopt_pop

	line	41
	
l1319:	
;lcd.c: 41: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	43
	
l1321:	
;lcd.c: 43: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1977:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1977
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1977
opt asmopt_pop

	line	45
	
l1323:	
;lcd.c: 45: PORTB = (ch & 0x0F);
	movf	(sendCharToLCD@ch),w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	46
	
l1325:	
;lcd.c: 46: PORTBbits.RB4 = 1;
	bsf	(6),4	;volatile
	line	47
	
l1327:	
;lcd.c: 47: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	48
	
l1329:	
;lcd.c: 48: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1987:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1987
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1987
opt asmopt_pop

	line	49
	
l1331:	
;lcd.c: 49: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	51
	
l1333:	
;lcd.c: 51: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCharToLCD+0)+0+1),f
	movlw	125
movwf	((??_sendCharToLCD+0)+0),f
	u1997:
decfsz	((??_sendCharToLCD+0)+0),f
	goto	u1997
	decfsz	((??_sendCharToLCD+0)+0+1),f
	goto	u1997
opt asmopt_pop

	line	52
	
l117:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	41
global __ptext20
__ptext20:	;psect for function _getPosicaoDesejada
psect	text20
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	41
	global	__size_of_getPosicaoDesejada
	__size_of_getPosicaoDesejada	equ	__end_of_getPosicaoDesejada-_getPosicaoDesejada
	
_getPosicaoDesejada:	
;incstack = 0
	opt	stack 7
; Regs used in _getPosicaoDesejada: [wreg]
	line	43
	
l1645:	
;stepper.c: 43: return posicaoDesejada;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_posicaoDesejada+1)^080h,w
	movwf	(?_getPosicaoDesejada+1)
	movf	(_posicaoDesejada)^080h,w
	movwf	(?_getPosicaoDesejada)
	goto	l162
	
l1647:	
	line	44
	
l162:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext21
__ptext21:	;psect for function _getPosicaoAtual
psect	text21
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\stepper.c"
	line	36
	global	__size_of_getPosicaoAtual
	__size_of_getPosicaoAtual	equ	__end_of_getPosicaoAtual-_getPosicaoAtual
	
_getPosicaoAtual:	
;incstack = 0
	opt	stack 7
; Regs used in _getPosicaoAtual: [wreg]
	line	38
	
l1641:	
;stepper.c: 38: return posicaoAtual;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_posicaoAtual+1)^080h,w
	movwf	(?_getPosicaoAtual+1)
	movf	(_posicaoAtual)^080h,w
	movwf	(?_getPosicaoAtual)
	goto	l159
	
l1643:	
	line	39
	
l159:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	26
global __ptext22
__ptext22:	;psect for function _getChar
psect	text22
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\serial.c"
	line	26
	global	__size_of_getChar
	__size_of_getChar	equ	__end_of_getChar-_getChar
	
_getChar:	
;incstack = 0
	opt	stack 7
; Regs used in _getChar: [wreg]
	line	28
	
l1707:	
;serial.c: 28: while(!RCIF);
	goto	l91
	
l92:	
	
l91:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l91
u1780:
	
l93:	
	line	29
;serial.c: 29: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	30
	
l1709:	
;serial.c: 30: return RCREG;
	movf	(26),w	;volatile
	goto	l94
	
l1711:	
	line	31
	
l94:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	54
global __ptext23
__ptext23:	;psect for function _clearDisplay
psect	text23
	file	"C:\Users\Aluno\Desktop\microcontroladores-stepper-master\lcd.c"
	line	54
	global	__size_of_clearDisplay
	__size_of_clearDisplay	equ	__end_of_clearDisplay-_clearDisplay
	
_clearDisplay:	
;incstack = 0
	opt	stack 6
; Regs used in _clearDisplay: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l1617:	
;lcd.c: 56: sendCommand(0x01);
	movlw	low(01h)
	fcall	_sendCommand
	line	57
	
l120:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext24
__ptext24:	;psect for function _sendCommand
psect	text24
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
	
l1335:	
;lcd.c: 18: PORTB = (cmd & 0xF0)>>4;
	movf	(sendCommand@cmd),w
	movwf	(??_sendCommand+0)+0
	movlw	04h
u1125:
	clrc
	rrf	(??_sendCommand+0)+0,f
	addlw	-1
	skipz
	goto	u1125
	movf	0+(??_sendCommand+0)+0,w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	19
	
l1337:	
;lcd.c: 19: PORTBbits.RB4 = 0;
	bcf	(6),4	;volatile
	line	20
	
l1339:	
;lcd.c: 20: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	21
	
l1341:	
;lcd.c: 21: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u2007:
decfsz	((??_sendCommand+0)+0),f
	goto	u2007
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u2007
opt asmopt_pop

	line	22
	
l1343:	
;lcd.c: 22: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	24
	
l1345:	
;lcd.c: 24: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u2017:
decfsz	((??_sendCommand+0)+0),f
	goto	u2017
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u2017
opt asmopt_pop

	line	26
	
l1347:	
;lcd.c: 26: PORTB = (cmd & 0x0F);
	movf	(sendCommand@cmd),w
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l1349:	
;lcd.c: 27: PORTBbits.RB4 = 0;
	bcf	(6),4	;volatile
	line	28
	
l1351:	
;lcd.c: 28: PORTBbits.RB5 = 1;
	bsf	(6),5	;volatile
	line	29
	
l1353:	
;lcd.c: 29: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u2027:
decfsz	((??_sendCommand+0)+0),f
	goto	u2027
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u2027
opt asmopt_pop

	line	30
	
l1355:	
;lcd.c: 30: PORTBbits.RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
	line	32
	
l1357:	
;lcd.c: 32: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	7
movwf	((??_sendCommand+0)+0+1),f
	movlw	125
movwf	((??_sendCommand+0)+0),f
	u2037:
decfsz	((??_sendCommand+0)+0),f
	goto	u2037
	decfsz	((??_sendCommand+0)+0+1),f
	goto	u2037
opt asmopt_pop

	line	33
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_sendCommand
	__end_of_sendCommand:
	signat	_sendCommand,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
	line	15
global __ptext25
__ptext25:	;psect for function ___wmul
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1743:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1745
	line	44
	
l296:	
	line	45
	
l1745:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1821
	goto	u1820
u1821:
	goto	l297
u1820:
	line	46
	
l1747:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l297:	
	line	47
	movlw	01h
	
u1835:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1835
	line	48
	
l1749:	
	movlw	01h
	
u1845:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1845
	line	49
	
l1751:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l1745
u1850:
	goto	l1753
	
l298:	
	line	52
	
l1753:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	goto	l299
	
l1755:	
	line	53
	
l299:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
