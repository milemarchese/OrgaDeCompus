#include "operations.h"
#include <stdio.h>


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
	return a*b/mcd(a, b);
}
