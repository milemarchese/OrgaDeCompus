	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.globl	HELP_MSG
	.rdata
	.align	2
$LC0:
	.ascii	"Usage:\012\011tp0 -h\012\011tp0 -V\012\011tp0 [options]\012"
	.ascii	"Options:\012\011-V, --version \011\011Print version and "
	.ascii	"quit.\012\011-h, --help \011\011\011Print this informati"
	.ascii	"on.\012\011-o, --output \011\011Path to output file.\012"
	.ascii	"\011-i, --input \011\011Path to input file.\012\011-d, -"
	.ascii	"-decode\011\011Decode a base64-encoded file.\012Examples"
	.ascii	":\012\012\011tp0 -i input.txt -o output.txt\012\000"
	.section	.data.rel.local,"aw",@progbits
	.align	2
	.type	HELP_MSG, @object
	.size	HELP_MSG, 4
HELP_MSG:
	.word	$LC0
	.globl	VERSION_NUM
	.rdata
	.align	2
$LC1:
	.ascii	"2020.2\012\000"
	.section	.data.rel.local
	.align	2
	.type	VERSION_NUM, @object
	.size	VERSION_NUM, 4
VERSION_NUM:
	.word	$LC1
	.rdata
	.align	2
$LC2:
	.ascii	"-h\000"
	.align	2
$LC3:
	.ascii	"--help\000"
	.align	2
$LC4:
	.ascii	"-V\000"
	.align	2
$LC5:
	.ascii	"--version\000"
	.align	2
$LC6:
	.ascii	"-i\000"
	.align	2
$LC7:
	.ascii	"--input\000"
	.align	2
$LC8:
	.ascii	"-o\000"
	.align	2
$LC9:
	.ascii	"--output\000"
	.align	2
$LC10:
	.ascii	"-d\000"
	.align	2
$LC11:
	.ascii	"--decode\000"
	.align	2
$LC12:
	.ascii	"Invalid argument\000"
	.align	2
$LC13:
	.ascii	"%s %s\012\000"
	.text
	.align	2
	.globl	validate_parameters
	.set	nomips16
	.set	nomicromips
	.ent	validate_parameters
	.type	validate_parameters, @function
validate_parameters:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L2
	nop

$L17:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L3
	nop

	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L4
	nop

$L3:
	lw	$2,%got(stdout)($28)
	lw	$3,0($2)
	lw	$2,%got(HELP_MSG)($28)
	lw	$2,0($2)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L4:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L6
	nop

	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L7
	nop

$L6:
	lw	$2,%got(stdout)($28)
	lw	$3,0($2)
	lw	$2,%got(VERSION_NUM)($28)
	lw	$2,0($2)
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(fputs)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L7:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L8
	nop

	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L9
	nop

$L8:
	lw	$2,24($fp)
	addiu	$3,$2,1
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L10
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L10:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,48($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L11
	nop

$L9:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC8)($28)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L12
	nop

	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC9)($28)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L13
	nop

$L12:
	lw	$2,24($fp)
	addiu	$3,$2,1
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L14:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,52($fp)
	sw	$3,0($2)
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L11
	nop

$L13:
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC10)($28)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	beq	$2,$0,$L15
	nop

	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	bne	$2,$0,$L16
	nop

$L15:
	lw	$2,56($fp)
	lw	$3,%got(decode_string)($28)
	sw	$3,0($2)
	b	$L11
	nop

$L16:
	lw	$2,%got(stderr)($28)
	lw	$4,0($2)
	lw	$2,24($fp)
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$7,$2
	lw	$2,%got($LC12)($28)
	addiu	$6,$2,%lo($LC12)
	lw	$2,%got($LC13)($28)
	addiu	$5,$2,%lo($LC13)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$2,1			# 0x1
	b	$L5
	nop

$L11:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	lw	$3,24($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L17
	nop

	move	$2,$0
$L5:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	validate_parameters
	.size	validate_parameters, .-validate_parameters
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,56,$31		# vars= 16, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$0,36($fp)
	sw	$0,40($fp)
	lw	$2,%got(encode_string)($28)
	sw	$2,44($fp)
	addiu	$4,$fp,40
	addiu	$3,$fp,36
	addiu	$2,$fp,44
	sw	$2,16($sp)
	move	$7,$4
	move	$6,$3
	lw	$5,60($fp)
	lw	$4,56($fp)
	lw	$2,%got(validate_parameters)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,validate_parameters
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	lw	$2,32($fp)
	blez	$2,$L19
	nop

	lw	$2,32($fp)
	b	$L22
	nop

$L19:
	lw	$2,32($fp)
	bgez	$2,$L21
	nop

	move	$2,$0
	b	$L22
	nop

$L21:
	lw	$2,36($fp)
	lw	$3,40($fp)
	lw	$4,44($fp)
	move	$6,$4
	move	$5,$3
	move	$4,$2
	lw	$2,%call16(process_file)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,process_file
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L22:
	move	$sp,$fp
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"