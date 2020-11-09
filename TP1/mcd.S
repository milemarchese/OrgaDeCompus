#include <sys/regdef.h>
#define SS  16

//SRA
#define O_FP 12
#define O_GP 8

//LTA
#define O_A 4
#define O_B 0

.text
/* int mcd(int a, int b) */
.align 2
.globl mcd
.ent mcd
mcd:
	// Stack wind
	subu	sp, sp, SS
	sw		fp, O_FP(sp)
	sw		gp, O_GP(sp)
	move	fp, sp

	// Store arguments
	sw		a0, O_A(fp)
	sw		a1, O_B(fp)

_loop:

	lw		t0, O_A(fp)				// t0 <- a
	lw		t1, O_B(fp)				// t1 <- b
	beq		t1, $0, _return		// return if b == 0

	rem		t2, t0,	t1				// t2 <- a % b
	sw		t1, O_A(fp)				// a <- t1 (a = b)
	sw		t2, O_B(fp)				// b <- t2 (b = a % b)
	b		_loop								// branch always to _loop


_return:

	lw		v0,	O_A(fp)				// Return value a

	// Stack unwind
	lw	gp,	O_GP(sp)
	lw	fp,	O_FP(sp)
	addiu	sp,	sp,	SS
	jr	ra
.end mcd
