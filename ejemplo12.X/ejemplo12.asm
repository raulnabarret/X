;Programa de temporizacion del parpadeo de un led

        list p=18f84

status      equ     h'03'       ;registro de status
portb       equ     h'06'       ;registro de portb de salida
timer       equ     h'01'       ;registro de timer
            org 0

            bsf     status,5    ;acceso al banco1
            movlw   b'11010101' ;configuramos timer
            movwf   timer       ;registro option del timer
            movlw   b'00000000' ;configuramos como salida
            movwf   portb       ;el puerto B
            bcf     status,5    ;pasamos al banco 0
            clrf    portb       ;iniciamos la salida portb a 0

inicio      bsf     portb,0     ;ponemos en 1 en la salida 0 de portb
            call    temp
            bcf     portb,0     ;ponemos en 0 el bit 0 del portb
            call    temp
            goto    inicio      ;bucle

temp        clrf    timer       ;ponemos el temporizador a 0
            bucle   btfss   timer,7 ;comprobamos si el temporizador llega a '10000000'
            goto    bucle       ;volvemos al bucle
            return              ;si el valor es b'10000000' del temporizador volvemos de la subrutina

            end                 ;final de programa
