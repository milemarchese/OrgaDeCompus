#include <sys/regdef.h>
#include "utils.h"
#define SS 40

//SRA
#define O_PAD1 36
#define O_RA 32
#define O_FP 28
#define O_GP 24

//LTA
#define O_PAD2 20
#define O_AUX 16

//Callers ABA
#define O_A0 (SS)
#define O_A1 (SS + 4)

.text
/* int mcd(int a, int b) */
.align 2
.globl mcm
.ent mcm
mcm:
	// Stack wind
	subu sp, sp, SS
	sw ra, O_RA(sp)
	sw fp, O_FP(sp)
	sw gp, O_GP(sp)
	move fp, sp

	// Store arguments
	sw		a0, O_A0(fp)
	sw		a1, O_A1(fp)

	mul t0, a0, a1				// t0 = a0 * a1

	// Overflow check
	divu t1, t0, a0				// t1 = t0 / a0
	bne t1, a1, _error

	sw  t0, O_AUX(fp)

	jal mcd 							// mcd()

	lw  t0, O_AUX(fp)
	div v0, t0, v0				// v0 = t0 / v0(result)


_return:

	// Stack unwind
	lw gp, O_GP(sp)
	lw fp, O_FP(sp)
	lw ra, O_RA(sp)
	addiu sp,sp,SS
	jr ra

_error:
	la t0, error
	li t1, OVERFLOW_CODE
	sw t1, 0(t0)
	li v0, 0
	b _return

.end mcm
