;Interruptores y LEDs conectados a los puertos

        list p=16f84

reset   org     0           ;el vector de reset es la direccion 00

        bsf     h'03',5     ;ponemos a 1 el bit 5 de STATUS(03h)
        movlw   b'11111111' ;cargamos en el registro w '11111111'
        movwf   h'05'       ;configuramos TRISA (05h) como entradas
        movlw   b'00000000' ;cargamos 0 en el registro w
        movwf   h'06'       ;configuramos TRISB (06h) como salidas
        bcf     h'03',5     ;Ponemos a 0 el bit 5 de status y pasamos a bank0

;---------------------Inicio de Programa Principal---------------------------

inicio  movf    h'05',0     ;Cargamos en el registro w el valor del PORTA
        movwf   h'06'       ;Pasamos este valor a PORTB
        goto    inicio      ;Bucle para pasar al inicio del programa

        end                 ;fin del programa




