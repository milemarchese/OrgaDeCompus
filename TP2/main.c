#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <ctype.h>
#include <limits.h>
#include <errno.h>
#include "utils.h"
#include "cache.h"

const char* HELP_MSG = "Usage:\n\ttp2 -h\n\ttp2 -V\n\ttp2 options archivo\nOptions:\n\t-h,\t--help\tImprime ayuda.\n\t-V,\t--version\tVersión del programa.\n\t-o,\t--output\tArchivo de salida.\n\t-w,\t--ways\tCantidad de vı́as.\n\t-cs,\t--cachesize\tTamaño del caché en kilobytes.\n\t-bs,\t--blocksize\tTamaño de bloque en bytes.\nExamples:\n\ttp2 -w 4 -cs 8 -bs 16 prueba1.mem\n";
const char* VERSION_NUM = "2020\n";

extern cache_t cache;

int validate_parameters(int argc, char* argv[], FILE** in, FILE** out) {
	for (int i = 1; i < argc; i++){
		if (strcmp(H, argv[i]) == 0 || strcmp(HELP, argv[i]) == 0) {
			fprintf(stdout, "%s", HELP_MSG);
			return -1;
		} else if (strcmp(V, argv[i]) == 0 || strcmp(VERSION, argv[i]) == 0) {
			fprintf(stdout, "%s",VERSION_NUM);
			return -1;
		} else if (strcmp(O, argv[i]) == 0 || strcmp(OUTPUT, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			if (strcmp(FILE_STDOUT, argv[i + 1]) != 0) {
				*out = fopen(argv[i + 1], "w");
			}
			i++;
		} else if (strcmp(W, argv[i]) == 0 || strcmp(WAYS, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			cache.n_ways = atoi(argv[i + 1]);
		} else if (strcmp(CS, argv[i]) == 0 || strcmp(CACHESIZE, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			cache.cache_size = atoi(argv[i + 1]);
		} else if (strcmp(BS, argv[i]) == 0 || strcmp(BLOCKSIZE, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			cache.block_size = atoi(argv[i + 1]);
		} else {
			fprintf(stderr, "%s\n", INVALIDARG);
			return 1;
		}
	}

	*in = fopen(argv[argc - 1], "r");
	return 0;
}



int main(int argc, char* argv[]) {
	FILE* out = stdout;
    FILE* in = NULL;

	cache.n_ways = 0;
	cache.block_size = 0;
	cache.cache_size = 0;
	
	// TODO: Validar si los tamaños de los cache son correctos
	int arg = validate_parameters(argc, argv, &in, &out);
	if (arg > 0) {
		return arg;
	} else if (cache.n_ways == 0) {
		fprintf(stderr, "Missing --ways parameter\n");
		return 1;
	} else if (cache.block_size == 0 ) {
		fprintf(stderr, "Missing --blocksize parameter\n");
		return 1;
	} else if (cache.cache_size == 0) {
		fprintf(stderr, "Missing --cachesize parameter\n");
		return 1;
	} else if (out == NULL) {
		fprintf(stderr, "Failed to open output file\n");
		return 1;
	} else if (in == NULL) {
		fprintf(stderr, "Failed to open input file\n");
		return 1;
	} else if (arg < 0) {
		return 0;
	}
	

	return 0;
}
