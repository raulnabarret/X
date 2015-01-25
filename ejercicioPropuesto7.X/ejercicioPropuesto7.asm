; Realizar una OR Exclusiva de val1='00110101' y val2='10100110'

        list p=16f84

val1    equ     0XA0        ;dirección en Hexa del registro1
val2    equ     0XA1        ;dirección en Hexa del registro2
result  equ     0XA2        ;dirección en Hexa de result

reset   org     0           ;el vector de reset es 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'00110101' ;
        movwf   val1        ;
        xorlw   b'10100110' ;
        movwf   result      ;se carga e registro w en result
        end                 ;fin del programa



