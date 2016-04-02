CC = gfortran
CFLAGS = -fall-intrinsics -std=f95 -Wall

build: recursive iterative

recursive: recursive.f95
	$(CC) $(CFLAGS) recursive.f95 -o recursive

iterative: iterative.f95
	$(CC) $(CFLAGS) iterative.f95 -o iterative

clean:
	rm recursive iterative