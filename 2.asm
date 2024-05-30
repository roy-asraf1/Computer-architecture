addi $s2, $0, 1 # A[]
addi $s3, $0, 1 # B[]
addi $s4, $0, 1 # C[]
add $s0, $0, $0 # i
addi $t0, $0, 7 # i<7
addi $t1, $0, 3 # B*3
while: 	beq $s0, $t0, done	#while i<7
	mul $t2, $s2, $s3 #t2 = A[i] * B[i]
	mul $t2, $t2, $s4 # t2 = t2 * C[i]
	add $s1, $s1, $t2 # s1  = s1 + t2
	mul $s2, $s2, $t1 # A[i] = A[i] *3
	
	sll $s3, $s3, 2 # B[i] = 2 ^ (2*i)
	addi $s0, $s0, 1 # i++
	slt $t3, $s4, $0 # if C[i] <0
	beq $t3, $0, positive # jump if 1
	addi $s4, $s4, 2 #  C[i] = -1 + 2 = 1
	j    while
positive: 
	subi $s4 , $s4, 2 # C[i]  = 1-2 = -1
	j    while
	
done:	