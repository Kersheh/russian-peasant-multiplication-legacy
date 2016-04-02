CC = gcc
CFLAGS = -Wall

build: recursive iterative

recursive: recursive.c
	$(CC) $(CFLAGS) recursive.c -o recursive

iterative: iterative.c
	$(CC) $(CFLAGS) iterative.c -o iterative

clean:
	rm recursive iterative
