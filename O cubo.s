.data 
NUMERO: .string "Digite um número: "
CUBO: .string "Esse número elevado ao cubo é: "

.text
RECEBE:
	la a0,NUMERO  #Carrega NUMERO no a0
	li a7,4       #syscall de printar string em a0
	ecall
	li a7, 5      #syscall de input inteiro
	ecall
CUBODENUM:
	add t0,zero, a0  #t0 = int(input())
	la a0,CUBO #Carrega CUBO no a0
	li a7, 4 #syscall de printar string em a0
	ecall
	add t1, zero, t0   #manipulação pra não dar erro na conta
	mul t0, t0, t0 # t0 = t0*t0
	mul t0, t0, t1 # t0 = t0*t0*t0
	add a0, zero, t0 # a0 = t0
	li a7,1 #Printa o inteiro em a0
	ecall
FIM:	
	li a7,10      # syscall de exit
	ecall