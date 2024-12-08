
CC := gcc
build: main.c token.c token.h 
	$(CC) main.c token.c -o test


clean:
	rm -rf test