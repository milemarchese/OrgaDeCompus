#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <ctype.h>
#include <limits.h>
#include <errno.h>
#include "operations.h"
#include "utils.h"

#define OPERATION_MCD 0
#define OPERATION_MCM 1
#define OPERATION_BOTH 2

const char* HELP_MSG = "Usage:\n\tcommon -h\n\tcommon -V\n\tcommon [options] M N\nOptions:\n\t-h, --help Prints usage information.\n\t-V, --version Prints version information.\n\t-o, --output Path to output file.\n\t-d --divisor Just the divisor\n\t-m --multiple Just the multiple";
const char* VERSION_NUM = "2020\n";

int error;

int valid_range(unsigned long num) {
	return num >= 2 && num <= MAXINT;
}

int validate_parameters(int argc, char* argv[], FILE** out, int* operation, unsigned int* num1, unsigned int* num2) {
  unsigned long int num1_tmp;
  unsigned long int num2_tmp;
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
		} else if (strcmp(D, argv[i]) == 0 || strcmp(DIVISOR, argv[i]) == 0) {
			*operation = OPERATION_MCD;
		} else if (strcmp(M, argv[i]) == 0 || strcmp(MULTIPLE, argv[i]) == 0) {
			*operation = OPERATION_MCM;
		} else if (i + 1 < argc && (num1_tmp = strtoul(argv[i], NULL, 10)) != 0 && (num2_tmp = strtoul(argv[i+1], NULL, 10)) != 0) {
			int err_range = valid_range(num1_tmp) && valid_range(num2_tmp);
			if (!err_range || errno == ERANGE || errno == EINVAL) {
				fprintf(stderr, "%s\n", INVALIDRANGE);
				return 1;
			}
			*num1 = num1_tmp;
			*num2 = num2_tmp;
			i++;
		} else {
			fprintf(stderr, "%s\n", INVALIDARG);
			return 1;
		}
	}
	return 0;
}


unsigned int max(unsigned int n1, unsigned int n2) {
	return n1 < n2 ? n2 : n1;
}

unsigned int min(unsigned int n1, unsigned int n2) {
	return n1 < n2 ? n1 : n2;
}


int main(int argc, char* argv[]) {
	FILE* out = stdout;
	unsigned int num1 = -1;
	unsigned int num2 = -1;
	int operation = OPERATION_BOTH;
	int arg = validate_parameters(argc, argv, &out, &operation, &num1, &num2);
	if (arg > 0) {
		return arg;
	} else if (arg < 0){
		return 0;
	}
	if (num1 == -1 || num2 == -1) {
		fprintf(stderr, "Missing numbers to process\n");
		return 1;
	}

	unsigned int n_min = min(num1, num2);
	unsigned int n_max = max(num1, num2);
	if (operation == OPERATION_MCD || operation == OPERATION_BOTH) {
		unsigned int res = mcd(n_min, n_max);
		if (error == RESULT_SUCCESSFUL) {
			fprintf(out, "%u\n", res);
		} else {
			fprintf(stderr, "Operation failed\n");
		}
	}

	if (operation == OPERATION_MCM || operation == OPERATION_BOTH) {
		unsigned int res = mcm(n_min, n_max);
		if (error == RESULT_SUCCESSFUL) {
			fprintf(out, "%u\n", res);
		} else if (error == OVERFLOW_CODE) {
			fprintf(out, "Overflow error\n");
		} else {
			fprintf(out, "Operation failed\n");
		}
	}
	return 0;
}
