#include "operations.h"

extern int error;

int mcd(int a, int b) {
	int aux;
	while (b != 0) {
		aux = b;
		b = a % b;
		a = aux;
	}
	return a;
}


int mcm(int a, int b) {
	int x = a * b;
	if (x / a != b) {
		error = OVERFLOW_CODE;
		return 0;
	}
	return a*b/mcd(a, b);
}
