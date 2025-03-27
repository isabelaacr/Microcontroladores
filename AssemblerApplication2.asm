;
; AssemblerApplication2.asm
;
; Created: 27/03/2025 14:21:13
; Author : aluno
;

.dseg 
var:
 A: .byte 1;
 B: .byte 1;
.cseg

start:
;configurar portas de entrada e saída
; x = in PORTD    y = out PORT B
; x = x^2 + 2*x
clr r16 ; r16 <- 0
out DDRD, r16 ; PORTD é IN
ldi r16, 0xFF ; r16 <- 255 ou 1111 1111
out PORTD, r16 ; liga pull-up em PORTD
out DDRB, r16 ; PORTB é out

loop:
in r16, PIND ; ler PORTD (A) e salvar em r16
sts A, r16 ; A  <- r16
mov r17, r16 ; r17 <- r16 (A)
add r17, r16 ; r17 <- r17 + r16 ou (2*x)

mul r16, r16 ; r1:r0 <- r16 * r16 ou (A^2)
add r17, r0 ; r17 + r0 ou 2*A + A^2

st B, r17 ; B <- r17
out PORTB, r17 ; saída (PORTB) <- r17 
 
jmp loop
