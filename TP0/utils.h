#ifndef UTILS_H
#define UTILS_H

#define H "-h"
#define V "-V"
#define O "-o"
#define I "-i"
#define D "-d"

#define HELP "--help"				//constantes que no se si tambien hay que comparar
#define VERSION "--version"
#define OUTPUT "--output"
#define INPUT "--input"
#define DECODE "--decode"

char BASE64[64]= {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 
'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

#endif //UTILS_H