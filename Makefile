CC = gcc
CFLAGS = -Wall -Wextra
CS50_DIR = .

.PHONY: all clean

# Compile a project, e.g. make hello or make mario-more
%:
	@if [ -f "$@/$@.c" ]; then \
		$(CC) $(CFLAGS) -I$(CS50_DIR) "$@/$@.c" $(CS50_DIR)/cs50.c -o "$@/$@"; \
	else \
		echo "Error: Cannot find $@/$@.c"; \
		exit 1; \
	fi

# Remove compiled executables from project folders
clean:
	@for dir in */; do \
		name=$${dir%/}; \
		if [ -f "$$dir/$$name.c" ] && [ -f "$$dir/$$name" ]; then \
			rm -f "$$dir/$$name"; \
			echo "Removed $$dir$$name"; \
		fi; \
	done