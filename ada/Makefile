CC = gcc
GNAT = gnatmake

build: recursive iterative

recursive: recursive.adb
	$(CC) -c recursive.adb
	$(GNAT) -Wall recursive.adb

iterative: iterative.adb
	$(CC) -c iterative.adb
	$(GNAT) -Wall iterative.adb

clean:
	rm recursive iterative *.ali *.o
