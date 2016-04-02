# Makefile for Russian Peasant Multiplication

build: fortran ada cobol c

fortran:
	$(MAKE) -C fortran

ada:
	$(MAKE) -C ada

cobol:
	$(MAKE) -C cobol

c:
	$(MAKE) -C c