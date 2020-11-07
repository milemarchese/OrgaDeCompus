#include <sys/regdef.h>


#define SS 


.text

/* int mcm(int a, int b) */
.align 2
.globl mcm
.ent mcm
mcm:
    // Return 0
    li v0, 0
    jr ra
.end mcm


/* int mcd(int a, int b) */
.align 2
.globl mcd
.ent mcd
mcd:
    // Return 0
    li v0, 0
    jr ra
.end mcd

