;Decrementar el valor 10 cinco veces y almacenarlo en la direcci�n 0x2b.

		list p=16f84
valor	equ		0X0A	;Direcci�n en Hexa de valor
result	equ		0X2B	;Direcci�n en Hexa de result

reset	org		0 		;El vector reset empieza en la direcci�n 00
		goto	inicio	;Se salta al inicio del programa

		org		5		;El programa inicia en la direcci�n 05

inicio	movlw	0XB     ;Se carga el 10 en el registro w
		movwf   valor	;Se carga el registro w en la direcci�n valor
		decf	valor,1 ;Se decrementa el valor
		decf	valor,1
		decf	valor,1
		decf	valor,1
		decf	valor,1
		movfw	valor	;Se carga la direcci�n valor
		movwf	result	;Se carga el registro w en la direcci�n result

		end				;fin del programa


