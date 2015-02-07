;Este programa suma en binario 3 numeros, 0000, 0001, 0010 y 0011

        list p=16f84        ;Pic utilizado
suma1   equ     0X0C        ;variable suma1 en dirección OC
result  equ     0X0E        ;variable result en direccion 0E

reset   org     0
        goto    inicio
        org     5

inicio  movlw   b'0001'     ;cargamos en el registro w 0001
        movwf   suma1       ;movemos el registro w a suma1
        movlw   b'0010'     ;cargamos en el registro w 0010
        addwf   suma1,1     ;sumamos suma1 con el registro w
        movlw   b'0011'     ;cargamos en el registro w 0011
        addwf   suma1,1     ;sumamos suma2 con el registro w
        movlw   b'0000'     ;cargamos en el registro w 0000
        addwf   suma1,0     ;sumamos el registro w con suma1
        movwf   result      ;cargamos el resultado en result

        end                 ;fin del programa


