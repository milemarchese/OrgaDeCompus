#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "decoder.h"
#include "utils.h"

const char* HELP_MSG = "Usage:\n\ttp0 -h\n\ttp0 -V\n\ttp0 [options]\nOptions:\n\t-V, --version 		Print version and quit.\n\t-h, --help 			Print this information.\n\t-o, --output 		Path to output file.\n\t-i, --input 		Path to input file.\n\t-d, --decode		Decode a base64-encoded file.\nExamples:\n\n\ttp0 -i input.txt -o output.txt\n";
const char* VERSION_NUM = "2020\n";

int validate_parameters(int argc, char* argv[], char** in, char** out, convert_string_t* convert){
	for (int i = 1; i < argc; i++){
		if (strcmp(H, argv[i]) == 0 || strcmp(HELP, argv[i]) == 0){
			fprintf(stdout, "%s", HELP_MSG);
			return -1;
		} else if (strcmp(V, argv[i]) == 0 || strcmp(VERSION, argv[i]) == 0){
			fprintf(stdout, "%s",VERSION_NUM);
			return -1;
		} else if (strcmp(I, argv[i]) == 0 || strcmp(INPUT, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			*in = argv[i + 1];
			i++;
		} else if (strcmp(O, argv[i]) == 0 || strcmp(OUTPUT, argv[i]) == 0){
			if ((i + 1) >= argc) return -1;
			*out = argv[i + 1];
			i++;
		} else if (strcmp(D, argv[i]) == 0 || strcmp(DECODE, argv[i]) == 0){
			*convert = decode_string;
		} else {
			fprintf(stderr, "%s %s\n", INVALIDARG, argv[i]);
			return 1;
		}
	}
	return 0;
}


int main(int argc, char* argv[]){
	char* in = NULL;
	char* out = NULL;
	convert_string_t convert = encode_string;
	int arg = validate_parameters(argc, argv, &in, &out, &convert);
	if (arg > 0){
		return arg;
	} else if (arg < 0){
		return 0;
	}
	return process_file(in, out, convert);
}
