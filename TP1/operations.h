#ifndef OPERATIONS_H
#define OPERATIONS_H

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

#define OPERATION_MCD 0
#define OPERATION_MCM 1
#define OPERATION_BOTH 2

int mcd (int num1, int num2);
int mcm (int num1, int num2);

#endif
