fib:
addi $sp,$sp, -8 #make room
sw $a1, 4($sp) # store $a1 (n)
sw $ra, 0($sp) #store $ra
addi $t0,$0,1
bne  $a1,$t0, else  # if (n == 1)
addi $v0, $0, 0 # return 0
addi $v1, $0, 1 # return 1 
addi $sp, $sp, 8 # resore $sp
jr $ra
else: 
subi $a1, $a1, 1 # n = n-1
jal fib # recursive call
lw $ra, 0($sp) # restore $ra
lw $a1, 4($sp) # restore $a1
addi $sp, $sp ,8  # restore $sp
add $t1, $0, $v1 # save fib(i)
add $v1, $v1, $v0 # save fib(n)=fib(i-1)+fib(i)
add $v0, $0, $t1 #fib(n-1) = fib(i)
jr $ra #return