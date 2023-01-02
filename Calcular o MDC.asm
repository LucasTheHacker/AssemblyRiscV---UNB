#Programa para calcular o MDC de dois n�meros
.data
n1: .asciz "Digite o Primeiro n�mero: "
n2: .asciz "Digite o segundo n�mero: "
MDC: .asciz "O MDC �: "
.text
#Lendo o primeiro n�mero
li a7, 4
la a0, n1
ecall
li a7, 5     #Lendo o primeiro input
ecall
mv t0, a0    #t0 = primeiro n�mero
#Lendo o segundo n�mero
li a7, 4
la a0, n2
ecall
li a7, 5
ecall
mv t1, a0

bgt t1, t0, While2
bgt t0, t1, While1


#Fazendo o MDC se t0>t1 agr
While1: beqz t1, Fim1
	rem t2, t0, t1
	mv t0, t1
	mv t1, t2
	j While1

#Fazendo o MDC se t1>t0
While2: beqz t0, Fim2
	rem t2, t1, t0
	mv t1, t0
	mv t0, t2
	j While2

#Fim do Programa 1
Fim1:
	li a7, 4
	la a0, MDC
	ecall
	li a7, 1
	mv a0, t0
	ecall
	li a7, 10
	ecall
#Fim do Programa 2
Fim2: 
	li a7, 4
	la a0, MDC
	ecall
	li a7, 1
	mv a0, t1
	ecall
	li a7, 10
	ecall	