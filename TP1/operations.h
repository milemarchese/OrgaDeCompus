#ifndef OPERATIONS_H
#define OPERATIONS_H

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

// Pre: Takes two numbers, where a >= 2, b >= 2  and  a >= b.
// Post: Returns the greatest common divisor between the two numbers.
unsigned int mcd (unsigned int a, unsigned int b);


// Pre: Takes two numbers, both a >= 2, b >= 2  and  a >= b.
// Post: Returns the least common multiple between the two numbers.
// If an overflow occurs while multiplying a and b, returns 0
// and the global variable 'error' is set to OVERFLOW_CODE.
unsigned int mcm (unsigned int a, unsigned int b);

#endif
