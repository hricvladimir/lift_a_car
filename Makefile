PROGRAM = main

SOURCES = main.c

CC = gcc
CFLAGS = -lm

all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	$(CC) -o $(PROGRAM) $(SOURCES) $(CFLAGS)

test: $(PROGRAM)
	./test.sh
 
clean:
	rm -f $(PROGRAM)
