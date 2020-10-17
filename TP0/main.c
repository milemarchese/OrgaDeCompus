#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

const char* HELP_MSG = "Usage:\n\ttp0 -h\n\ttp0 -V\n\ttp0 [options]\nOptions:\n\t-V, --version 		Print version and quit.\n\t-h, --help 			Print this information.\n\t-o, --output 		Path to output file.\n\t-i, --input 		Path to input file.\n\t-d, --decode		Decode a base64-encoded file.\nExamples:\n\n\ttp0 -i input.txt -o output.txt";
const char* VERSION_NUM = "2020\n";

void to_binary(char in, char out[8]){
	for (int i = 7; i >= 0; i--) {
		out[i] = in % 2;
		in = in >> 1;
	}
}


int to_decimal(char in[8], int in_n) {
	int out = 0;
	for (int i = 0; i < in_n; i++) {
		out += in[i] ? (1 << (in_n - 1 - i)) : 0;
	}
	return out;
}


void get_chars(char in[3], int n_in, char out[4]) {
	char binaryrep[24] = {0};

	for (int j = 0; j < n_in; j++) {
		to_binary(in[j], &binaryrep[j*8]);
	}

	for (int k = 0; k < 1 + n_in; k ++) {
		out[k] = BASE64[to_decimal(&binaryrep[k*6], 6)];
	}

	for (int k = n_in + 1; k < 4; k ++) {
		out[k] = '=';
	}
}

void encode(FILE* in, FILE* out) {
	char* line = NULL;
	size_t n_line = 0;
	ssize_t reads;
	while ((reads = getline(&line, &n_line, in) > 0)) {

		int i = 0;
		while (line[i] != '\0') {
			int buffer = 0;
			while (line[i + buffer] != '\0' && buffer < 3) buffer++;

			char out[5] = {'\0'};
			get_chars(&line[i], buffer, out);
			i += buffer;
			printf("%s", out);
		}
	}
	free(line);

}


int validate_parameters(int argc, char* argv[], FILE** in, FILE** out) {

	for (int i = 1; i < argc; i++) {
		if (strcmp(H, argv[i]) == 0) {
			fprintf(stdout, "%s", HELP_MSG);
			return 0;
		} else if (strcmp(V, argv[i]) == 0){
			fprintf(stdout, "%s",VERSION_NUM);
			return 0;
		} else if (strcmp(I, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			// TODO: validar fopen
			*in = fopen(argv[i + 1], "r");
			i++;
		} else if (strcmp(O, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			// TODO: validar fopen
			*out = fopen(argv[i + 1], "w");
			i++;
		} else {
			fprintf(stderr, "Invalid %s\n", argv[i]);
		}
	}
	return 1;
}
int main(int argc, char* argv[]) {
	FILE* in = stdin;
	FILE* out = stdout;
	int arg = validate_parameters(argc, argv, &in, &out);
	if (!arg) return 0;

	encode(in, out);
	
	fclose(in);
	fclose(out);
}
