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

clean:
	$(MAKE) -C fortran clean 
	$(MAKE) -C ada clean 
	$(MAKE) -C cobol clean 
	$(MAKE) -C c clean 

.PHONY: fortran ada cobol c