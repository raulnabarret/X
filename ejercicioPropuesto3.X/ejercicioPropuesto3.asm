;Sumar 2 n�meros, almacenar el resultado en 0x0d, borrar el registro SUM y borrar el acumulador W.


        list p=16f84     ;microchip

suma1   equ     0X0C    ;direcci�n hexadecimal del operando1
sum     equ     0X0D    ;direcci�n en Hexadecimal

;------------------------------------------------

reset   org     0       ;el vector de reset es la direcci�n 00
        goto    inicio  ;se salta al inicio del programa
        org     5       ;el programa inicia en la direcci�n


inicio  movlw   b'0001' ;se carga el 0001 binario
        movwf   suma1   ;se carga el registro w en la direcci�n de memoria de suma1
        movlw   b'0010' ;se carga el 0010 en binario
        addwf   suma1,0 ;se suma el valor en W y suma1, y el resultado se queda en W
        movwf   sum     ;se carga el registro W en la direcci�n de memoria de sum
        clrw
        clrf    sum



        end


