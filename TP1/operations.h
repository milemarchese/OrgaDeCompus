#ifndef OPERATIONS_H
#define OPERATIONS_H

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

// Pre: Takes two numbers, both a, b >= 2  and  a >= b.
// Post: Returns the greatest common divisor between the two numbers.
int mcd (int a, int b);


// Pre: Takes two numbers, both a, b >= 2  and  a >= b.
// Post: Returns the least common multiple between the two numbers.
int mcm (int a, int b);

#endif
