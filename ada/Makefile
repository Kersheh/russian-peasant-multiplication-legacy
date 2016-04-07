CC = gcc
GNAT = gnatmake

build: recursive iterative

recursive: recursive.adb
	$(CC) -c recursive.adb
	$(GNAT) -Wall recursive.adb
	rm recursive.ali

iterative: iterative.adb
	$(CC) -c iterative.adb
	$(GNAT) -Wall iterative.adb
	rm iterative.ali

clean:
	rm recursive iterative
