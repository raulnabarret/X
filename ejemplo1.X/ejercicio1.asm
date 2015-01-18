
;----------------------------------------------------

list p=16f84

suma1   equ   0X0C      ;Variable 1 asignada a un direccion en Hexa
suma2   equ   0X0D      ;Variable 2 asignada a un direccion en Hexa
result  equ   0X0E      ;Variable result asignada a un direccion en Hexa

;----------------------------------------------------

reset   org   0         ;el vector de reset es la direccion 00
        goto  inicio    ;se salta al inicio del programa
        org   5         ;el programa empieza en la direccion de memoria 5

inicio  movlw 0X05      ;se carga el numero 5 en w
        movwf suma1     ;guardamos 5 en suma1
        movlw 0X02      ;se carga el numero 2 en w
        movwf suma2     ;guardamos 2 en suma2
        movwf suma1     ;traemos suma1
        addwf suma2,0  ;sumamos suma1 + suma2
        movwf result    ;guardamos el resultado en result

        end
