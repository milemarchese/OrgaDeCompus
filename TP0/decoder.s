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
	.globl	encode_chars
	.set	nomips16
	.set	nomicromips
	.ent	encode_chars
	.type	encode_chars, @function
encode_chars:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	lw	$2,24($fp)
	lb	$2,0($2)
	sra	$2,$2,2
	seb	$2,$2
	andi	$2,$2,0x3f
	seb	$3,$2
	lw	$2,32($fp)
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	lw	$3,24($fp)
	lb	$3,0($3)
	andi	$3,$3,0x00ff
	sll	$3,$3,4
	seb	$3,$3
	andi	$3,$3,0x30
	seb	$4,$3
	lw	$3,24($fp)
	addiu	$3,$3,1
	lb	$3,0($3)
	sra	$3,$3,4
	seb	$3,$3
	andi	$3,$3,0xf
	seb	$3,$3
	or	$3,$4,$3
	seb	$3,$3
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,2
	lw	$3,24($fp)
	addiu	$3,$3,1
	lb	$3,0($3)
	andi	$3,$3,0x00ff
	sll	$3,$3,2
	seb	$3,$3
	andi	$3,$3,0x3c
	seb	$4,$3
	lw	$3,24($fp)
	addiu	$3,$3,2
	lb	$3,0($3)
	sra	$3,$3,6
	seb	$3,$3
	andi	$3,$3,0x3
	seb	$3,$3
	or	$3,$4,$3
	seb	$3,$3
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,3
	lw	$3,24($fp)
	addiu	$3,$3,2
	lb	$3,0($3)
	andi	$3,$3,0x3f
	seb	$3,$3
	sb	$3,0($2)
	sw	$0,8($fp)
	b	$L2
	nop

$L3:
	lw	$2,8($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,8($fp)
	lw	$4,32($fp)
	addu	$3,$4,$3
	lb	$3,0($3)
	andi	$3,$3,0x00ff
	move	$4,$3
	lw	$3,%got(BASE64)($28)
	addiu	$3,$3,%lo(BASE64)
	addu	$3,$4,$3
	lb	$3,0($3)
	sb	$3,0($2)
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L2:
	lw	$2,28($fp)
	addiu	$3,$2,1
	lw	$2,8($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L3
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
	b	$L4
	nop

$L5:
	lw	$2,12($fp)
	lw	$3,32($fp)
	addu	$2,$3,$2
	li	$3,61			# 0x3d
	sb	$3,0($2)
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L4:
	lw	$2,12($fp)
	slt	$2,$2,4
	bne	$2,$0,$L5
	nop

	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	encode_chars
	.size	encode_chars, .-encode_chars
	.align	2
	.globl	encode_string
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
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$0,24($fp)
	b	$L7
	nop

$L11:
	sw	$0,28($fp)
	b	$L8
	nop

$L10:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L8:
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$3,$3,$2
	lw	$2,52($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L9
	nop

	lw	$2,28($fp)
	slt	$2,$2,3
	bne	$2,$0,$L10
	nop

$L9:
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
	lw	$5,56($fp)
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L7:
	lw	$3,24($fp)
	lw	$2,52($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L11
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
	.end	encode_string
	.size	encode_string, .-encode_string
	.align	2
	.globl	decode_chars
	.set	nomips16
	.set	nomicromips
	.ent	decode_chars
	.type	decode_chars, @function
decode_chars:
	.frame	$fp,24,$31		# vars= 8, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$fp,20($sp)
	move	$fp,$sp
	.cprestore	0
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	sw	$0,8($fp)
	b	$L13
	nop

$L18:
	sw	$0,12($fp)
	b	$L14
	nop

$L17:
	lw	$2,8($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$2,%got(BASE64)($28)
	addiu	$4,$2,%lo(BASE64)
	lw	$2,12($fp)
	addu	$2,$4,$2
	lb	$2,0($2)
	bne	$3,$2,$L15
	nop

	lw	$2,8($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	lw	$3,12($fp)
	seb	$3,$3
	sb	$3,0($2)
	b	$L16
	nop

$L15:
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
$L14:
	lw	$2,12($fp)
	slt	$2,$2,64
	bne	$2,$0,$L17
	nop

$L16:
	lw	$2,8($fp)
	addiu	$2,$2,1
	sw	$2,8($fp)
$L13:
	lw	$3,8($fp)
	lw	$2,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L18
	nop

	lw	$2,24($fp)
	lb	$2,0($2)
	sll	$2,$2,2
	seb	$3,$2
	lw	$2,24($fp)
	addiu	$2,$2,1
	lb	$2,0($2)
	andi	$2,$2,0x00ff
	sra	$2,$2,4
	seb	$2,$2
	andi	$2,$2,0x3
	seb	$2,$2
	or	$2,$3,$2
	seb	$3,$2
	lw	$2,32($fp)
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,1
	lw	$3,24($fp)
	addiu	$3,$3,1
	lb	$3,0($3)
	sll	$3,$3,4
	seb	$4,$3
	lw	$3,24($fp)
	addiu	$3,$3,2
	lb	$3,0($3)
	andi	$3,$3,0x00ff
	sra	$3,$3,2
	seb	$3,$3
	andi	$3,$3,0xf
	seb	$3,$3
	or	$3,$4,$3
	seb	$3,$3
	sb	$3,0($2)
	lw	$2,32($fp)
	addiu	$2,$2,2
	lw	$3,24($fp)
	addiu	$3,$3,2
	lb	$3,0($3)
	sll	$3,$3,6
	seb	$4,$3
	lw	$3,24($fp)
	addiu	$3,$3,3
	lb	$3,0($3)
	or	$3,$4,$3
	seb	$3,$3
	sb	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_chars
	.size	decode_chars, .-decode_chars
	.align	2
	.globl	decode_string
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
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$0,24($fp)
	b	$L20
	nop

$L27:
	sw	$0,28($fp)
	b	$L21
	nop

$L23:
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L21:
	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$3,0($2)
	li	$2,61			# 0x3d
	beq	$3,$2,$L22
	nop

	lw	$3,24($fp)
	lw	$2,28($fp)
	addu	$2,$3,$2
	move	$3,$2
	lw	$2,48($fp)
	addu	$2,$2,$3
	lb	$2,0($2)
	beq	$2,$0,$L22
	nop

	lw	$2,28($fp)
	slt	$2,$2,4
	bne	$2,$0,$L23
	nop

$L22:
	sw	$0,36($fp)
	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	addiu	$3,$fp,36
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
	sw	$0,32($fp)
	b	$L24
	nop

$L25:
	lw	$2,32($fp)
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lb	$2,12($2)
	lw	$5,56($fp)
	move	$4,$2
	lw	$2,%call16(fputc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L24:
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,32($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L25
	nop

$L20:
	lw	$3,24($fp)
	lw	$2,52($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L28
	nop

	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,61			# 0x3d
	beq	$3,$2,$L28
	nop

	lw	$2,24($fp)
	lw	$3,48($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,$L27
	nop

$L28:
	nop
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decode_string
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
	sw	$31,76($sp)
	sw	$fp,72($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,24($fp)
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,28($fp)
	lw	$2,80($fp)
	beq	$2,$0,$L30
	nop

	lw	$2,%got($LC0)($28)
	addiu	$5,$2,%lo($LC0)
	lw	$4,80($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,24($fp)
	lw	$2,24($fp)
	bne	$2,$0,$L30
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
	b	$L40
	nop

$L30:
	lw	$2,84($fp)
	beq	$2,$0,$L32
	nop

	lw	$2,%got($LC2)($28)
	addiu	$5,$2,%lo($LC2)
	lw	$4,84($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	bne	$2,$0,$L32
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
	beq	$2,$0,$L33
	nop

	lw	$4,24($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L33:
	li	$2,1			# 0x1
	b	$L40
	nop

$L32:
	sw	$0,44($fp)
	sw	$0,48($fp)
	sw	$0,52($fp)
	sw	$0,56($fp)
	sw	$0,60($fp)
	sw	$0,64($fp)
	sb	$0,68($fp)
	li	$2,24			# 0x18
	sw	$2,32($fp)
	b	$L34
	nop

$L39:
	sw	$0,36($fp)
	b	$L35
	nop

$L38:
	lw	$4,24($fp)
	lw	$2,%call16(fgetc)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgetc
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sb	$2,40($fp)
	lw	$4,24($fp)
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L36
	nop

	lw	$2,36($fp)
	sw	$2,32($fp)
	b	$L37
	nop

$L36:
	lw	$2,36($fp)
	addiu	$3,$fp,24
	addu	$2,$3,$2
	lbu	$3,40($fp)
	sb	$3,20($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L35:
	lw	$2,36($fp)
	slt	$2,$2,24
	bne	$2,$0,$L38
	nop

$L37:
	addiu	$3,$fp,44
	lw	$2,88($fp)
	lw	$6,28($fp)
	lw	$5,32($fp)
	move	$4,$3
	move	$25,$2
	jalr	$25
	nop

	lw	$28,16($fp)
$L34:
	lw	$4,24($fp)
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L39
	nop

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
$L40:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	addiu	$sp,$sp,80
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	process_file
	.size	process_file, .-process_file
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"