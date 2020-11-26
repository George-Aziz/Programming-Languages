#MAKEFILE VARIABLES
CC = g++
CFLAGS = -Wall -Werror
OBJ = TestHarness.o 
EXEC = TestHarness

$(EXEC): $(OBJ)	
	$(CC) $(OBJ) -o $(EXEC)

#FILES IN MAKEFILES
TestHarness.o : TestHarness.cpp Quicksort.h Book.h 
	$(CC) $(CFLAGS) TestHarness.cpp -c 

clean:
	rm -f $(EXEC) $(OBJ)
