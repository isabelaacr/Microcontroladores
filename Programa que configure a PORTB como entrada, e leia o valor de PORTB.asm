; AssemblerApplication1.asm
;
; Created: 25/03/2025 13:53:55
; Author : aluno
; Faça um programa que configure a PORTB como entrada, e leia o valor de PORTB. Faça esse valor + 15 e mostre em PORTD.


; Replace with your application code
start:
	ldi r16, 0 ; zera o registrador
	clr r16 ; zera o registrador...usar uma das formas
	
	; DDRB = 0000 0000 -> dizer que PORT B é input
	OUT DDRB,r16 ; DDRB <-  00000000
	
	; PORT D é output DDRD = 1111 1111
	SER r16; r16 <- 1111 1111
	OUT DDRD, r16 ; grava no registrador

	loop:
	; ler a porta B
	in r16, PINB ; PINB são os pinos de entrada de PORT B
	ldi r17, 15 ; r17 <- 15
	; soma 15 em PORT B
	add r16, r17 ; r16 <- r16 + r17

	OUT PORTD, r16 ; PORT D são os pinos para saída
	jmp loop ; volta pro loop
