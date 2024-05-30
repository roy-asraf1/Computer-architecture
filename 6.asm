addi $t0, $0, 10 # temp = 10
while:slt $t1, $s0, $t0  # a<10
beq $t1 , $0, done # while a<10 
sll $t2, $s0, 2 # a*4 
add $t2, $t2, $s2 #  address of array[a]
add $t1, $s0, $s1 # temp1 = a+b 
sw $t1, 0($t2) # array[a] = temp1 = a+b
addi $s0, $s0, 1 # a+=1
j while # repeat
done:


