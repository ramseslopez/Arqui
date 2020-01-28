.data
	numA: .ascii "Inserte numero a \n"
	numB: .ascii "Inserte numero b \n"
	RMCD: .ascii "El MCD es: "
	
.text

	li $v0, 4
	la $a0, numA
	syscall
	li $v0, 5
	syscall			#Solicitud del num A
	add $t0, $v0, 0		#move
	
			
	li $v0, 4
	la $a0, numB
	syscall
	li $v0, 5
	syscall			#Solicitud del num B
	add $t1, $v0, 0		#move
	
CalMCD: 
	add $t2, $t1, 0		#move
	div $t7, $t0, $t1
	mfhi $t3
	add $t0, $t1, 0		#move
	add $t1, $t3, 0		#move
	
MCD:
	bnez $t3, CalMCD	#Branch if no 0
	
	li $v0,4
	la $a0, RMCD
	syscall
	li $v0, 1		#Imprime el resultado
	add $a0, $t2, 0		#move
	syscall 
	
	
	
