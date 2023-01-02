.data 
PERCORRIDO: .string "Kms percorridos: "
RESTANTE: .string "Kms restantes: "
.text
#****RECEBE OS KM PERCORRIDOS****
la a0, PERCORRIDO
li a7,4   #printa string em a0
ecall
li a7,5   #recebe inteiro
ecall
add t0, zero, a0 #a0 = t0, valor dos km percorrido vai pra t0
li t1, 15  #Como a maratona fictícia tem 15km, t1 = 15
sub t2, t1, t0  #VALOR DOS KM RESTANTE EM t2
#****PRINTA OS KM RESTANTES ****
la a0, RESTANTE
li a7,4  #printa string em a0
ecall
add a0, zero, t2 #a0 = t2, e t2 é o valor dos km restante
li a7, 1  #sycall de print inteiro
ecall





