	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
	.data
	.align	2
	.type	BASE64, @object
	.size	BASE64, 64
BASE64:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
	.text
	.align	2
$LFB0 = .
	.file 1 "decoder.c"
	.loc 1 7 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	to_binary
	.type	to_binary, @function
to_binary:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,32($fp)
	sb	$2,24($fp)
$LBB2 = .
	.loc 1 8 0
	lw	$2,32($fp)
	addiu	$2,$2,-1
	sw	$2,8($fp)
	b	$L2
	nop

$L4:
	.loc 1 9 0 discriminator 3
	lw	$2,8($fp)
	lw	$3,28($fp)
	addu	$3,$3,$2
	lb	$4,24($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$4,$2
	bgez	$2,$L3
	nop

	addiu	$2,$2,-1
	li	$4,-2			# 0xfffffffffffffffe
	or	$2,$2,$4
	addiu	$2,$2,1
$L3:
	seb	$2,$2
	sb	$2,0($3)
	.loc 1 10 0 discriminator 3
	lb	$2,24($fp)
	sra	$2,$2,1
	sb	$2,24($fp)
	.loc 1 8 0 discriminator 3
	lw	$2,8($fp)
	addiu	$2,$2,-1
	sw	$2,8($fp)
$L2:
	.loc 1 8 0 is_stmt 0 discriminator 1
	lw	$2,8($fp)
	bgez	$2,$L4
	nop

$LBE2 = .
	.loc 1 12 0 is_stmt 1
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	to_binary
	.cfi_endproc
$LFE0:
	.size	to_binary, .-to_binary
	.align	2
$LFB1 = .
	.loc 1 15 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	to_decimal
	.type	to_decimal, @function
to_decimal:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	.cfi_def_cfa_offset 24
	sw	$fp,20($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 16 0
	sw	$0,8($fp)
$LBB3 = .
	.loc 1 17 0
	sw	$0,12($fp)
	b	$L6
	nop

$L9:
	.loc 1 18 0
	lw	$2,12($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	beq	$2,$0,$L7
	nop

	.loc 1 18 0 is_stmt 0 discriminator 1
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,12($fp)
	subu	$2,$3,$2
	li	$3,1			# 0x1
	sll	$2,$3,$2
	b	$L8
	nop

$L7:
	.loc 1 18 0 discriminator 2
	move	$2,$0
$L8:
	.loc 1 18 0 discriminator 4
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	.loc 1 17 0 is_stmt 1 discriminator 4
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L6:
	.loc 1 17 0 is_stmt 0 discriminator 2
	lw	$3,12($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L9
	nop

$LBE3 = .
	.loc 1 20 0 is_stmt 1
	lw	$2,8($fp)
	.loc 1 21 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	to_decimal
	.cfi_endproc
$LFE1:
	.size	to_decimal, .-to_decimal
	.align	2
	.globl	encode_chars
$LFB2 = .
	.loc 1 24 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	encode_chars
	.type	encode_chars, @function
encode_chars:
	.frame	$fp,80,$31		# vars= 40, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-80
	.cfi_def_cfa_offset 80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	sw	$16,68($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	.loc 1 25 0
	sw	$0,36($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
$LBB4 = .
	.loc 1 27 0
	sw	$0,24($fp)
	b	$L12
	nop

$L13:
	.loc 1 28 0 discriminator 3
	lw	$2,24($fp)
	lw	$3,80($fp)
	addu	$2,$3,$2
	lb	$4,0($2)
	lw	$2,24($fp)
	sll	$2,$2,3
	addiu	$3,$fp,36
	addu	$2,$3,$2
	li	$6,8			# 0x8
	move	$5,$2
	lw	$2,%got(to_binary)($28)
	addiu	$2,$2,%lo(to_binary)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,to_binary
1:	jalr	$25
	nop

$LVL0 = .
	lw	$28,16($fp)
	.loc 1 27 0 discriminator 3
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L12:
	.loc 1 27 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,84($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

$LBE4 = .
$LBB5 = .
	.loc 1 31 0 is_stmt 1
	sw	$0,28($fp)
	b	$L14
	nop

$L15:
	.loc 1 32 0 discriminator 3
	lw	$2,28($fp)
	lw	$3,88($fp)
	addu	$16,$3,$2
	lw	$3,28($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	addiu	$2,$fp,36
	addu	$2,$2,$3
	li	$5,6			# 0x6
	move	$4,$2
	lw	$2,%got(to_decimal)($28)
	addiu	$2,$2,%lo(to_decimal)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,to_decimal
1:	jalr	$25
	nop

$LVL1 = .
	lw	$28,16($fp)
	move	$3,$2
	lw	$2,%got(BASE64)($28)
	addiu	$2,$2,%lo(BASE64)
	addu	$2,$3,$2
	lb	$2,0($2)
	sb	$2,0($16)
	.loc 1 31 0 discriminator 3
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L14:
	.loc 1 31 0 is_stmt 0 discriminator 1
	lw	$2,84($fp)
	addiu	$3,$2,1
	lw	$2,28($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L15
	nop

$LBE5 = .
$LBB6 = .
	.loc 1 35 0 is_stmt 1
	lw	$2,84($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L16
	nop

$L17:
	.loc 1 36 0 discriminator 3
	lw	$2,32($fp)
	lw	$3,88($fp)
	addu	$2,$3,$2
	li	$3,61			# 0x3d
	sb	$3,0($2)
	.loc 1 35 0 discriminator 3
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L16:
	.loc 1 35 0 is_stmt 0 discriminator 1
	lw	$2,32($fp)
	slt	$2,$2,4
	bne	$2,$0,$L17
	nop

$LBE6 = .
	.loc 1 38 0 is_stmt 1
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$16,68($sp)
	addiu	$sp,$sp,80
	.cfi_restore 16
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	encode_chars
	.cfi_endproc
$LFE2:
	.size	encode_chars, .-encode_chars
	.align	2
	.globl	encode_string
$LFB3 = .
	.loc 1 41 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	encode_string
	.type	encode_string, @function
encode_string:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 42 0
	sw	$0,24($fp)
	.loc 1 43 0
	b	$L19
	nop

$L23:
$LBB7 = .
	.loc 1 44 0
	sw	$0,28($fp)
	.loc 1 45 0
	b	$L20
	nop

$L22:
	.loc 1 45 0 is_stmt 0 discriminator 3
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L20:
	.loc 1 45 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$2,0($2)
	beq	$2,$0,$L21
	nop

	.loc 1 45 0 discriminator 2
	lw	$2,28($fp)
	slt	$2,$2,3
	bne	$2,$0,$L22
	nop

$L21:
	.loc 1 47 0 is_stmt 1
	sw	$0,32($fp)
	sb	$0,36($fp)
	.loc 1 48 0
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,32
	move	$6,$3
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%got(encode_chars)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,encode_chars
1:	jalr	$25
	nop

$LVL2 = .
	lw	$28,16($fp)
	.loc 1 49 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 50 0
	addiu	$2,$fp,32
	lw	$5,52($fp)
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

$LVL3 = .
	lw	$28,16($fp)
$L19:
$LBE7 = .
	.loc 1 43 0
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L23
	nop

	.loc 1 52 0
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	encode_string
	.cfi_endproc
$LFE3:
	.size	encode_string, .-encode_string
	.align	2
	.globl	decode_chars
$LFB4 = .
	.loc 1 55 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	decode_chars
	.type	decode_chars, @function
decode_chars:
	.frame	$fp,80,$31		# vars= 40, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-80
	.cfi_def_cfa_offset 80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	sw	$16,68($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	.loc 1 56 0
	sw	$0,36($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
$LBB8 = .
	.loc 1 58 0
	sw	$0,24($fp)
	b	$L25
	nop

$L30:
$LBB9 = .
	.loc 1 59 0
	sw	$0,28($fp)
	b	$L26
	nop

$L29:
	.loc 1 60 0
	lw	$2,24($fp)
	lw	$3,80($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,%got(BASE64)($28)
	addiu	$4,$2,%lo(BASE64)
	lw	$2,28($fp)
	addu	$2,$4,$2
	lb	$2,0($2)
	bne	$3,$2,$L27
	nop

	.loc 1 61 0
	lw	$2,28($fp)
	seb	$4,$2
	lw	$3,24($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,1
	move	$3,$2
	addiu	$2,$fp,36
	addu	$2,$2,$3
	li	$6,6			# 0x6
	move	$5,$2
	lw	$2,%got(to_binary)($28)
	addiu	$2,$2,%lo(to_binary)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,to_binary
1:	jalr	$25
	nop

$LVL4 = .
	lw	$28,16($fp)
	.loc 1 62 0
	b	$L28
	nop

$L27:
	.loc 1 59 0 discriminator 2
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L26:
	.loc 1 59 0 is_stmt 0 discriminator 1
	lw	$2,28($fp)
	slt	$2,$2,64
	bne	$2,$0,$L29
	nop

$L28:
$LBE9 = .
	.loc 1 58 0 is_stmt 1 discriminator 2
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L25:
	.loc 1 58 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,84($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L30
	nop

$LBE8 = .
$LBB10 = .
	.loc 1 67 0 is_stmt 1
	sw	$0,32($fp)
	b	$L31
	nop

$L32:
	.loc 1 68 0 discriminator 3
	lw	$2,32($fp)
	lw	$3,88($fp)
	addu	$16,$3,$2
	lw	$2,32($fp)
	sll	$2,$2,3
	addiu	$3,$fp,36
	addu	$2,$3,$2
	li	$5,8			# 0x8
	move	$4,$2
	lw	$2,%got(to_decimal)($28)
	addiu	$2,$2,%lo(to_decimal)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,to_decimal
1:	jalr	$25
	nop

$LVL5 = .
	lw	$28,16($fp)
	seb	$2,$2
	sb	$2,0($16)
	.loc 1 67 0 discriminator 3
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L31:
	.loc 1 67 0 is_stmt 0 discriminator 1
	lw	$2,84($fp)
	addiu	$3,$2,-1
	lw	$2,32($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L32
	nop

$LBE10 = .
	.loc 1 70 0 is_stmt 1
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$16,68($sp)
	addiu	$sp,$sp,80
	.cfi_restore 16
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_chars
	.cfi_endproc
$LFE4:
	.size	decode_chars, .-decode_chars
	.align	2
	.globl	decode_string
$LFB5 = .
	.loc 1 73 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	decode_string
	.type	decode_string, @function
decode_string:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 74 0
	sw	$0,24($fp)
	.loc 1 75 0
	b	$L34
	nop

$L39:
$LBB11 = .
	.loc 1 76 0
	sw	$0,28($fp)
	.loc 1 77 0
	b	$L35
	nop

$L37:
	.loc 1 77 0 is_stmt 0 discriminator 4
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L35:
	.loc 1 77 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$3,0($2)
	li	$2,61			# 0x3d
	beq	$3,$2,$L36
	nop

	.loc 1 77 0 discriminator 2
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$2,0($2)
	beq	$2,$0,$L36
	nop

	.loc 1 77 0 discriminator 3
	lw	$2,28($fp)
	slt	$2,$2,4
	bne	$2,$0,$L37
	nop

$L36:
	.loc 1 79 0 is_stmt 1
	sw	$0,32($fp)
	.loc 1 80 0
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,32
	move	$6,$3
	lw	$5,28($fp)
	move	$4,$2
	lw	$2,%got(decode_chars)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decode_chars
1:	jalr	$25
	nop

$LVL6 = .
	lw	$28,16($fp)
	.loc 1 81 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 82 0
	addiu	$2,$fp,32
	lw	$5,52($fp)
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

$LVL7 = .
	lw	$28,16($fp)
$L34:
$LBE11 = .
	.loc 1 75 0
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	beq	$2,$0,$L40
	nop

	.loc 1 75 0 is_stmt 0 discriminator 1
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,61			# 0x3d
	bne	$3,$2,$L39
	nop

$L40:
	.loc 1 84 0 is_stmt 1
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_string
	.cfi_endproc
$LFE5:
	.size	decode_string, .-decode_string
	.rdata
	.align	2
$LC0:
	.ascii	"r\000"
	.align	2
$LC1:
	.ascii	"Unable to read input file\012\000"
	.align	2
$LC2:
	.ascii	"w\000"
	.align	2
$LC3:
	.ascii	"Unable to create output file\012\000"
	.text
	.align	2
	.globl	process_file
$LFB6 = .
	.loc 1 87 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	process_file
	.type	process_file, @function
process_file:
	.frame	$fp,80,$31		# vars= 48, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-80
	.cfi_def_cfa_offset 80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	.loc 1 88 0
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,24($fp)
	.loc 1 89 0
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,28($fp)
	.loc 1 91 0
	lw	$2,80($fp)
	beq	$2,$0,$L42
	nop

	.loc 1 92 0
	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$4,80($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

$LVL8 = .
	lw	$28,16($fp)
	sw	$2,24($fp)
	.loc 1 93 0
	lw	$2,24($fp)
	bne	$2,$0,$L42
	nop

	.loc 1 94 0
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,26			# 0x1a
	li	$5,1			# 0x1
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

$LVL9 = .
	lw	$28,16($fp)
	.loc 1 95 0
	li	$2,1			# 0x1
	b	$L52
	nop

$L42:
	.loc 1 98 0
	lw	$2,84($fp)
	beq	$2,$0,$L44
	nop

	.loc 1 99 0
	lw	$2,%got($LC2)($28)
	addiu	$5,$2,%lo($LC2)
	lw	$4,84($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

$LVL10 = .
	lw	$28,16($fp)
	sw	$2,28($fp)
	.loc 1 100 0
	lw	$2,28($fp)
	bne	$2,$0,$L44
	nop

	.loc 1 101 0
	lw	$2,%got(stderr)($28)
	lw	$2,0($2)
	move	$7,$2
	li	$6,29			# 0x1d
	li	$5,1			# 0x1
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(fwrite)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fwrite
1:	jalr	$25
	nop

$LVL11 = .
	lw	$28,16($fp)
	.loc 1 102 0
	lw	$2,24($fp)
	beq	$2,$0,$L45
	nop

	.loc 1 102 0 is_stmt 0 discriminator 1
	lw	$4,24($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL12 = .
	lw	$28,16($fp)
$L45:
	.loc 1 103 0 is_stmt 1
	li	$2,1			# 0x1
	b	$L52
	nop

$L44:
	.loc 1 106 0
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
	sb	$0,64($fp)
	.loc 1 107 0
	b	$L46
	nop

$L51:
$LBB12 = .
	.loc 1 108 0
	sw	$0,32($fp)
	b	$L47
	nop

$L50:
$LBB13 = .
	.loc 1 109 0
	lw	$4,24($fp)
	lw	$2,%call16(fgetc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

$LVL13 = .
	lw	$28,16($fp)
	sb	$2,36($fp)
	.loc 1 110 0
	lb	$3,36($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,$L48
	nop

	.loc 1 111 0
	lw	$2,32($fp)
	addiu	$3,$fp,24
	addu	$2,$3,$2
	sb	$0,16($2)
	.loc 1 112 0
	b	$L49
	nop

$L48:
	.loc 1 114 0 discriminator 2
	lw	$2,32($fp)
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$3,36($fp)
	sb	$3,16($2)
$LBE13 = .
	.loc 1 108 0 discriminator 2
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L47:
	.loc 1 108 0 is_stmt 0 discriminator 1
	lw	$2,32($fp)
	slt	$2,$2,24
	bne	$2,$0,$L50
	nop

$L49:
$LBE12 = .
	.loc 1 116 0 is_stmt 1
	addiu	$3,$fp,40
	lw	$2,88($fp)
	lw	$5,28($fp)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

$LVL14 = .
	lw	$28,16($fp)
$L46:
	.loc 1 107 0
	lw	$4,24($fp)
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

$LVL15 = .
	lw	$28,16($fp)
	beq	$2,$0,$L51
	nop

	.loc 1 118 0
	lw	$4,24($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL16 = .
	lw	$28,16($fp)
	.loc 1 119 0
	lw	$4,28($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

$LVL17 = .
	lw	$28,16($fp)
	.loc 1 120 0
	move	$2,$0
$L52:
	.loc 1 121 0 discriminator 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	process_file
	.cfi_endproc
$LFE6:
	.size	process_file, .-process_file
$Letext0:
	.file 2 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 3 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/unistd.h"
	.file 7 "/usr/include/getopt.h"
	.file 8 "decoder.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x6e1
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF76
	.byte	0xc
	.4byte	$LASF77
	.4byte	$LASF78
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.4byte	$LASF8
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	$LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x2
	.4byte	$LASF9
	.byte	0x3
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.4byte	$LASF10
	.byte	0x3
	.byte	0x83
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	$LASF11
	.uleb128 0x2
	.4byte	$LASF12
	.byte	0x3
	.byte	0x84
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	$LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	$LASF14
	.uleb128 0x2
	.4byte	$LASF15
	.byte	0x4
	.byte	0x30
	.4byte	0xb8
	.uleb128 0x7
	.4byte	$LASF45
	.byte	0x98
	.byte	0x5
	.byte	0xf1
	.4byte	0x235
	.uleb128 0x8
	.4byte	$LASF16
	.byte	0x5
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0x8
	.4byte	$LASF17
	.byte	0x5
	.byte	0xf7
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x8
	.4byte	$LASF18
	.byte	0x5
	.byte	0xf8
	.4byte	0xa0
	.byte	0x8
	.uleb128 0x8
	.4byte	$LASF19
	.byte	0x5
	.byte	0xf9
	.4byte	0xa0
	.byte	0xc
	.uleb128 0x8
	.4byte	$LASF20
	.byte	0x5
	.byte	0xfa
	.4byte	0xa0
	.byte	0x10
	.uleb128 0x8
	.4byte	$LASF21
	.byte	0x5
	.byte	0xfb
	.4byte	0xa0
	.byte	0x14
	.uleb128 0x8
	.4byte	$LASF22
	.byte	0x5
	.byte	0xfc
	.4byte	0xa0
	.byte	0x18
	.uleb128 0x8
	.4byte	$LASF23
	.byte	0x5
	.byte	0xfd
	.4byte	0xa0
	.byte	0x1c
	.uleb128 0x8
	.4byte	$LASF24
	.byte	0x5
	.byte	0xfe
	.4byte	0xa0
	.byte	0x20
	.uleb128 0x9
	.4byte	$LASF25
	.byte	0x5
	.2byte	0x100
	.4byte	0xa0
	.byte	0x24
	.uleb128 0x9
	.4byte	$LASF26
	.byte	0x5
	.2byte	0x101
	.4byte	0xa0
	.byte	0x28
	.uleb128 0x9
	.4byte	$LASF27
	.byte	0x5
	.2byte	0x102
	.4byte	0xa0
	.byte	0x2c
	.uleb128 0x9
	.4byte	$LASF28
	.byte	0x5
	.2byte	0x104
	.4byte	0x27d
	.byte	0x30
	.uleb128 0x9
	.4byte	$LASF29
	.byte	0x5
	.2byte	0x106
	.4byte	0x283
	.byte	0x34
	.uleb128 0x9
	.4byte	$LASF30
	.byte	0x5
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0x9
	.4byte	$LASF31
	.byte	0x5
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0x9
	.4byte	$LASF32
	.byte	0x5
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0x9
	.4byte	$LASF33
	.byte	0x5
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0x9
	.4byte	$LASF34
	.byte	0x5
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0x9
	.4byte	$LASF35
	.byte	0x5
	.2byte	0x114
	.4byte	0x289
	.byte	0x47
	.uleb128 0x9
	.4byte	$LASF36
	.byte	0x5
	.2byte	0x118
	.4byte	0x299
	.byte	0x48
	.uleb128 0x9
	.4byte	$LASF37
	.byte	0x5
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0x9
	.4byte	$LASF38
	.byte	0x5
	.2byte	0x129
	.4byte	0x9e
	.byte	0x58
	.uleb128 0x9
	.4byte	$LASF39
	.byte	0x5
	.2byte	0x12a
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0x9
	.4byte	$LASF40
	.byte	0x5
	.2byte	0x12b
	.4byte	0x9e
	.byte	0x60
	.uleb128 0x9
	.4byte	$LASF41
	.byte	0x5
	.2byte	0x12c
	.4byte	0x9e
	.byte	0x64
	.uleb128 0x9
	.4byte	$LASF42
	.byte	0x5
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0x9
	.4byte	$LASF43
	.byte	0x5
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0x9
	.4byte	$LASF44
	.byte	0x5
	.2byte	0x131
	.4byte	0x29f
	.byte	0x70
	.byte	0
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x245
	.uleb128 0xb
	.4byte	0x97
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	$LASF79
	.byte	0x5
	.byte	0x96
	.uleb128 0x7
	.4byte	$LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.4byte	0x27d
	.uleb128 0x8
	.4byte	$LASF47
	.byte	0x5
	.byte	0x9d
	.4byte	0x27d
	.byte	0
	.uleb128 0x8
	.4byte	$LASF48
	.byte	0x5
	.byte	0x9e
	.4byte	0x283
	.byte	0x4
	.uleb128 0x8
	.4byte	$LASF49
	.byte	0x5
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x299
	.uleb128 0xb
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x245
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x2af
	.uleb128 0xb
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.4byte	$LASF80
	.uleb128 0xe
	.4byte	$LASF50
	.byte	0x5
	.2byte	0x13b
	.4byte	0x2af
	.uleb128 0xe
	.4byte	$LASF51
	.byte	0x5
	.2byte	0x13c
	.4byte	0x2af
	.uleb128 0xe
	.4byte	$LASF52
	.byte	0x5
	.2byte	0x13d
	.4byte	0x2af
	.uleb128 0xf
	.4byte	$LASF53
	.byte	0x4
	.byte	0xaa
	.4byte	0x283
	.uleb128 0xf
	.4byte	$LASF54
	.byte	0x4
	.byte	0xab
	.4byte	0x283
	.uleb128 0xf
	.4byte	$LASF55
	.byte	0x4
	.byte	0xac
	.4byte	0x283
	.uleb128 0xe
	.4byte	$LASF56
	.byte	0x6
	.2byte	0x222
	.4byte	0x305
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0xf
	.4byte	$LASF57
	.byte	0x7
	.byte	0x39
	.4byte	0xa0
	.uleb128 0xf
	.4byte	$LASF58
	.byte	0x7
	.byte	0x47
	.4byte	0x5a
	.uleb128 0xf
	.4byte	$LASF59
	.byte	0x7
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0xf
	.4byte	$LASF60
	.byte	0x7
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x2
	.4byte	$LASF61
	.byte	0x8
	.byte	0xe
	.4byte	0x342
	.uleb128 0x6
	.byte	0x4
	.4byte	0x348
	.uleb128 0x10
	.4byte	0x358
	.uleb128 0x11
	.4byte	0xa0
	.uleb128 0x11
	.4byte	0x358
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x36e
	.uleb128 0xb
	.4byte	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	$LASF65
	.byte	0x1
	.byte	0x3
	.4byte	0x35e
	.uleb128 0x5
	.byte	0x3
	.4byte	BASE64
	.uleb128 0x13
	.4byte	$LASF81
	.byte	0x1
	.byte	0x57
	.4byte	0x5a
	.4byte	$LFB6
	.4byte	$LFE6-$LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x418
	.uleb128 0x14
	.4byte	$LASF62
	.byte	0x1
	.byte	0x57
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF63
	.byte	0x1
	.byte	0x57
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	$LASF64
	.byte	0x1
	.byte	0x57
	.4byte	0x337
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.ascii	"in\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.ascii	"out\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	$LASF66
	.byte	0x1
	.byte	0x6a
	.4byte	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	$LBB12
	.4byte	$LBE12-$LBB12
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	$LBB13
	.4byte	$LBE13-$LBB13
	.uleb128 0x15
	.ascii	"c\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x428
	.uleb128 0xb
	.4byte	0x97
	.byte	0x18
	.byte	0
	.uleb128 0x17
	.4byte	$LASF68
	.byte	0x1
	.byte	0x49
	.4byte	$LFB5
	.4byte	$LFE5-$LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48c
	.uleb128 0x14
	.4byte	$LASF67
	.byte	0x1
	.byte	0x49
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF63
	.byte	0x1
	.byte	0x49
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	$LBB11
	.4byte	$LBE11-$LBB11
	.uleb128 0x12
	.4byte	$LASF66
	.byte	0x1
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.ascii	"out\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	$LASF69
	.byte	0x1
	.byte	0x37
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f
	.uleb128 0x18
	.ascii	"in\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF70
	.byte	0x1
	.byte	0x37
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii	"out\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.4byte	$LASF71
	.byte	0x1
	.byte	0x38
	.4byte	0x51f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	$LBB8
	.4byte	$LBE8-$LBB8
	.4byte	0x508
	.uleb128 0x15
	.ascii	"j\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.4byte	$LBB9
	.4byte	$LBE9-$LBB9
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	$LBB10
	.4byte	$LBE10-$LBB10
	.uleb128 0x15
	.ascii	"k\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x52f
	.uleb128 0xb
	.4byte	0x97
	.byte	0x17
	.byte	0
	.uleb128 0x17
	.4byte	$LASF72
	.byte	0x1
	.byte	0x29
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x593
	.uleb128 0x14
	.4byte	$LASF67
	.byte	0x1
	.byte	0x29
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF63
	.byte	0x1
	.byte	0x29
	.4byte	0x358
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	$LBB7
	.4byte	$LBE7-$LBB7
	.uleb128 0x12
	.4byte	$LASF66
	.byte	0x1
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.ascii	"out\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x593
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa6
	.4byte	0x5a3
	.uleb128 0xb
	.4byte	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.4byte	$LASF73
	.byte	0x1
	.byte	0x18
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63a
	.uleb128 0x18
	.ascii	"in\000"
	.byte	0x1
	.byte	0x18
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF70
	.byte	0x1
	.byte	0x18
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii	"out\000"
	.byte	0x1
	.byte	0x18
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.4byte	$LASF71
	.byte	0x1
	.byte	0x19
	.4byte	0x51f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	$LBB4
	.4byte	$LBE4-$LBB4
	.4byte	0x609
	.uleb128 0x15
	.ascii	"j\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x19
	.4byte	$LBB5
	.4byte	$LBE5-$LBB5
	.4byte	0x623
	.uleb128 0x15
	.ascii	"k\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x16
	.4byte	$LBB6
	.4byte	$LBE6-$LBB6
	.uleb128 0x15
	.ascii	"k\000"
	.byte	0x1
	.byte	0x23
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	$LASF82
	.byte	0x1
	.byte	0xf
	.4byte	0x5a
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x693
	.uleb128 0x18
	.ascii	"in\000"
	.byte	0x1
	.byte	0xf
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	$LASF74
	.byte	0x1
	.byte	0xf
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii	"out\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.4byte	$LBB3
	.4byte	$LBE3-$LBB3
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	$LASF83
	.byte	0x1
	.byte	0x7
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.ascii	"in\000"
	.byte	0x1
	.byte	0x7
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii	"out\000"
	.byte	0x1
	.byte	0x7
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	$LASF75
	.byte	0x1
	.byte	0x7
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.4byte	$LBB2
	.4byte	$LBE2-$LBB2
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF58:
	.ascii	"optind\000"
$LASF57:
	.ascii	"optarg\000"
$LASF32:
	.ascii	"_old_offset\000"
$LASF75:
	.ascii	"n_bits\000"
$LASF69:
	.ascii	"decode_chars\000"
$LASF27:
	.ascii	"_IO_save_end\000"
$LASF5:
	.ascii	"short int\000"
$LASF8:
	.ascii	"size_t\000"
$LASF13:
	.ascii	"sizetype\000"
$LASF37:
	.ascii	"_offset\000"
$LASF78:
	.ascii	"/home\000"
$LASF21:
	.ascii	"_IO_write_ptr\000"
$LASF16:
	.ascii	"_flags\000"
$LASF31:
	.ascii	"_flags2\000"
$LASF51:
	.ascii	"_IO_2_1_stdout_\000"
$LASF56:
	.ascii	"__environ\000"
$LASF36:
	.ascii	"_lock\000"
$LASF71:
	.ascii	"binaryrep\000"
$LASF28:
	.ascii	"_markers\000"
$LASF18:
	.ascii	"_IO_read_end\000"
$LASF73:
	.ascii	"encode_chars\000"
$LASF45:
	.ascii	"_IO_FILE\000"
$LASF72:
	.ascii	"encode_string\000"
$LASF82:
	.ascii	"to_decimal\000"
$LASF65:
	.ascii	"BASE64\000"
$LASF83:
	.ascii	"to_binary\000"
$LASF55:
	.ascii	"stderr\000"
$LASF6:
	.ascii	"long long int\000"
$LASF63:
	.ascii	"out_file\000"
$LASF62:
	.ascii	"in_file\000"
$LASF14:
	.ascii	"char\000"
$LASF11:
	.ascii	"long int\000"
$LASF67:
	.ascii	"string\000"
$LASF81:
	.ascii	"process_file\000"
$LASF33:
	.ascii	"_cur_column\000"
$LASF52:
	.ascii	"_IO_2_1_stderr_\000"
$LASF80:
	.ascii	"_IO_FILE_plus\000"
$LASF49:
	.ascii	"_pos\000"
$LASF48:
	.ascii	"_sbuf\000"
$LASF1:
	.ascii	"unsigned char\000"
$LASF4:
	.ascii	"signed char\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF50:
	.ascii	"_IO_2_1_stdin_\000"
$LASF0:
	.ascii	"unsigned int\000"
$LASF46:
	.ascii	"_IO_marker\000"
$LASF35:
	.ascii	"_shortbuf\000"
$LASF20:
	.ascii	"_IO_write_base\000"
$LASF44:
	.ascii	"_unused2\000"
$LASF59:
	.ascii	"opterr\000"
$LASF77:
	.ascii	"decoder.c\000"
$LASF24:
	.ascii	"_IO_buf_end\000"
$LASF61:
	.ascii	"convert_string_t\000"
$LASF64:
	.ascii	"convert\000"
$LASF70:
	.ascii	"n_in\000"
$LASF47:
	.ascii	"_next\000"
$LASF38:
	.ascii	"__pad1\000"
$LASF39:
	.ascii	"__pad2\000"
$LASF40:
	.ascii	"__pad3\000"
$LASF41:
	.ascii	"__pad4\000"
$LASF42:
	.ascii	"__pad5\000"
$LASF66:
	.ascii	"buffer\000"
$LASF2:
	.ascii	"short unsigned int\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF22:
	.ascii	"_IO_write_end\000"
$LASF12:
	.ascii	"__off64_t\000"
$LASF30:
	.ascii	"_fileno\000"
$LASF76:
	.ascii	"GNU C99 6.3.0 20170516 -meb -march=mips32r2 -mfpxx -mlls"
	.ascii	"c -mno-lxc1-sxc1 -mips32r2 -mabi=32 -g -std=c99\000"
$LASF29:
	.ascii	"_chain\000"
$LASF10:
	.ascii	"__off_t\000"
$LASF26:
	.ascii	"_IO_backup_base\000"
$LASF53:
	.ascii	"stdin\000"
$LASF23:
	.ascii	"_IO_buf_base\000"
$LASF9:
	.ascii	"__quad_t\000"
$LASF43:
	.ascii	"_mode\000"
$LASF19:
	.ascii	"_IO_read_base\000"
$LASF34:
	.ascii	"_vtable_offset\000"
$LASF25:
	.ascii	"_IO_save_base\000"
$LASF68:
	.ascii	"decode_string\000"
$LASF60:
	.ascii	"optopt\000"
$LASF15:
	.ascii	"FILE\000"
$LASF17:
	.ascii	"_IO_read_ptr\000"
$LASF74:
	.ascii	"in_n\000"
$LASF54:
	.ascii	"stdout\000"
$LASF79:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
