# Makefile for Russian Peasant Multiplication

# Fortran
FORC = gfortran
FORFLAGS = -fall-intrinsics -std=f95 -Wall
# Ada
ADAC = gcc
GNAT = gnatmake
GNATFLAGS = -Wall
# Cobol
CBLC = cobc
CBLFLAGS = -free -O -Wall
# C
CC = gcc
CFLAGS = -Wall

build: fortran ada cobol c python

fortran: fortran/recursive.f95 fortran/iterative.f95
	$(FORC) $(FORFLAGS) fortran/recursive.f95 -o fortran/recursive
	$(FORC) $(FORFLAGS) fortran/iterative.f95 -o fortran/iterative

ada: ada/recursive.adb ada/iterative.adb
	$(ADAC) -c ada/recursive.adb
	$(GNAT) $(GNATFLAGS) ada/recursive.adb
	$(ADAC) -c ada/iterative.adb
	$(GNAT) $(GNATFLAGS) ada/iterative.adb

cobol: cobol/iterative.cob
	$(CBLC) $(CBLFLAGS) cobol/iterative.cob

c: c/recursive.c c/iterative.c
	$(CC) $(CFLAGS) c/recursive.c -o c/recursive
	$(CC) $(CFLAGS) c/iterative.c -o c/iterative

clean:
	rm fortran/recursive fortran/iterative ada/recursive ada/iterative 
	rm cobol/iterative c/recursive c/iterative ada/*.ali ada/*.o cobol/*.so