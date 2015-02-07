;Este programa suma tres números y almacenar los números y el resultado en las direcciones 0x0c, 0x0d, 0x0e y 0x0f.
        list p=16f84

suma1   equ     0X0C        ;variable suma1 en direccion 0C
suma2   equ     0X0D        ;variable suma2 en direccion 0D
suma3   equ     0X0E        ;variable suma3 en direccion 0E
result  equ     0X0F        ;variable result en direccion 0F

reset   org     0           ;el vector de reset es la dirección 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa inicia en la dirección

inicio  movlw   0X05        ;cargamos 05 en el registro w
        movwf   suma1       ;guardamos el registro w en suma1
        movlw   0X02        ;cargamos 02 en el registro w
        movwf   suma2       ;guardamos el registro w en suma2
        movfw   suma1       ;movemos suma1 al registro w
        addwf   suma2,0     ;sumamos suma2 al registro w
        movwf   resul       ;cargamos el resultado en la variable result

        end