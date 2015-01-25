;Este programa realiza la operación AND entre dos registros.

       list p=16f84

reg1    equ     0XA0        ;dirección en Hexa de reg1
reg2    equ     0XA1        ;dirección en Hexa de reg2
result  equ     0XA2        ;dirección en Hexa de result

reset   org     0           ;el vector de reset es la dirección 00
        goto    inicio      ;se salta al inicio del programa

        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'01110011' ;cargamos el 73H en el registro w
        movwf   reg1        ;cargamos el registro w en reg1
        movlw   b'01010101' ;cargamos el 55H en el registro w
        movwf   reg2        ;cargamos el registro w en reg2

        andwf   reg1,0      ;realizamos AND entre reg1 y w, lo almacenamos en w
        movwf   result      ;cargamos el registro w en result

        end                 ;termina el programa



