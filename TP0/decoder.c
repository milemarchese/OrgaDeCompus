#include "decoder.h"

static char BASE64[64]= {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};


void encode_chars(char in[3], int n_in, char out[4]){
	out[0] = (in[0] & 0xFC) >> 2;
	out[1] = ((in[0] & 0x03) << 4) | ((in[1] & 0xF0) >> 4);
	out[2] = ((in[1] & 0x0F) << 2) | ((in[2] & 0xC0) >> 6);
	out[3] = (in[2] & 0x3F);

	for (int k = 0; k < 1 + n_in; k ++){
		out[k] = BASE64[(unsigned char) out[k]];
	}

	for (int k = n_in + 1; k < 4; k++){
		out[k] = '=';
	}
}


void encode_string(char* string, int string_len, FILE* out_file){
	int i = 0;
	while (i < string_len){
		int buffer = 0;
		while (i + buffer < string_len && buffer < 3) buffer++;

		char out[5] = {'\0'};
		encode_chars(&string[i], buffer, out);
		i += buffer;
		fprintf(out_file, "%s", out);
	}
}


void decode_chars(char in[4], int n_in, char out[3]){
	for (int i = n_in; i < 4; i++) {
		in[i] = 0;
	}
	
	for (int j = 0; j < n_in; j++){
		for (int i = 0; i < 64; i++){
			if (in[j] == BASE64[i]) {
				in[j] = i;
				break;
			}
		}
	}

	out[0] = (unsigned char) ((in[0] << 2) | ((in[1] & 0x30) >> 4));
	out[1] = (unsigned char) ((in[1] << 4) | ((in[2] & 0x3C) >> 2));
	out[2] = (unsigned char) ((in[2] << 6) | in[3]);
}


void decode_string(char* string, int string_len, FILE* out_file){
	int i = 0;
	while (i < string_len && string[i] != '=') {
		int buffer = 0;
		while (i + buffer < string_len && string[i + buffer] != '=' && buffer < 4) buffer++;

		char out[4] = {'\0'};
		decode_chars(&string[i], buffer, out);
		i += buffer;

		for (int j = 0; j < buffer - 1; j++) {
			fprintf(out_file,"%c", (unsigned char) out[j]);
		}
	}
}


int process_file(char* in_file, char* out_file, convert_string_t convert){
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
	int buffer_len = 24;
	while (!feof(in)) {
		for (int i = 0; i < 24; i++) {
			char c = fgetc(in);
			if (feof(in)) {
				buffer_len = i;
				break;
			}
			buffer[i] = c;
		}
		convert(buffer, buffer_len, out);
	}
	fclose(in);
	fclose(out);
	return 0;
}
