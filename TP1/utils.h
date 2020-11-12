#ifndef UTILS_H
#define UTILS_H

#include <limits.h>

// Flags
#define H "-h"
#define V "-V"
#define O "-o"
#define D "-d"
#define M "-m"
#define HELP "--help"
#define VERSION "--version"
#define OUTPUT "--output"
#define DIVISOR "--divisor"
#define MULTIPLE "--multiple"

// Error messages
#define INVALIDARG "Invalid argument"
#define INVALIDOUT "Unable to create output file\n"
#define INVALIDRANGE "Invalid range"

#define MAXINT UINT_MAX
#define FILE_STDOUT "-"

#define OPERATION_MCD 0
#define OPERATION_MCM 1
#define OPERATION_BOTH 2

#define RESULT_SUCCESSFUL 0
#define OVERFLOW_CODE 1
#endif //UTILS_H
