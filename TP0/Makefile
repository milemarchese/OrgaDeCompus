TP0_DIR := TP0
TEST_DIR := test
IN_TEST := $(TEST_DIR)/01_in
TEST_EXEC := bash pruebas.sh

EXEC = tp0
CC = gcc
CFLAGS = -std=c99 -g -Wall -Wtype-limits

build: main.c utils.h
	$(CC) $(CFLAGS) *.c -o $(EXEC)

run: build
	cat $(IN_TEST) | ./$(EXEC)

clean:
	rm -f *.o *.s $(EXEC)

valgrind:  build
	cat $(IN_TEST) | valgrind --leak-check=full --show-leak-kinds=all ./$(EXEC)

grade: build
	cd $(TEST_DIR) && $(TEST_EXEC)

assembly:
	$(CC) $(CFLAG) -S *.c

recode: build
	cat $(FILE) | ./tp0 | ./tp0 -d > $(FILE).decoded