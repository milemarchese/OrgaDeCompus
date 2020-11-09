TEST_DIR := test
TEST_EXEC := bash pruebas.sh

EXEC = tp1
CC = gcc
CFLAGS = -std=c99 -g -Wall -Wtype-limits
CFLAGS_MIPS = -g -O0 -mips32 -mlong32 -mabi=32

build: main.c utils.h operations.c
	$(CC) $(CFLAGS)  main.c operations.c -o $(EXEC)

mips-build: main.c utils.h mcm.S mcd.S
	$(CC) $(CFLAGS_MIPS) main.c mcm.S mcd.S -o $(EXEC)

clean:
	rm -f *.o *.s $(EXEC)

grade: build
	cd $(TEST_DIR) && $(TEST_EXEC)

remote-assembly:
	scp -P 5555 -r ../TP1/* root@localhost:/root/TP1
	ssh -p 5555 root@localhost "cd /root/TP1 && $(CC) $(CFLAG) -S *.c && cat operations.s"


remote-build: build
	scp -P 5555 -r ../TP1/* root@localhost:/root/TP1
	ssh -p 5555 root@localhost "cd /root/TP1 && make mips-build"

mips-grade: mips-build
	cd $(TEST_DIR) && $(TEST_EXEC)

remote-grade: build
	scp -P 5555 -r ../TP1/* root@localhost:/root/TP1
	ssh -p 5555 root@localhost "cd /root/TP1 && make mips-grade"
