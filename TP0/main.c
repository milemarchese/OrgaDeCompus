#include <stdio.h>
#include <string.h>
#include "utils.h"

const char* HELP_MSG = "Usage:\n\ttp0 -h\n\ttp0 -V\n\ttp0 [options]\nOptions:\n\t-V, --version 		Print version and quit.\n\t-h, --help 			Print this information.\n\t-o, --output 		Path to output file.\n\t-i, --input 		Path to input file.\n\t-d, --decode		Decode a base64-encoded file.\nExamples:\n\n\ttp0 -i input.txt -o output.txt";
const char* VERSION_NUM = "2020\n";

int main(int argc, char* argv[]) {
	// validaciones de parametros
	char* in = NULL;
	char* out = NULL;

	for (int i = 1; i < argc; i++) {
		
		if (strcmp(H, argv[i]) == 0) {
			fprintf(stdout, "%s", HELP_MSG);
			return 0;
		} else if (strcmp(V, argv[i]) == 0){
			fprintf(stdout, "%s",VERSION_NUM);
			return 0;
		} else if (strcmp(I, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;	
			in = argv[i + 1]; 				
			i++;
		} else if (strcmp(O, argv[i]) == 0) {
			if ((i + 1) >= argc) return -1;
			out = argv[i + 1]; 
			i++;
		} else {
			fprintf(stderr, "Invalid %s\n", argv[i]);
		}
	}
	
	if (in && out) {
		//ejecutar conversion
	}
	return 0;
}