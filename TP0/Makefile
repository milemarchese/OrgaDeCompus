TP0_DIR := TP0
IN_DIR := input
IN_TEST := $(IN_DIR)/in.txt
TEST_DIR := test
TEST_EXEC := bash pruebas.sh

EXEC = tp0
CC = gcc
CFLAGS = -std=c99 -g -Wall -Wconversion -Wtype-limits

build: main.c utils.h
	$(CC) $(CFLAGS) *.c -o $(EXEC)

run: build
	cat $(IN_TEST) | ./$(EXEC)

clean:
	rm -f *.o $(EXEC)

valgrind:  build
	cat $(IN_TEST) | valgrind --leak-check=full --show-leak-kinds=all ./$(EXEC)

grade: build
	cd $(TEST_DIR) && $(TEST_EXEC)