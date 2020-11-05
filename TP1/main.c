#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <ctype.h>
#include "utils.h"
#include "operations.h"

const char* HELP_MSG = "Usage:\n\tcommon -h\n\tcommon -V\n\tcommon [options] M N\nOptions:\n\t-h, --help Prints usage information.\n\t-V, --version Prints version information.\n\t-o, --output Path to output file.\n\t-d --divisor Just the divisor\n\t-m --multiple Just the multiple";
const char* VERSION_NUM = "2020\n";

int valid_range(int num) {
	return num >= 2 && num <= MAXINIT;
}

int validate_parameters(int argc, char* argv[], FILE** out, int* operation, int* num1, int* num2) {
    int num1_tmp;
    int num2_tmp;
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
		} else if (i + 1 < argc && (num1_tmp = atoi(argv[i])) != 0 && (num2_tmp = atoi(argv[i+1])) != 0 ) {
            int err_range = valid_range(num1_tmp) && valid_range(num2_tmp);
			if (!err_range) {
				fprintf(stderr, "%s %s\n", INVALIDRANGE, argv[i]);
				return 1;
			}
			*num1 = num1_tmp;
			*num2 = num2_tmp;
			i++;
		}
		else {
			fprintf(stderr, "%s %s\n", INVALIDARG, argv[i]);
			return 1;
		}
	}
	return 0;
}


int max(int n1, int n2) {
	return n1 < n2 ? n2 : n1;
}

int min(int n1, int n2) {
	return n1 < n2 ? n1 : n2;
}


int main(int argc, char* argv[]) {
	FILE* out = stdout;
	int num1;
	int num2;
	int operation = OPERATION_BOTH;
	int arg = validate_parameters(argc, argv, &out, &operation, &num1, &num2);
	if (arg > 0) {
		return arg;
	} else if (arg < 0){
		return 0;
	}

	int n_min = min(num1, num2);
	int n_max = max(num1, num2);
	if (operation == OPERATION_MCD || operation == OPERATION_BOTH) {
		fprintf(out, "%d\n", mcd(n_min, n_max));
	}

	if (operation == OPERATION_MCM || operation == OPERATION_BOTH) {
		fprintf(out, "%d\n", mcm(n_min, n_max));
	}
	return 0;
}
