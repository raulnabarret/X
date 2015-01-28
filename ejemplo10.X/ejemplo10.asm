;Interruptores y LEDs conectados a los puertos

        list p=16f84

status  equ     h'03'       ;dirección en Hexa del status
porta   equ     h'05'       ;direccion en Hexa del puerto a
portb   equ     h'06'       ;direccion en Hexa del puerto b

;-------------configuramos puertos--------------------------

reset   org     0           ;el vector de reset es la direccion 00
        bsf     status,5    ;ponemos a 1 el bit 5 de status
        movlw   h'FF'       ;cargamos en el registro w a FF
        movwf   porta       ;configuramos el puerto a (05h)como entrada
        movlw   h'00'       ;cargamos 0 en el registro w
        movwf   portb       ;configuramos portb (06h) como salidas
        bcf     status,5    ;ponemos a 0 el bit 5 de status y pasamos a bank0

;--------------iniciamos programa principal------------------
inicio  movf    porta,0     ;cargamos en el registro w el valor del puerto a
        movwf   portb       ;pasamos este valor a puerto b
        goto    inicio      ;bucle para pasar al inicio del programa

        end                 ;fin del programa