TEST_DIR := test
TEST_EXEC := bash pruebas.sh

EXEC = tp2
CC = gcc
CFLAGS = -std=c99 -g -Wall -Wtype-limits
CFLAGS_MIPS = -g -O0 -mips32 -mlong32 -mabi=32

build: main.c cache.c helper.c
	$(CC) $(CFLAGS)  main.c cache.c helper.c -o $(EXEC)

run: build
	./$(EXEC) --ways 4 --cachesize 4 --blocksize 32 prueba1.mem

run2: build
	./$(EXEC) --cachesize 16 --ways 1 --blocksize 128 prueba2.mem

valgrind: build
	valgrind ./$(EXEC) --ways 4 --cachesize 4 --blocksize 32 prueba1.mem

gdb: build
	gdb --args ./$(EXEC) --ways 4 --cachesize 4 --blocksize 32 prueba1.mem
