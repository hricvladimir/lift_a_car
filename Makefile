PROGRAM = main

SOURCES = main.c

CC = gcc
CFLAGS = -lm

all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	$(CC) -o $(PROGRAM) $(SOURCES) $(CFLAGS)

test: $(PROGRAM)
	chmod +x test.sh
	./test.sh
 
clean:
	rm -f $(PROGRAM)
