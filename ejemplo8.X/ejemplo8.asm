;Este programa realiza la operación rotar a la izquierda un registro.
        list p=16f84

reg1    equ     0XA0        ;direccion en Hexadecimal del operando1

reset   org     0           ;el vector de reset es la dirección 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'0001100'  ;se carga el 0CH en el registro w
        movwf   reg1        ;se carga el registro w en reg1
        rlf     reg1,1      ;rotamos a la izquierda
        rlf     reg1,1
        rlf     reg1,1
        rlf     reg1,1


        end                 ;fin del programa


