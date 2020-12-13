#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "helper.h"
#include "utils.h"
#include "cache.h"

extern cache_t cache;

void rstrip(char* str) {
	while (*str != '\0') {
		if (*str == '\n') {
			*str = '\0';
			return;
		}
		str += sizeof(char);
	}
}

void print_last_access_status(FILE* out) {
	if (cache.last_hit == 0) {
		fprintf(out, "Miss\n");
	} else {
		fprintf(out, "Hit\n");
	}
}

void process_line(char* line, FILE* out) {
	char cmd[30];
	unsigned int arg1 = 0, arg2 = 0;

	sscanf(line, "%[^ ] %u, %u", cmd, &arg1, &arg2);

	if (strcmp(cmd, INIT) == 0) {
		init();
	} else if (strcmp(cmd, WRITE) == 0) {
		write_byte(arg1, arg2);
		print_last_access_status(out);
	} else if (strcmp(cmd, READ) == 0) {
		printf("%hhu, ", read_byte(arg1));
		print_last_access_status(out);
	} else if (strcmp(cmd, MISSRATE) == 0) {
		fprintf(out, "%d\n", get_miss_rate());
	} else {
		fprintf(stderr, "%s\n", INVALIDINPUT);
		return;
	}
}

void process_input(FILE* in, FILE* out) {
	char* line = NULL;
	size_t n_line = 0;
	ssize_t reads;
	while ((reads = getline(&line, &n_line, in) > 0)) {
		rstrip(line);
		process_line(line, out);
	}
	free(line);
	cache_destroy();
}
