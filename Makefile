.PHONY: install

PREFIX ?= ~/.local

install:
	install -m +rx astro -t $(PREFIX)/bin/

