TARGET=test
CFLAGS=-O0 -g -Wall -D_GNU_SOURCE -DHAVE_ARGON2_H -DUSE_ARGON2_TEST
LDLIBS=-largon2
CC=gcc

SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)

all: $(TARGET) $(TARGET2) $(TARGET4)

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^ $(LDLIBS)

clean:
	rm -f *.o *~ core $(TARGET)

.PHONY: clean
