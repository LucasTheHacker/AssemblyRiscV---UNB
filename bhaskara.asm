.data

a: .string "Digite o valor de 'a': "
b: .string "Digite o valor de 'b': "
c: .string "Digite o valor de 'c': "
delta: .word 0
deltaZ: .string "A raiz dupla desta equação é "
deltaN: .string "Esta equação não possui raízes reais"
deltaP:	.string "As raízes da equação são "
e: .ascii  "e"

.text

#=====================================================================================================
#		                        RECEBENDO AS VARIÁVEIS
#=====================================================================================================
# recebendo o valor de 'a'
li a7, 4
la a0, a
ecall

li a7, 5
add t0, a0, zero		# 'a' = t0
ecall

# recebemdo o valor de b
li a7, 4
la a0, b
ecall

li a7, 5
add t1, a0,zero		# 'b' = t1
ecall

# recebendo o valor de c
li a7, 4
la a0, c
ecall

li a7, 5
add t2, a0, zero		# 'c' = t2
ecall

#=====================================================================================================
#		                        CALCULANDO DELTA
#=====================================================================================================

# t0 = a  t1 = b  t2 = c
li s1, 4
mulhu t3, t1, t1		# t3 recebe o 'b' ao quadrado (b**2)
mulhu t4, t0, t2		# t4 recebe 'a' multiplicado por 'c' (a*c)
mulhu t4, s1,t4 		# t4 recebe a multiplicação dele mesmo por 4 (a*c*4)
sub s0, t3, t4		# s0 recebe a subtração de t3 por t4 (b**2 - 4ac)

#=====================================================================================================
#		                        VERIFICANDO RAÍZES	
#=====================================================================================================
bnez  s0, negativo
    li a7, 4
    la a0, deltaZ
    ecall
    
    j casoZ
negativo:
    bgez s0, casoP     
    li a7, 4
    la a0, deltaN
    ecall
    j FIM
    	
    
#=====================================================================================================
#		                        CALCULANDO RAÍZES	
#=====================================================================================================

casoZ:
    li a7, 1
    li s0, -1
    mul t1, t1, s0
    slli s1, t0, 1
    div a0, t1, s1
    ecall
    j FIM
    
casoP:
    li a7, 4
    la a0, deltaP
    ecall
    
    li a7, 1
    li s0, -1
    mul t1, t1, s0
    slli s1, t0, 1
         
FIM: 
    li a7, 10
    ecall
