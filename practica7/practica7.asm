.data

a:	.word	5
b:	.word	4

.text

main:	#Preambulo
	#Invocación
	#Retorno de mist_1
	#Conclusión main
	#mist_1 recibe como argumentos $a0 y $a1
	lw	$a0 a
	lw	$a1 b
	jal 	mist_1
	j	end_1
mist_1:	subi	$sp $s0 24
	sw	$ra 20($sp)
	sw	$s0 16($sp)
	#Preambulo mist_1
	move	$s0, $a0	
	move	$t0, $a1
	li	$t1, 1
loop_1:	beqz 	$s0, end_1
	#invocamos de mist_0
	move	$a0, $t0	# Se pasa el argumento $a0
	move	$a1, $t1	# Se pasa el argumento $a1
	jal	mist_0
	# Retorno de mist_0
	move	$t1, $v0
	subi	$s0, $s0, 1
	j	loop_1
end_1:	# Conclusión mist_1
	move	$v0, $t1
	lw	$s0, 16($sp)
	lw	$ra, 20($sp)
	addi	$sp, $sp, 24
	
	mult	$a0, $a1
	# Conclusión mist_0
	mflo	$v0		# Se retorna el resultado en $v0