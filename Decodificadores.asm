;
; AssemblerApplication3.asm
;
; Created: 08/04/2025 14:51:41
; Author : aluno
;


; Replace with your application code
start:
clr r16 
out ddrb, r16

ser r16
out dorc r16

loop:
in r16, pinb
andi r16, 0b00001111

ldi r17, 9
sub r17, r16

brge menor10

ldi r19, 1
subi r16, 10
mov r20, r16
jmp escrita

menor10:
ldi r19, 0
mov r20, r16

jmp escrita

escrita:

mov r16, r19
call decodifica 
ldi r18, 0b11111110
out portc, r18
call demora

jmp loop

demora:
ser r18

aa:
dec r18
brne aa
ret

decodifica:
cpi r16, 9
brne


;INCOMPLETO 
