CC=g++

CFLAGS=-c -Wall

all: main mylib.a

main: main.o mylib.a
	$(CC) main.o mylib.a

function.o: function.cpp function.h
	$(CC) $(CFLAGS) function.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

mylib.a: function.o
	ar -rcs mylib.a function.o

clean:
	rm -rf *.o main
