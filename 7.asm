addi $s0, $0, 0# a = 0 #
addi $t4, $0, 4 # temp = 4 
loop1: addi $s0, $s0, 1 # a++
addi $s0, $s0, 1 # a++
slt $t0, $s0, $t4  # a<4
bne $t1 , $0, loop1 #  while a<4 goto loop1 