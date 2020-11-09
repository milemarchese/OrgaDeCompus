#include <sys/regdef.h>
#define SS 24

//SRA
#define O_PAD1 20
#define O_RA 16
#define O_FP 12
#define O_GP 8

//LTA
#define O_PAD2 4
#define O_AUX 0

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

	// TODO: Verificar overflow
	mul t0, a0, a1	// t0 = a0 * a1
	sw  t0, O_AUX(fp)

	jal mcd 					// mcd()

	lw  t0, O_AUX(fp)
	div v0, t0, v0	// t1 = t0 / v0(result)

	// Stack unwind
	lw gp, O_GP(sp)
	lw fp, O_FP(sp)
	lw ra, O_RA(sp)
	addiu sp,sp,SS
	jr ra

.end mcm
