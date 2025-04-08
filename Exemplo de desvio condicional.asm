; if (X==3) y=x+2

; Carrega o valor de X em um registrador 
lds r16, X

; Compara o valor de X com 3
cpi r16, 0x03

; Salta para a linha 'else' se x != 3
brne else

; Se X == 3, realiza y = x + 2
lds r16, X
ldi r17, 0x02
add r16, r17
sts Y, r16
rjmp end_if

else:
; Código que será executado se X != 3 (opcional)

end_if:
; Continuação do código após o if-else
