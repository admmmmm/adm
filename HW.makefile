CXX = g++
CFLAGS = -Wall -Wextra -std=c++11

all: main

main: main.o HW.o
    $(CXX) $(CFLAGS) -o main main.o HW.o

main.o: main.cpp HW.h
    $(CXX) $(CFLAGS) -c main.cpp

HW.o: HW.cpp HW.h
    $(CXX) $(CFLAGS) -c HW.cpp

clean:
    rm -f main main.o HW.o