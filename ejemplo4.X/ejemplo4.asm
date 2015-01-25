;Programa que incrementa en uno el valor de 5

		list p=16f84

valor	equ		1AH		;dirección en Hexa del operando1
result	equ		2AH		;dirección en Hexa del resultado

reset	org		0
		goto	inicio
		org		5

inicio	movlw	h'5'	;se carga el 5 en el registro w
		movwf	valor	;se carga el registro W en valor
		incf	valor,1 ;se incrementa valor
		incf	valor,1
		incf	valor,1
		incf	valor,1
		incf	valor,1
		incf	valor,1

		movfw	valor
		movwf	result

		end


