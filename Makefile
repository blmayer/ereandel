.PHONY: install uninstall

PREFIX ?= ~/.local
BINDIR?=$(PREFIX)/bin
DOCDIR?=$(PREFIX)/share/doc/astro
LICENSEDIR?=$(PREFIX)/share/doc/astro

install:
	mkdir -p $(BINDIR) $(DOCDIR) $(LICENSEDIR)
	install -m +rx astro -t $(BINDIR)
	install -m +r README.md -t $(DOCDIR)
	install -m +r LICENSE -t $(LICENSEDIR)

uninstall:
	rm $(BINDIR)/astro
	rm -rf $(DOCDIR)
	rm -rf $(LICENSEDIR)
