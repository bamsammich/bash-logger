BIN ?= term
PREFIX ?= /usr/local

install:
	cp logger.sh $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)