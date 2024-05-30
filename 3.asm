#s0 = array
lui $s0, 0x1001
ori $s0,$s0,0x0060
addi $t0, $0, 8 #end index = 8
add $s1 , $0, $0 # i = 0
addi $s2 , $0, 1 # counter = 1 
for: # for(int i = 0; i<array.length; i++)	
	slt $t1, $s1, $t0 # i<8
	beq $t1, $0, done # if i>=8 jump done
	sll $t2, $s1, 2 # t2 = i*4
	add $t2, $t2, $s0 # address of s0[i] 
	sw $s2, 0($t2) #  s0[i]  = counter
	addi $s2, $s2 , 4 # counter += 4
	addi $s1, $s1 , 1 # i++
	j    for # repeat
done:	