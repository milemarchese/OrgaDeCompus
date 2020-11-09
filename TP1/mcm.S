#include <sys/regdef.h>
#define SS 16

//SRA
#define O_FP 12
#define O_GP 8

//LTA
#define O_A0 4
#define O_A1 0

.text
.align 2
.globl mcm
.ent mcm
mcm:
	// Creacion del stack
	subu sp, sp, SS
	sw fp, O_FP(sp)
	sw gp, O_GP(sp)
	move fp, sp

	// Cargo los argumentos



	// Return 1
	li v0, 1

	// Desarmo el stack
	lw gp, O_GP(sp)
	lw fp, O_FP(sp)
	addiu sp,sp,SS
	jr ra

.end mcm
