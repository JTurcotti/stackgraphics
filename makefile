OBJECTS= main.o draw.o display.o matrix.o parser.o
HEADERS= ml6.h display.h draw.h matrix.h parser.h
CFLAGS= -Wall -g
LDFLAGS= -lm
CC= gcc

all: main $(OBJECTS) 
	./main script.txt

main: $(OBJECTS) 
	$(CC) $(CFLAGS) -o main $(OBJECTS) $(LDFLAGS)

main.o: main.c $(HEADERS) 
	$(CC) $(CFLGAGS) -c main.c

draw.o: draw.c $(HEADERS) 
	$(CC) $(CFLAGS) -c draw.c

display.o: display.c $(HEADERS) 
	$(CC) $(CFLAGS) -c display.c

matrix.o: matrix.c $(HEADERS) 
	$(CC) $(CFLAGS) -c matrix.c

parser.o: parser.c $(HEADERS) 
	$(CC) $(CFLAGS) -c parser.c

clean:
	rm *.o *~

