López Soto Rmases Antonio 31531997-4
Hernández Ferreiro Enrique Ehécatl 31502090-4

Los subcircuitos que usamos son: 

OR: reutilizamos el de la primera practica
NOT: reutilizamos el de la primera practica
Sumador: es un sumador completo
XOR: implementamos uno con nuestro NOT y la puerta AND
ALU( 1 bit): subcircuito que realiza la funciones de AND, OR y Suma cuando el plexor está en 00, 01, 10 respectivamente
ALU( 8 bits): implementa 8 ALU de un bit para hacer sus operacines con 8 bits
ALU( 1 bit) Resta: misma ALU de 1 bit pero realiza el complemento a 2 para hacer la resta 
ALU( 8 bits)Igualdad: verifica que dos cadenas de 8 bits son iguales restandolas y comprobando que el resultado sea 0 
para ello la divide y reutilizando el comparador de la practica anterior compara ambas cadenas de 4 bits sean todos iguales
ademas lo compara con el acarreo de salida para verificar que efectivamente sean iguales ya que con resultados de 0 el 
acarreo resulta siempre 1. 
Comparador 4 bits (Auxiliar): verifica que 4 bits sean iguales.
ALU (NOR): misma ALU que implementa la resta pero ahora realiza también la operación NOR, con las salidas como: AND(00),OR(01),
NOR(10), Sumar o Restar(11), para sumar o restar se utiliza un bit que define la suma o retsa y cambia el acarreo. 
ALU Final (8 bits): ALU de 8 bits que usa 8 ALUs con todas las operaciones definidas en la ALU ( NOR ).
