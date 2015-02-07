;Intercambiar los 4 bits menos significativos por los cuatro más significativos del valor b'00111010', almacenarlos en un registro

        list p=16f84

reg1    equ     0XA0        ;dirección en Hexa del registro1
result  equ     0XA2        ;dirección en Hexa de result

reset   org     0           ;el vector de reset es 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'00111010' ;cargamos el numero binario al registro w
        movwf   reg1        ;cargamos el registro w en reg1
        swapf   reg1,1      ;giramos reg1
        movfw   reg1        ;cargamos en reg1 el resultado
        movwf   result      ;cargamos el resultado en result

        end                 ;fin del programa

