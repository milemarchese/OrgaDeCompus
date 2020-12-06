#ifndef UTILS_H
#define UTILS_H

#include <limits.h>

// Flags
#define H "-h"
#define V "-V"
#define O "-o"
#define W "-w"
#define CS "-cs"
#define BS "-bs"
#define HELP "--help"
#define VERSION "--version"
#define OUTPUT "--output"
#define WAYS "--ways"
#define CACHESIZE "--cachesize"
#define BLOCKSIZE "--blocksize"

// Error messages
#define INVALIDARG "Invalid argument"
#define INVALIDOUT "Unable to create output file\n"
#define INVALIDRANGE "Invalid range"

#define MAXINT UINT_MAX
#define FILE_STDOUT "-"

#define RESULT_SUCCESSFUL 0
#define OVERFLOW_CODE 1

#define KILOBYTES 1024

#define N_BITS 16

#endif //UTILS_H
