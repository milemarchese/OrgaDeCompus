#include "decoder.h"

static char BASE64[64]= {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

static void to_binary(char in, char out[8], int n_bits){
	for (int i = n_bits - 1; i >= 0; i--) {
		out[i] = in % 2;
		in = in >> 1;
	}
}


static int to_decimal(char in[8], int in_n){
	int out = 0;
	for (int i = 0; i < in_n; i++) {
		out += in[i] ? (1 << (in_n - 1 - i)) : 0;
	}
	return out;
}


void encode_chars(char in[3], int n_in, char out[4]){
	char binaryrep[24] = {0};

	for (int j = 0; j < n_in; j++){
		to_binary(in[j], &binaryrep[j*8], 8);
	}

	for (int k = 0; k < 1 + n_in; k ++){
		out[k] = BASE64[to_decimal(&binaryrep[k*6], 6)];
	}

	for (int k = n_in + 1; k < 4; k ++){
		out[k] = '=';
	}
}


void encode_line(char* line, FILE* out_file){
	int i = 0;
	while (line[i] != '\0'){
		int buffer = 0;
		while (line[i + buffer] != '\0' && buffer < 3) buffer++;

		char out[5] = {'\0'};
		encode_chars(&line[i], buffer, out);
		i += buffer;
		fprintf(out_file, "%s", out);
	}
}


void decode_chars(char in[4], int n_in, char out[3]){
	char binaryrep[24] = {0};

	for (int j = 0; j < n_in; j++){
		for (int i = 0; i < 64; i++){
			if (in[j] == BASE64[i]) {
				to_binary(i, &binaryrep[j*6], 6);
				break;
			}
		}
	}

	for (int k = 0; k < n_in - 1; k ++){
		out[k] = to_decimal(&binaryrep[k*8], 8);
	}
}


void decode_line(char* line, FILE* out_file){
	int i = 0;
	while (line[i] != '\0' && line[i] != '='){
		int buffer = 0;
		while (line[i + buffer] != '=' && line[i + buffer] != '\0' && buffer < 4) buffer++;

		char out[4] = {'\0'};
		decode_chars(&line[i], buffer, out);
		i += buffer;
		fprintf(out_file, "%s", out);
	}
}


int process_file(char* in_file, char* out_file, convert_line_t convert){
	FILE* in = stdin;
	FILE* out = stdout;

	if (in_file){
		in = fopen(in_file, "r");
		if (!in) {
			fprintf(stderr, "%s", INVALIDIN);
			return 1;
		}
	}
	if (out_file){
		out = fopen(out_file, "w");
		if (!out) {
			fprintf(stderr, "%s", INVALIDOUT);
			if (in) fclose(in);
			return 1;
		}
	}
	char buffer[25] = {'\0'};
	while (!feof(in)) {
		for (int i = 0; i < 24; i++) {
			char c = fgetc(in);
			if (c == EOF) {
				buffer[i] = '\0';
				break;
			}
			buffer[i] = c;
		}
		convert(buffer, out);
	}
	fclose(in);
	fclose(out);
	return 0;
}
