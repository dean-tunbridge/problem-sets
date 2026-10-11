CC = gcc
CFLAGS = -Wall -Wextra
CS50_DIR = /home/dean/cs50

%:
	@if [ -f "$@/$@.c" ]; then \
		$(CC) $(CFLAGS) -I$(CS50_DIR) "$@/$@.c" $(CS50_DIR)/cs50.c -o "$@/$@"; \
	else \
		echo "Error: Cannot find $@/$@.c"; \
		exit 1; \
	fi