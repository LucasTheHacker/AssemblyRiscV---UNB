#Programa para verificar se é primo
.data
STR: .asciz "Digite o número que você deseja: "
PRIMO: .asciz "É Primo!!!"
NAO: .asciz "Não é Primo"
.text
MAIN:
	li a7, 4
	la a0, STR
	ecall
	li a7, 5
	ecall
	mv s0, a0
	li t0, 1
	blt s0, t0, MAIN
###LOOP
li s1, 0 ##Contado de números primos
addi t0, t0, 1
WHILE:
	bge t0, s0, EPRIMO
	rem t3, s0, t0
	beqz t3, NAOE
	addi t0, t0, 1
	j WHILE
EPRIMO:
	li a7, 4
	la a0, PRIMO
	ecall
	li a7, 10
	ecall
NAOE:
	li a7, 4
	la a0, NAO
	ecall
	li a7, 10
	ecall
	