CC=clang
CFLAGS=-g -Wall --std=gnu11

players: players.o
	$(CC) $(CFLAGS) -o $@ players.o -lm

.PHONY: clean
clean:
	rm -f *.o players

.c.o:
	$(CC) -c $(CFLAGS) $<
