CC=gcc
CFLAGS= -c -Wall
all: prog
prog: calc.o helpers.o
	$(CC) calc.o helpers.o -o prog -lm
calc.o: calc.c
	$(CC) $(CFLAGS) calc.c
helpers.o: helpers.c
	$(CC) $(CFLAGS) helpers.c
clean:
	rm -rf *.o
install:
	sudo cp prog /usr/local/bin
