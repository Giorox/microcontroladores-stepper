
	; Microchip MPLAB XC8 C Compiler V1.45
	; Copyright (C) 1984-2017 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -oprojeto.cof -mprojeto.map --summary=default --output=default \
	; main.p1 serial.p1 lcd.p1 stepper.p1 --chip=16F887 -P \
	; --runtime=default --opt=default -N-1 -D__DEBUG=1 --debugger=icd2 -g \
	; --asmlist --errformat=Error   [%n] %f; %l.%c %s \
	; --msgformat=Advisory[%n] %s --warnformat=Warning [%n] %f; %l.%c %s
	;


	processor	16F887

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=ENTRY,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	nop	; NOP inserted due to debugger requirements

	; No powerup routine
	; No interrupt routine


	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1 @ 0x2007
;	Oscillator Selection bits
;	FOSC = INTRC_NOCLKOUT, INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, I/O function on RA7/OSC1/CLKIN
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
;	Power-up Timer Enable bit
;	PWRTE = OFF, PWRT disabled
;	RE3/MCLR pin function select bit
;	MCLRE = ON, RE3/MCLR pin function is MCLR
;	Code Protection bit
;	CP = OFF, Program memory code protection is disabled
;	Data Code Protection bit
;	CPD = OFF, Data memory code protection is disabled
;	Brown Out Reset Selection bits
;	BOREN = ON, BOR enabled
;	Internal External Switchover bit
;	IESO = ON, Internal/External Switchover mode is enabled
;	Fail-Safe Clock Monitor Enabled bit
;	FCMEN = ON, Fail-Safe Clock Monitor is enabled
;	Low Voltage Programming Enable bit
;	LVP = OFF, RB3 pin has digital I/O, HV on MCLR must be used for programming
;	In-Circuit Debugger Mode bit
;	DEBUG = 0x1, unprogrammed default

	psect	config
		org 0x0
		dw 0xEFF4

; Config register CONFIG2 @ 0x2008
;	Brown-out Reset Selection bit
;	BOR4V = BOR40V, Brown-out Reset set to 4.0V
;	Flash Program Memory Self Write Enable bits
;	WRT = OFF, Write protection off

	psect	config
		org 0x1
		dw 0xFFFF


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
