TEST_DIR := test
TEST_EXEC := bash pruebas.sh

EXEC = tp2
CC = gcc
CFLAGS = -std=c99 -g -Wall -Wtype-limits
CFLAGS_MIPS = -g -O0 -mips32 -mlong32 -mabi=32

build: main.c cache.c helper.c
	$(CC) $(CFLAGS)  main.c cache.c helper.c -o $(EXEC)

run: build
	./$(EXEC) --ways 2 --cachesize 8 --blocksize 16 prueba1.mem
