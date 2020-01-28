.data
	numA: .asciiz "Inserte numero a \n"
	numB: .asciiz "Inserte numero b \n"
	
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
	
	add $k0, $k0, 0
	add $k1, $k1, 0
	
x2:	
	subu $s1, $t0, $t1	#Resta t0 con t1
	add $k0, $k0, 1		#Contador de iteraciones

ciclo: 
	
	move $t0, $s1		#Resta hasta que el resultado sea <= 0
	bge $s1, 0, x2		
		
res: 

	add $v1, $s1, $t1	#Suma el ultimo resultado de la resta con t1
	mul $v0, $zero, 0	#limpiar v0
	sub $k0, $k0, 1		#restar uno al contador
	add $v0, $v0, $k0	#Guarda el cociente (# de iteraciones)
	

