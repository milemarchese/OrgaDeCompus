TP0_DIR := TP0
IN_DIR := input
IN_TEST := $(IN_DIR)/in.txt

EXEC = tp0
CC = gcc
CFLAGS = -std=c99 -Wall -Wconversion -Wtype-limits

build: main.c utils.h
	$(CC) *.c -o $(EXEC)

run: build
	cat $(IN_TEST) | ./$(EXEC)

clean:
	rm -f *.o $(EXEC)

valgrind: 
	valgrind --leak-check=full --show-leak-kinds=all cat $(IN_TEST) | ./$(EXEC)
