;Restar dos números binarios y almacenar el resultado en la dirección 0x10.

        list p=16f84
resta   equ     0X0A
result  equ     0X0B

reset   org     0
        goto    inicio
        org     5

inicio  movlw   b'0111'
        movwf   resta
        movlw   b'0001'
        subwf   resta,0
        movwf   result

        end



