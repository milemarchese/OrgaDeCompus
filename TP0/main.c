#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "utils.h"

const char* HELP_MSG = "Usage:\n\ttp0 -h\n\ttp0 -V\n\ttp0 [options]\nOptions:\n\t-V, --version 		Print version and quit.\n\t-h, --help 			Print this information.\n\t-o, --output 		Path to output file.\n\t-i, --input 		Path to input file.\n\t-d, --decode		Decode a base64-encoded file.\nExamples:\n\n\ttp0 -i input.txt -o output.txt";
const char* VERSION_NUM = "2020\n";

void to_binary(unsigned char in, unsigned char out[8]){
	for (int i = 7; i >= 0; i--) {
		out[i] = in % 2;
		in = in >> 1;
	}
}


int to_decimal(unsigned char in[8], int in_n) {
	int out = 0;
	for (int i = 0; i < in_n; i++) {
		out += in[i] ? (1 << (in_n - 1 - i)) : 0;
	}
	return out;
}


void get_chars(unsigned char in[3], unsigned char out[4]) {
	unsigned char binaryrep[24];

	for (int j = 0; j < 3; j++) {
		to_binary(in[j], &binaryrep[j*8]);
	}

	for (int k = 0; k < 4; k ++) {
		out[k] = BASE64[to_decimal(&binaryrep[k*6], 6)];
	}
}

void encode(FILE* in, FILE* out) {
	char* line = NULL;
	size_t n_lines = 0;
	ssize_t reads;
	while ((reads = getline (&line, &n_lines, stdin) > 0)) {
		int i = 0;
		int j = 0;
		char* line_out = malloc(sizeof(char) * (n_lines * 4/3));

		while (line[i] != '\n' && n_lines - i > 0) {
			// while (line[i] != '\n' && n_lines - i > 0) { 
			// if (n_lines - i < 3) {
			// 	unsigned char new_line[3] = {'='};
			// 	for (int k = 0; k < n_lines - i; k++) {
			// 		new_line[k] = line[i + k];
			// 	}
				
			// 	get_chars(new_line, &line_out[j]);
			// }
			// else {
			// get_chars(&line[i], &line_out[j]);
			// }
			// i+=3;
			// j+=4;
			
			get_chars(&line[i], &line_out[j]);

			i+=3;
			j+=4;
		}
		line_out[j] = '\0';

		// Print in output file the representation in Base64
		printf("%s\n", line_out);
		free (line_out);
	}
	free (line);

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
