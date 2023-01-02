.data
IDADE: .string "DIGITA SUA IDADE, FELA DA PUTA: "
MAIOR: .string "VC É MAIOR DE IDADE, CORNO"
MENOR: .string "AINDA É DIMENOR, MENOR"

.text

RECEBE:
	la a0, IDADE #a0 = IDADE
	li a7, 4 #print a0
	ecall
	li a7, 5 # a0 = int(input())
	ecall
	add t0, zero, a0 #t0 = a0
IF:
	li t1, 18 #t1 = 18
	bgeu t0,t1, DIMAIOR #Se t0 for maior ou igual a t1, jump to DIMAIOR
	j ELSE
ELSE:
	blt t0, t1, DIMENOR
DIMAIOR:
	la a0, MAIOR #a0 = MAIOR
	li a7, 4 #print a0
	ecall
	j FIM
DIMENOR:
	la a0, MENOR # a0 = MENOR
	li a7, 4 #print a0
	ecall	
	j FIM
FIM: 
	li a7,10  #syscall de exit
	ecall
	
