;Decrementar el valor 10 cinco veces y almacenarlo en la dirección 0x2b.

		list p=16f84
valor	equ		0X0A	;Dirección en Hexa de valor
result	equ		0X2B	;Dirección en Hexa de result

reset	org		0 		;El vector reset empieza en la dirección 00
		goto	inicio	;Se salta al inicio del programa

		org		5		;El programa inicia en la dirección 05

inicio	movlw	0XB     ;Se carga el 10 en el registro w
		movwf   valor	;Se carga el registro w en la dirección valor
		decf	valor,1 ;Se decrementa el valor
		decf	valor,1
		decf	valor,1
		decf	valor,1
		decf	valor,1
		movfw	valor	;Se carga la dirección valor
		movwf	result	;Se carga el registro w en la dirección result

		end				;fin del programa


