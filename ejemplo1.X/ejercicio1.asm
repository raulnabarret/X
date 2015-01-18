        list p=16f84

suma1   equ     0X0C
suma2   equ     0X0D
resul   equ     0X0E

reset   org     0
        goto    inicio

        org     5

inicio  movlw   0X05
        movwf   suma1
        movlw   0X02
        movwf   suma2
        movfw   suma1
        addwf   suma2,0
        movwf   resul

        end