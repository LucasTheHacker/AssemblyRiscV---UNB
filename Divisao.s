.data
NUMERO1: .string "x = "
NUMERO2: .string "y = "
DIVISAO: .string "x/y = "

.text
RECEBE:
	la a0,NUMERO1  #a0 = NUMERO1
	li a7, 4       #print a0
	ecall
	li a7, 5       #a0 = int(input())
	ecall
	add t0,a0,zero      #t0 = a0
	
	la a0, NUMERO2 #a0 = NUMERO2
	li a7, 4 #print a0
	ecall
	li a7, 5    #a0 = int(input())
	ecall
	add t1,zero,a0   #t1 = a0

DIVIDE:
	la a0,DIVISAO  #a0 = DIVISAO
	li a7, 4  #printa string em a0
	ecall
	div t2, t0, t1 #t2 = t0/t1
	add a0,zero,t2 #a0 = t2
	li a7, 1 #print inteiro em a0
	ecall
FIM: 
	li a7,10  #syscall de exit
	ecall
	