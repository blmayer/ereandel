.PHONY: install

PREFIX ?= ~/.local

install:
	install -m +x astro -d $(PREFIX)/bin

