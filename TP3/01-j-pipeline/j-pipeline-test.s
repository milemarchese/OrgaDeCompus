begin:
    li $t0, 0
    j jump_1

jump_2:
    addi $t0, $t0, 1
    move $t2, $t0
    j jump_3

jump_3:
    addi $t0, $t0, 1
    move $t3, $t0
    j end

jump_1:
    addi $t0, $t0, 1
    move $t1, $t0
    j jump_2

end:
    addi $t0, $t0, 1
    move $t4, $t0