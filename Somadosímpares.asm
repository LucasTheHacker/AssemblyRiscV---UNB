.data

.text
INPUT:
	li a7, 5     #a0 = int(input())
	ecall
CALCULADOBRO:
	add t1, a0, a0 #t1 = 2*a0 #Armazena o dobro do input em t1
	li t2, 1     #t2 = 1 (soma) #vari�vel auxiliar pra guardar a soma
	li t3, 1     #t3 = 1 (contador) #vari�vel auxiliar pra verificar condi��o
SOMA:
	bgt t3,t1, FIM    #Se o n�mero �mpar em quest�o for maior que o dobro do input, vai pra fim
	addi t3, t3, 2    #n�mero �mpar em quest�o #1 + 2 = 3...
	bgt t3, t1, FIM   #verifica a condi��o antes de atualizar o registrador 
	add  t2, t2, t3   #soma = soma + n�mero �mpar ou soma += n�mero �mpar 
	j SOMA	#volta pro loop
FIM:
	add a0, zero, t2 #transfere o valor da soma dos �mpares pra a0
	li a7, 1      #print inteiro em a0
	ecall	
	li a7, 10     # Servi�o de Exit
	ecall	
	
	
	
	
	
	