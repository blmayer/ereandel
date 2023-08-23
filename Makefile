.PHONY: install uninstall

PREFIX ?= ~/.local
BINDIR?=$(PREFIX)/bin
DOCDIR?=$(PREFIX)/share/doc/astro

install:
	mkdir -p $(BINDIR) $(DOCDIR)
	install -m +rx astro -t $(BINDIR)
	install -m +r README.md -t $(DOCDIR)
	install -m +r LICENSE -t $(DOCDIR)

uninstall:
	rm $(BINDIR)/astro
	rm -rf $(DOCDIR)
