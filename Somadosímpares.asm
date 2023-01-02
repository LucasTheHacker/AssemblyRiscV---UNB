.data

.text
INPUT:
	li a7, 5     #a0 = int(input())
	ecall
CALCULADOBRO:
	add t1, a0, a0 #t1 = 2*a0 #Armazena o dobro do input em t1
	li t2, 1     #t2 = 1 (soma) #variável auxiliar pra guardar a soma
	li t3, 1     #t3 = 1 (contador) #variável auxiliar pra verificar condição
SOMA:
	bgt t3,t1, FIM    #Se o número ímpar em questão for maior que o dobro do input, vai pra fim
	addi t3, t3, 2    #número ímpar em questão #1 + 2 = 3...
	bgt t3, t1, FIM   #verifica a condição antes de atualizar o registrador 
	add  t2, t2, t3   #soma = soma + número ímpar ou soma += número ímpar 
	j SOMA	#volta pro loop
FIM:
	add a0, zero, t2 #transfere o valor da soma dos ímpares pra a0
	li a7, 1      #print inteiro em a0
	ecall	
	li a7, 10     # Serviço de Exit
	ecall	
	
	
	
	
	
	