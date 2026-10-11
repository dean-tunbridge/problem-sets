CC = gcc
CFLAGS = -Wall -Wextra
CS50_DIR = ..

hello: hello.c $(CS50_DIR)/cs50.c $(CS50_DIR)/cs50.h
	$(CC) $(CFLAGS) -I$(CS50_DIR) hello.c $(CS50_DIR)/cs50.c -o hello

clean:
	rm -f hello

.PHONY: clean