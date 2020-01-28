.data

menosuno:	.float 1.0
iter:		.float 0.0 
iter1:		.float 1.0
numiter:	.float 0.0 # 
x2: 		.float 2.0
x4: 		.float 4.0

.text

		lwc1  $f11 menosuno
		lwc1  $f6 iter
		lwc1  $f10 iter1
		lwc1  $f8 numiter
		lwc1  $f9 x2
		lwc1  $f14 x4
		add $a0, $a0, 41 #NUMERO DE VECES DE LA SUMA
		add $v1, $v1, 0 #
		neg.s $f2, $f11
		add.s $f4, $f2, $f6


Potencia:

		mul.s $f0, $f2, $f4
		add $v0, $v0, 1
		add.s $f2, $f0, $f6

potenciar:
		ble $v0, $v1, Potencia
		
multiSuma:
		mul.s $f5, $f8, $f9
		add.s $f5, $f5, $f11
		
division:  
		div.s $f21, $f0, $f5
		
SumaTotal:

		add $v1, $v1, 1
		add.s $f8, $f8, $f11
		add.s $f20, $f20, $f21
		add   $a1, $a1, 1
		ble $a1, $a0, Potencia
		
		mul.s $f20, $f20, $f14


	
