#include "operations.h"

extern int error;

unsigned int mcd(unsigned int a, unsigned int b) {
	int aux;
	while (b != 0) {
		aux = b;
		b = a % b;
		a = aux;
	}
	return a;
}


unsigned int mcm(unsigned int a, unsigned int b) {
	unsigned int x = a * b;
	if (x / a != b) {
		error = OVERFLOW_CODE;
		return 0;
	}
	return a*b/mcd(a, b);
}
