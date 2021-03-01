entry:
	li $t4, 16
	jalr $t4
	li $t5, 3
	j _end
	li $t6, 3
	jr $ra

_end:
	li $t7, 3
