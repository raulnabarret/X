;Este programa realiza la operación OR entre dos registros
        list p=16f84

reg1    equ     0XA0        ;dirección en Hexa del registro1
reg2    equ     0XA1        ;dirección en Hexa del registro2
result  equ     0XA2        ;dirección en Hexa de result

reset   org     0           ;el vector de reset es 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'00001100' ;se carga OCH en el registro w
        movwf   reg1        ;se carga el registro w en reg1
        iorlw   b'00110000' ;realizamos OR entre w y 30H y lo almacenamos en w
        movwf   result      ;se carga e registro w en result
        end                 ;fin del programa



