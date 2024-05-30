# lui $s0, 0x1001
# ori $s0, 0x0010
addi $s1, $0, 8    #Max i=8
addi $s2, $0, 10   #s2=10
addi $t0, $0, 0    #i=0

for:
 beq $t0, $s1 ,Done
 
 lw $t1, 0($s0)
 mult  $t1, $s2
 mfhi $t2
 addi $s0, $s0,4  # s0=s0+4
 addi $t0, $t0 1
 
 beq $t2, $0 for 
 addi $s3, $s3, 1     # s3=s3+!
 j for
 
 Done:
 add $s5, $0,$s3      # s5=0+s3
 
 j End
 
 End: 