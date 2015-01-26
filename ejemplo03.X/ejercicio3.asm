;Este programa suma en binario 3 numeros, 0001, 0010 y 0011

        list p=16f84
suma1   equ     0X0C
result  equ     0X0E

reset   org     0
        goto    inicio
        org     5

inicio  movlw   b'0001'
        movwf   suma1
        movlw   b'0010'
        addwf   suma1,1
        movlw   b'0011'
        addwf   suma1,0
        movwf   result

        end



