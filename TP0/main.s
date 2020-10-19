	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
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
	.ascii	"2020\012\000"
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
$LFB0 = .
	.file 1 "main.c"
	.loc 1 12 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
$LBB2 = .
	.loc 1 13 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L2
	nop

$L17:
	.loc 1 14 0
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

$LVL0 = .
	lw	$28,16($fp)
	beq	$2,$0,$L3
	nop

	.loc 1 14 0 is_stmt 0 discriminator 1
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

$LVL1 = .
	lw	$28,16($fp)
	bne	$2,$0,$L4
	nop

$L3:
	.loc 1 15 0 is_stmt 1
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

$LVL2 = .
	lw	$28,16($fp)
	.loc 1 16 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L4:
	.loc 1 17 0
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

$LVL3 = .
	lw	$28,16($fp)
	beq	$2,$0,$L6
	nop

	.loc 1 17 0 is_stmt 0 discriminator 1
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

$LVL4 = .
	lw	$28,16($fp)
	bne	$2,$0,$L7
	nop

$L6:
	.loc 1 18 0 is_stmt 1
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

$LVL5 = .
	lw	$28,16($fp)
	.loc 1 19 0
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L7:
	.loc 1 20 0
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

$LVL6 = .
	lw	$28,16($fp)
	beq	$2,$0,$L8
	nop

	.loc 1 20 0 is_stmt 0 discriminator 1
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

$LVL7 = .
	lw	$28,16($fp)
	bne	$2,$0,$L9
	nop

$L8:
	.loc 1 21 0 is_stmt 1
	lw	$2,24($fp)
	addiu	$3,$2,1
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L10
	nop

	.loc 1 21 0 is_stmt 0 discriminator 1
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L10:
	.loc 1 22 0 is_stmt 1
	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,48($fp)
	sw	$3,0($2)
	.loc 1 23 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L11
	nop

$L9:
	.loc 1 24 0
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

$LVL8 = .
	lw	$28,16($fp)
	beq	$2,$0,$L12
	nop

	.loc 1 24 0 is_stmt 0 discriminator 1
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

$LVL9 = .
	lw	$28,16($fp)
	bne	$2,$0,$L13
	nop

$L12:
	.loc 1 25 0 is_stmt 1
	lw	$2,24($fp)
	addiu	$3,$2,1
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L14
	nop

	.loc 1 25 0 is_stmt 0 discriminator 1
	li	$2,-1			# 0xffffffffffffffff
	b	$L5
	nop

$L14:
	.loc 1 26 0 is_stmt 1
	lw	$2,24($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,44($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,52($fp)
	sw	$3,0($2)
	.loc 1 27 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
	b	$L11
	nop

$L13:
	.loc 1 28 0
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

$LVL10 = .
	lw	$28,16($fp)
	beq	$2,$0,$L15
	nop

	.loc 1 28 0 is_stmt 0 discriminator 1
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

$LVL11 = .
	lw	$28,16($fp)
	bne	$2,$0,$L16
	nop

$L15:
	.loc 1 29 0 is_stmt 1
	lw	$2,56($fp)
	lw	$3,%got(decode_string)($28)
	sw	$3,0($2)
	b	$L11
	nop

$L16:
	.loc 1 31 0
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

$LVL12 = .
	lw	$28,16($fp)
	.loc 1 32 0
	li	$2,1			# 0x1
	b	$L5
	nop

$L11:
	.loc 1 13 0 discriminator 2
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L2:
	.loc 1 13 0 is_stmt 0 discriminator 1
	lw	$3,24($fp)
	lw	$2,40($fp)
	slt	$2,$3,$2
	bne	$2,$0,$L17
	nop

$LBE2 = .
	.loc 1 35 0 is_stmt 1
	move	$2,$0
$L5:
	.loc 1 36 0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	validate_parameters
	.cfi_endproc
$LFE0:
	.size	validate_parameters, .-validate_parameters
	.align	2
	.globl	main
$LFB1 = .
	.loc 1 39 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 56
	sw	$31,52($sp)
	sw	$fp,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	.cprestore	24
	sw	$4,56($fp)
	sw	$5,60($fp)
	.loc 1 40 0
	sw	$0,36($fp)
	.loc 1 41 0
	sw	$0,40($fp)
	.loc 1 42 0
	lw	$2,%got(encode_string)($28)
	sw	$2,44($fp)
	.loc 1 43 0
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

$LVL13 = .
	lw	$28,24($fp)
	sw	$2,32($fp)
	.loc 1 44 0
	lw	$2,32($fp)
	blez	$2,$L19
	nop

	.loc 1 45 0
	lw	$2,32($fp)
	b	$L22
	nop

$L19:
	.loc 1 46 0
	lw	$2,32($fp)
	bgez	$2,$L21
	nop

	.loc 1 47 0
	move	$2,$0
	b	$L22
	nop

$L21:
	.loc 1 49 0
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

$LVL14 = .
	lw	$28,24($fp)
$L22:
	.loc 1 50 0 discriminator 1
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE1:
	.size	main, .-main
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
	.4byte	0x460
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF69
	.byte	0xc
	.4byte	$LASF70
	.4byte	$LASF71
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
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x2
	.4byte	$LASF15
	.byte	0x4
	.byte	0x30
	.4byte	0xbd
	.uleb128 0x8
	.4byte	$LASF45
	.byte	0x98
	.byte	0x5
	.byte	0xf1
	.4byte	0x23a
	.uleb128 0x9
	.4byte	$LASF16
	.byte	0x5
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.4byte	$LASF17
	.byte	0x5
	.byte	0xf7
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x5
	.byte	0xf8
	.4byte	0xa0
	.byte	0x8
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x5
	.byte	0xf9
	.4byte	0xa0
	.byte	0xc
	.uleb128 0x9
	.4byte	$LASF20
	.byte	0x5
	.byte	0xfa
	.4byte	0xa0
	.byte	0x10
	.uleb128 0x9
	.4byte	$LASF21
	.byte	0x5
	.byte	0xfb
	.4byte	0xa0
	.byte	0x14
	.uleb128 0x9
	.4byte	$LASF22
	.byte	0x5
	.byte	0xfc
	.4byte	0xa0
	.byte	0x18
	.uleb128 0x9
	.4byte	$LASF23
	.byte	0x5
	.byte	0xfd
	.4byte	0xa0
	.byte	0x1c
	.uleb128 0x9
	.4byte	$LASF24
	.byte	0x5
	.byte	0xfe
	.4byte	0xa0
	.byte	0x20
	.uleb128 0xa
	.4byte	$LASF25
	.byte	0x5
	.2byte	0x100
	.4byte	0xa0
	.byte	0x24
	.uleb128 0xa
	.4byte	$LASF26
	.byte	0x5
	.2byte	0x101
	.4byte	0xa0
	.byte	0x28
	.uleb128 0xa
	.4byte	$LASF27
	.byte	0x5
	.2byte	0x102
	.4byte	0xa0
	.byte	0x2c
	.uleb128 0xa
	.4byte	$LASF28
	.byte	0x5
	.2byte	0x104
	.4byte	0x272
	.byte	0x30
	.uleb128 0xa
	.4byte	$LASF29
	.byte	0x5
	.2byte	0x106
	.4byte	0x278
	.byte	0x34
	.uleb128 0xa
	.4byte	$LASF30
	.byte	0x5
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0xa
	.4byte	$LASF31
	.byte	0x5
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0xa
	.4byte	$LASF32
	.byte	0x5
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0xa
	.4byte	$LASF33
	.byte	0x5
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0xa
	.4byte	$LASF34
	.byte	0x5
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xa
	.4byte	$LASF35
	.byte	0x5
	.2byte	0x114
	.4byte	0x27e
	.byte	0x47
	.uleb128 0xa
	.4byte	$LASF36
	.byte	0x5
	.2byte	0x118
	.4byte	0x28e
	.byte	0x48
	.uleb128 0xa
	.4byte	$LASF37
	.byte	0x5
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0xa
	.4byte	$LASF38
	.byte	0x5
	.2byte	0x129
	.4byte	0x9e
	.byte	0x58
	.uleb128 0xa
	.4byte	$LASF39
	.byte	0x5
	.2byte	0x12a
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0xa
	.4byte	$LASF40
	.byte	0x5
	.2byte	0x12b
	.4byte	0x9e
	.byte	0x60
	.uleb128 0xa
	.4byte	$LASF41
	.byte	0x5
	.2byte	0x12c
	.4byte	0x9e
	.byte	0x64
	.uleb128 0xa
	.4byte	$LASF42
	.byte	0x5
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0xa
	.4byte	$LASF43
	.byte	0x5
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0xa
	.4byte	$LASF44
	.byte	0x5
	.2byte	0x131
	.4byte	0x294
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	$LASF72
	.byte	0x5
	.byte	0x96
	.uleb128 0x8
	.4byte	$LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x9c
	.4byte	0x272
	.uleb128 0x9
	.4byte	$LASF47
	.byte	0x5
	.byte	0x9d
	.4byte	0x272
	.byte	0
	.uleb128 0x9
	.4byte	$LASF48
	.byte	0x5
	.byte	0x9e
	.4byte	0x278
	.byte	0x4
	.uleb128 0x9
	.4byte	$LASF49
	.byte	0x5
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x241
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x28e
	.uleb128 0xd
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23a
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x2a4
	.uleb128 0xd
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	$LASF73
	.uleb128 0xf
	.4byte	$LASF50
	.byte	0x5
	.2byte	0x13b
	.4byte	0x2a4
	.uleb128 0xf
	.4byte	$LASF51
	.byte	0x5
	.2byte	0x13c
	.4byte	0x2a4
	.uleb128 0xf
	.4byte	$LASF52
	.byte	0x5
	.2byte	0x13d
	.4byte	0x2a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x10
	.4byte	$LASF53
	.byte	0x4
	.byte	0xaa
	.4byte	0x278
	.uleb128 0x10
	.4byte	$LASF54
	.byte	0x4
	.byte	0xab
	.4byte	0x278
	.uleb128 0x10
	.4byte	$LASF55
	.byte	0x4
	.byte	0xac
	.4byte	0x278
	.uleb128 0xf
	.4byte	$LASF56
	.byte	0x6
	.2byte	0x222
	.4byte	0x300
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x10
	.4byte	$LASF57
	.byte	0x7
	.byte	0x39
	.4byte	0xa0
	.uleb128 0x10
	.4byte	$LASF58
	.byte	0x7
	.byte	0x47
	.4byte	0x5a
	.uleb128 0x10
	.4byte	$LASF59
	.byte	0x7
	.byte	0x4c
	.4byte	0x5a
	.uleb128 0x10
	.4byte	$LASF60
	.byte	0x7
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x2
	.4byte	$LASF61
	.byte	0x8
	.byte	0xe
	.4byte	0x33d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x343
	.uleb128 0x11
	.4byte	0x353
	.uleb128 0x12
	.4byte	0xa0
	.uleb128 0x12
	.4byte	0x353
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x13
	.4byte	$LASF62
	.byte	0x1
	.byte	0x9
	.4byte	0x2cd
	.uleb128 0x5
	.byte	0x3
	.4byte	HELP_MSG
	.uleb128 0x13
	.4byte	$LASF63
	.byte	0x1
	.byte	0xa
	.4byte	0x2cd
	.uleb128 0x5
	.byte	0x3
	.4byte	VERSION_NUM
	.uleb128 0x14
	.4byte	$LASF67
	.byte	0x1
	.byte	0x27
	.4byte	0x5a
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e8
	.uleb128 0x15
	.4byte	$LASF64
	.byte	0x1
	.byte	0x27
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	$LASF65
	.byte	0x1
	.byte	0x27
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.ascii	"in\000"
	.byte	0x1
	.byte	0x28
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"out\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.4byte	$LASF66
	.byte	0x1
	.byte	0x2a
	.4byte	0x332
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	$LASF68
	.byte	0x1
	.byte	0xc
	.4byte	0x5a
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x45d
	.uleb128 0x15
	.4byte	$LASF64
	.byte	0x1
	.byte	0xc
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	$LASF65
	.byte	0x1
	.byte	0xc
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii	"in\000"
	.byte	0x1
	.byte	0xc
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii	"out\000"
	.byte	0x1
	.byte	0xc
	.4byte	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.4byte	$LASF66
	.byte	0x1
	.byte	0xc
	.4byte	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	$LBB2
	.4byte	$LBE2-$LBB2
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x332
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
$LASF68:
	.ascii	"validate_parameters\000"
$LASF57:
	.ascii	"optarg\000"
$LASF45:
	.ascii	"_IO_FILE\000"
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
$LASF71:
	.ascii	"/home\000"
$LASF67:
	.ascii	"main\000"
$LASF21:
	.ascii	"_IO_write_ptr\000"
$LASF16:
	.ascii	"_flags\000"
$LASF31:
	.ascii	"_flags2\000"
$LASF51:
	.ascii	"_IO_2_1_stdout_\000"
$LASF36:
	.ascii	"_lock\000"
$LASF56:
	.ascii	"__environ\000"
$LASF28:
	.ascii	"_markers\000"
$LASF18:
	.ascii	"_IO_read_end\000"
$LASF55:
	.ascii	"stderr\000"
$LASF6:
	.ascii	"long long int\000"
$LASF63:
	.ascii	"VERSION_NUM\000"
$LASF14:
	.ascii	"char\000"
$LASF11:
	.ascii	"long int\000"
$LASF33:
	.ascii	"_cur_column\000"
$LASF52:
	.ascii	"_IO_2_1_stderr_\000"
$LASF73:
	.ascii	"_IO_FILE_plus\000"
$LASF49:
	.ascii	"_pos\000"
$LASF65:
	.ascii	"argv\000"
$LASF48:
	.ascii	"_sbuf\000"
$LASF32:
	.ascii	"_old_offset\000"
$LASF1:
	.ascii	"unsigned char\000"
$LASF64:
	.ascii	"argc\000"
$LASF50:
	.ascii	"_IO_2_1_stdin_\000"
$LASF4:
	.ascii	"signed char\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF62:
	.ascii	"HELP_MSG\000"
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
$LASF24:
	.ascii	"_IO_buf_end\000"
$LASF61:
	.ascii	"convert_string_t\000"
$LASF66:
	.ascii	"convert\000"
$LASF58:
	.ascii	"optind\000"
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
$LASF2:
	.ascii	"short unsigned int\000"
$LASF70:
	.ascii	"main.c\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF22:
	.ascii	"_IO_write_end\000"
$LASF12:
	.ascii	"__off64_t\000"
$LASF30:
	.ascii	"_fileno\000"
$LASF69:
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
$LASF60:
	.ascii	"optopt\000"
$LASF15:
	.ascii	"FILE\000"
$LASF17:
	.ascii	"_IO_read_ptr\000"
$LASF54:
	.ascii	"stdout\000"
$LASF72:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
