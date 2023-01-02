.text 
jal x1,LABEL
sw x8,4(x5)
LABEL:addi x17,x0,10
ecall
lui x5,65552
lw x8,0(x5)
LABEL2:add x8,x8,x8
andi x8,x8,15
blt x5,x8,LABEL2
jalr x0,x1,0

add a0, zero, s0
li a7, 1
ecall
li a7, 10
ecall
