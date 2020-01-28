.data
n:		.asciiz "Introduzca n: "
k:		.asciiz "Introduzca k: "
sl:		.asciiz "\n"
result:	.asciiz "El resultado es "


.text
main: 	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal combinaciones

entero:		li $v0, 4 
		syscall
		li $v0, 5 
		syscall
		jr $ra

combinaciones:		addi $sp, $sp, -4
			sw $ra, 0($sp)
			la $a0, n
			jal entero	
			move $s0, $v0
			la $a0, k
			jal entero
			move $a1, $v0
			move $a0, $s0
			jal coeficiente
			move	$t0, $v0
			la $a0, result
			li $v0, 4 
			syscall
			move $a0, $t0
			li $v0, 1
			syscall
			la $a0, sl
			li $v0, 4 
			syscall
			lw $ra, 0($sp)
			addi $sp, $sp, 4
			jr $ra

salir: 			lw $ra, 0($sp)
			addi $sp, $sp, 4
			jr $ra

coeficiente:		addi $sp, $sp, -16
			sw $s2, 12($sp)
			sw $s1, 8($sp)
			sw $s0, 4($sp)
			sw $ra, 0($sp)
			beq $a0, $a1, Cbase1
			beq $a1, 0, Cbase0
			move $s0, $a0
			move $s1, $a1

			subi $a0, $s0, 1	 #n - 1 k-1
			subi $a1, $s1, 1
			jal coeficiente
			move $s2, $v0 

			subi $a0, $s0, 1	 #n - 1 k
			move $a1, $s1
			jal coeficiente 

			add $v0, $v0, $s2	 #sumar ambas partes
			j fin
			Cbase1: li $v0, 1 		 #Caso base 1
			j fin
			Cbase0: li $v0, 1		 #Caso base 0 

			fin: lw $ra, 0($sp)
			lw $s0, 4($sp)
			lw $s1, 8($sp)
			lw $s2, 12($sp)
			addi $sp, $sp, 16
			jr $ra