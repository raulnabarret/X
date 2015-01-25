;Realizar una rotación 4 veces hacia la derecha de un registro de valor '10110000'
        list p=16f84

reg1    equ     0X0A        ;direccion en Hexadecimal del operando1

reset   org     0           ;el vector de reset es la dirección 00
        goto    inicio      ;se salta al inicio del programa
        org     5           ;el programa empieza en la dirección 05

inicio  movlw   b'10110000' ;se carga el 0CH en el registro w
        movwf   reg1        ;se carga el registro w en reg1
        rrf     reg1,1      ;rotamos a la derecha
        rrf     reg1,1
        rrf     reg1,1
        rrf     reg1,1


        end                 ;fin del programa


