;Programa contador, visualizar por leds la cuenta en PortB

        list p=16f84

tmro    equ     h'01'       ;registro de configuracion y contador
status  equ     h'03'       ;registro de status
portb   equ     h'06'       ;registro de portb de salida

        org 0

        bsf     status,5    ;acceso al banco 1
        movlw   b'00111000' ;configuramos TMRO como contador
        movwf   tmro        ;por flanco ascendente
        movlw   b'00000000' ;configuramos como salida
        movwf   portb       ;el puerto B
        bcf     status,5    ;pasamos al banco 0
        clrf    tmro        ;inciamos el contador a 0

inicio  movf    tmro,0      ;cargamos el contador en w
        movwf   portb       ;pasamoe el valor cuenta al portb
        goto    inicio      ;bucle
        end                 ;final del programa


