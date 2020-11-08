.text
#define SS

//SRA
#define O_FP
#define O_GP

//LTA
#define O_A0
#define O_A1

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



	// Return 0
	li v0, 1

	// Desarmo el stack
	// lw gp, O_GP(sp)
	// lw fp, O_FP(sp)
	// addiu sp,sp,SS
	jr ra

.end mcm