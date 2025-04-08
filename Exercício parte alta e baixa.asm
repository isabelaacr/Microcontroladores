 AssemblerApplication1.asm
;
; Created: 03/04/2025 13:49:16
; Author : aluno
; AssemblerApplication1.asm
;
; Created: 03/04/2025 13:49:16
; Author : aluno
;


; Replace with your application code
start:
CLR r16
OUT DDRB, r16
OUT DDRC, r16
SER r16
OUT DDRD, r16
OUT PORTC,r16

loop:
IN r16, PINB
MOV r17,r16

;pegar parte baixa [var A]

ANDI r16, 0b00001111 ; vai limpar a parte alta de r16

;pegar parte alta [var B]
ANDI r17, 0b11110000 ; vai limpar a parte baixa
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita


;botao está em portC[0]
SBIC PINC,0 ; PORTCC[0]=0, pula uma linha
;se portC[0] = 1, ta pressionado, mostrar A-B
jmp fazSoma
jmp fazDiferenca


fazDiferenca:
SUB r16, r17
OUT PORTD, r16 ; PORTD <= r16
jmp loop
fazSoma:
ADD r16, r17 ;r16 = r16 + r17
OUT PORTD, r16 ; PORTD <= r16 + r17
jmp loop

jmp loop



; Replace with your application code
start:
CLR r16
OUT DDRB, r16
OUT DDRC, r16
SER r16
OUT DDRD, r16
OUT PORTC,r16

loop:
IN r16, PINB
MOV r17,r16

;pegar parte baixa [var A]

ANDI r16, 0b00001111 ; vai limpar a parte alta de r16

;pegar parte alta [var B]
ANDI r17, 0b11110000 ; vai limpar a parte baixa
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita
LSR r17 ; roda o r17 para a direita


;botao está em portC[0]
SBIC PINC,0 ; PORTCC[0]=0, pula uma linha
;se portC[0] = 1, ta pressionado, mostrar A-B
jmp fazSoma
jmp fazDiferenca


fazDiferenca:
SUB r16, r17
OUT PORTD, r16 ; PORTD <= r16
jmp loop
fazSoma:
ADD r16, r17 ;r16 = r16 + r17
OUT PORTD, r16 ; PORTD <= r16 + r17
jmp loop

jmp loop
