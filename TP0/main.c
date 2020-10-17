#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

const char* HELP_MSG = "Usage:\n\ttp0 -h\n\ttp0 -V\n\ttp0 [options]\nOptions:\n\t-V, --version 		Print version and quit.\n\t-h, --help 			Print this information.\n\t-o, --output 		Path to output file.\n\t-i, --input 		Path to input file.\n\t-d, --decode		Decode a base64-encoded file.\nExamples:\n\n\ttp0 -i input.txt -o output.txt";
const char* VERSION_NUM = "2020\n";

typedef void (*convert_line_t) (char*, FILE*);


void to_binary(char in, char out[8], int n_bits){
	for (int i = n_bits - 1; i >= 0; i--) {
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


/*
 * Encodes the contents of the three bytes `in` from ASCII to Base64
 * into the four bytes `out`.
 * If `in` has less than three bytes, the remainder of bytes in the
 * output will be filled with '='
 */
void encode_chars(char in[3], int n_in, char out[4]) {
	char binaryrep[24] = {0};

	for (int j = 0; j < n_in; j++) {
		to_binary(in[j], &binaryrep[j*8], 8);
	}

	for (int k = 0; k < 1 + n_in; k ++) {
		out[k] = BASE64[to_decimal(&binaryrep[k*6], 6)];
	}

	for (int k = n_in + 1; k < 4; k ++) {
		out[k] = '=';
	}
}


/*
 * Encodes the contents of `line` from ASCII to Base64
 * and prints the output to `out_file`
 */
void encode_line(char* line, FILE* out_file) {
	int i = 0;
	while (line[i] != '\0') {
		int buffer = 0;
		while (line[i + buffer] != '\0' && buffer < 3) buffer++;

		char out[5] = {'\0'};
		encode_chars(&line[i], buffer, out);
		i += buffer;
		fprintf(out_file, "%s", out);
	}
}


/*
 * Decodes the contents of the four bytes `in` from Base64 to ASCII
 * into the three bytes `out`
 */
void decode_chars(char in[4], int n_in, char out[3]) {
	char binaryrep[24] = {0};

	for (int j = 0; j < n_in; j++) {
		for (int i = 0; i < 64; i++) {
			if (in[j] == BASE64[i]) {
				to_binary(i, &binaryrep[j*6], 6);
				break;
			}
		}
	}

	for (int k = 0; k < n_in - 1; k ++) {
		out[k] = to_decimal(&binaryrep[k*8], 8);
	}
}


/*
 * Decodes the contents of `line` from Base64 to ASCII
 * and prints the output to `out_file`
 */
void decode_line(char* line, FILE* out_file) {
	int i = 0;
	while (line[i] != '\0' && line[i] != '=') {
		int buffer = 0;
		while (line[i + buffer] != '=' && line[i + buffer] != '\0' && buffer < 4) buffer++;

		char out[4] = {'\0'};
		decode_chars(&line[i], buffer, out);
		i += buffer;
		fprintf(out_file, "%s", out);
	}
}

/*
 * Reads the input `in` and transforms its buffer 
 * acording to the `convert` function
 */
void process_file(FILE* in, FILE* out, convert_line_t convert) {
	char* line = NULL;
	size_t n_line = 0;
	ssize_t reads;
	while ((reads = getline(&line, &n_line, in) > 0)) {
		convert(line, out);
	}
	free(line);
}


int validate_parameters(int argc, char* argv[], FILE** in, FILE** out, convert_line_t* convert) {
	for (int i = 1; i < argc; i++) {
		if (strcmp(H, argv[i]) == 0) {
			fprintf(stdout, "%s", HELP_MSG);
			return 0;
		} else if (strcmp(V, argv[i]) == 0){
			fprintf(stdout, "%s",VERSION_NUM);
			return 0;
		} else if (strcmp(I, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			*in = fopen(argv[i + 1], "r");
			if (!*in) {
				fprintf(stderr, "Unable to read input file\n");
				return 1;
			}
			i++;
		} else if (strcmp(O, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			*out = fopen(argv[i + 1], "w");
			if (!*out) {
				fprintf(stderr, "Unable to create output file\n");
				return 1;
			}
			i++;
		} else if (strcmp(D, argv[i]) == 0) {
			*convert = decode_line;	
		} else {
			fprintf(stderr, "Invalid %s\n", argv[i]);
			return 1;
		}
	}
	return 0;
}


int main(int argc, char* argv[]) {
	FILE* in = stdin;
	FILE* out = stdout;
	convert_line_t convert = encode_line;
	int arg = validate_parameters(argc, argv, &in, &out, &convert);
	if (arg) {
		return arg;
	}

	process_file(in, out, convert);
	
	fclose(in);
	fclose(out);
}
