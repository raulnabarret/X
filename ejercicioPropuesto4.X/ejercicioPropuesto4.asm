;Restar dos números binarios y almacenar el resultado en la dirección 0x10.

        list p=16f84

resta   equ     0X0A        ;variable resta en la direccion 0A
result  equ     0X0B        ;variable result en la direccion 0B

reset   org     0           ;la direccion de reset es 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa inicia en la direccion 5

inicio  movlw   b'0111'     ;cargamos el numero binario 0111 en el registro w
        movwf   resta       ;cargamos en resta el registro w
        movlw   b'0001'     ;cargamos el numero binario 0001 en el registro w
        subwf   resta,0     ;sustraemos 0001 de la variable resta
        movwf   result      ;cargamos el resultado en result

        end                 ;fin del programa



