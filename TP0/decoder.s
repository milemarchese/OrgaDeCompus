	.file	1 "decoder.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
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
	sw	$fp,20($sp)
	move	$fp,$sp
	move	$2,$4
	sw	$5,28($fp)
	sw	$6,32($fp)
	sb	$2,24($fp)
	lw	$2,32($fp)
	addiu	$2,$2,-1
	sw	$2,8($fp)
	b	$L2
	nop

$L4:
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
	lb	$2,24($fp)
	sra	$2,$2,1
	sb	$2,24($fp)
	lw	$2,8($fp)
	addiu	$2,$2,-1
	sw	$2,8($fp)
$L2:
	lw	$2,8($fp)
	bgez	$2,$L4
	nop

	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	to_binary
	.size	to_binary, .-to_binary
	.align	2
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
	sw	$fp,20($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$0,8($fp)
	sw	$0,12($fp)
	b	$L6
	nop

$L9:
	lw	$2,12($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	beq	$2,$0,$L7
	nop

	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,12($fp)
	subu	$2,$3,$2
	li	$3,1			# 0x1
	sll	$2,$3,$2
	b	$L8
	nop

$L7:
	move	$2,$0
$L8:
	lw	$3,8($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L6:
	lw	$3,12($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L9
	nop

	lw	$2,8($fp)
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	to_decimal
	.size	to_decimal, .-to_decimal
	.align	2
	.globl	encode_chars
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
	sw	$31,76($sp)
	sw	$fp,72($sp)
	sw	$16,68($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,24($fp)
	b	$L12
	nop

$L13:
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

	lw	$28,16($fp)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L12:
	lw	$3,24($fp)
	lw	$2,84($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L13
	nop

	sw	$0,28($fp)
	b	$L14
	nop

$L15:
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

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,%got(BASE64)($28)
	addiu	$2,$2,%lo(BASE64)
	addu	$2,$3,$2
	lb	$2,0($2)
	sb	$2,0($16)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L14:
	lw	$2,84($fp)
	addiu	$3,$2,1
	lw	$2,28($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L15
	nop

	lw	$2,84($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	b	$L16
	nop

$L17:
	lw	$2,32($fp)
	lw	$3,88($fp)
	addu	$2,$3,$2
	li	$3,61			# 0x3d
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L16:
	lw	$2,32($fp)
	slt	$2,$2,4
	bne	$2,$0,$L17
	nop

	nop
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$16,68($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	encode_chars
	.size	encode_chars, .-encode_chars
	.align	2
	.globl	encode_line
	.set	nomips16
	.set	nomicromips
	.ent	encode_line
	.type	encode_line, @function
encode_line:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$0,24($fp)
	b	$L19
	nop

$L23:
	sw	$0,28($fp)
	b	$L20
	nop

$L22:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L20:
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$2,0($2)
	beq	$2,$0,$L21
	nop

	lw	$2,28($fp)
	slt	$2,$2,3
	bne	$2,$0,$L22
	nop

$L21:
	sw	$0,32($fp)
	sb	$0,36($fp)
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

	lw	$28,16($fp)
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	addiu	$2,$fp,32
	lw	$5,52($fp)
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L19:
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L23
	nop

	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	encode_line
	.size	encode_line, .-encode_line
	.align	2
	.globl	decode_chars
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
	sw	$31,76($sp)
	sw	$fp,72($sp)
	sw	$16,68($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,24($fp)
	b	$L25
	nop

$L30:
	sw	$0,28($fp)
	b	$L26
	nop

$L29:
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

	lw	$28,16($fp)
	b	$L28
	nop

$L27:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L26:
	lw	$2,28($fp)
	slt	$2,$2,64
	bne	$2,$0,$L29
	nop

$L28:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L25:
	lw	$3,24($fp)
	lw	$2,84($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L30
	nop

	sw	$0,32($fp)
	b	$L31
	nop

$L32:
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

	lw	$28,16($fp)
	seb	$2,$2
	sb	$2,0($16)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L31:
	lw	$2,84($fp)
	addiu	$3,$2,-1
	lw	$2,32($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L32
	nop

	nop
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$16,68($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_chars
	.size	decode_chars, .-decode_chars
	.align	2
	.globl	decode_line
	.set	nomips16
	.set	nomicromips
	.ent	decode_line
	.type	decode_line, @function
decode_line:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$0,24($fp)
	b	$L34
	nop

$L39:
	sw	$0,28($fp)
	b	$L35
	nop

$L37:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L35:
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

	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$2,0($2)
	beq	$2,$0,$L36
	nop

	lw	$2,28($fp)
	slt	$2,$2,4
	bne	$2,$0,$L37
	nop

$L36:
	sw	$0,32($fp)
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

	lw	$28,16($fp)
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	addiu	$2,$fp,32
	lw	$5,52($fp)
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L34:
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	beq	$2,$0,$L40
	nop

	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,61			# 0x3d
	bne	$3,$2,$L39
	nop

$L40:
	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_line
	.size	decode_line, .-decode_line
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
	.set	nomips16
	.set	nomicromips
	.ent	process_file
	.type	process_file, @function
process_file:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,24($fp)
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,28($fp)
	lw	$2,56($fp)
	beq	$2,$0,$L42
	nop

	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$4,56($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L42
	nop

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

	lw	$28,16($fp)
	li	$2,1			# 0x1
	b	$L48
	nop

$L42:
	lw	$2,60($fp)
	beq	$2,$0,$L44
	nop

	lw	$2,%got($LC2)($28)
	addiu	$5,$2,%lo($LC2)
	lw	$4,60($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L44
	nop

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

	lw	$28,16($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L45
	nop

	lw	$4,24($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L45:
	li	$2,1			# 0x1
	b	$L48
	nop

$L44:
	sw	$0,36($fp)
	sw	$0,40($fp)
	b	$L46
	nop

$L47:
	lw	$3,36($fp)
	lw	$2,64($fp)
	lw	$5,28($fp)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
$L46:
	addiu	$3,$fp,40
	addiu	$2,$fp,36
	lw	$6,24($fp)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(getline)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,getline
1:	jalr	$25
	nop

	lw	$28,16($fp)
	slt	$2,$0,$2
	andi	$2,$2,0x00ff
	sw	$2,32($fp)
	lw	$2,32($fp)
	bne	$2,$0,$L47
	nop

	lw	$2,36($fp)
	move	$4,$2
	lw	$2,%call16(free)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,24($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,28($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
$L48:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	process_file
	.size	process_file, .-process_file
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
