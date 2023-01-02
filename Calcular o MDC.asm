#Programa para calcular o MDC de dois números
.data
n1: .asciz "Digite o Primeiro número: "
n2: .asciz "Digite o segundo número: "
MDC: .asciz "O MDC é: "
.text
#Lendo o primeiro número
li a7, 4
la a0, n1
ecall
li a7, 5     #Lendo o primeiro input
ecall
mv t0, a0    #t0 = primeiro número
#Lendo o segundo número
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