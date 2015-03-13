VERSION := 2.0.0

CC := clang
CFLAGS := -Wall -Wextra -pedantic -std=c11 -D_DEFAULT_SOURCE -O2 -march=native

xsel: xsel.c
	$(CC) $(CFLAGS) '-DVERSION="$(VERSION)"' xsel.c -lX11 -o xsel

clean:
	rm -f xsel

.PHONY: clean
