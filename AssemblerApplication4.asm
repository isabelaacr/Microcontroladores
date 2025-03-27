;
; AssemblerApplication4.asm
;
; Created: 27/03/2025 14:21:13
; Author : aluno
;

.dseg 
var:
 A: .byte 2;
 B: .byte 2;
 C: .byte 2;
.cseg

start:
 LDI r16, 0b10110100 ; parte baixa de A
 STS A, r16 ; salva r6 em A [low]
 LDI r16, 0b01101100 ; parte alta de A
 STS A+1, r16 ; A+1 é o endereço da parte alta A [high] <- r16

 LDI r16, 0b01101100 ; parte baixa de B
 STS B, r16 ; salva r6 em B [low]
 LDI r16, 0b01101100 ; parte alta de B
 STS v+1, r16 ; A+1 é o endereço da parte alta B [high] <- r16

 loop:
 LDS r16, A ; r16 <- A[low]
 LDS r17, A+1 ; r17 <- A[high]
 LDS r18, B  ; r18 <- B[low]
 LDS r19, B+1 ; r19 <- B[high]

 ADD r16, r18 ; soma a parte baixa sem carry
 ADC r17, r19 ; soma a parte alta com carry

 ST C, r16 ; C[low] <- parte baixa da soma
 ST C+1, r17 ;C[high] <- parte alta da soma

 JMP loop
