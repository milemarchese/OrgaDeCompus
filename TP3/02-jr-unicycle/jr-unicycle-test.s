_start:
	li $t0, 0
	li $t1, 100
	li $t2, 12
_loop:
	beq $t0, $t1, _end
	addi $t0, $t0, 1
	jr $t2
_end:
	li $t1, 0