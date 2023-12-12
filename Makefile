# Makefile

CC := g++
CFLAGS := -Wall -Wextra

binary:main.o test_lib.a
	$(CC) -o binary main.o -L. -l:test_lib.a
main.o:main.cpp
	$(CC) -c main.cpp
test_lib.a: Database.o Defect.o
	ar cr test_lib.a Database.o Defect.o
Database.o: Database.cpp
	$(CC) -c Database.cpp
Defect.o: Defect.cpp
	$(CC) -c Defect.cpp
clean:
	rm -f *.o *.a binary


