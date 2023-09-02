.PHONY: install uninstall

PREFIX ?= ~/.local
BINDIR?=$(PREFIX)/bin
DOCDIR?=$(PREFIX)/share/doc/astro
MANDIR?=$(PREFIX)/share/man/man1
LICENSEDIR?=$(PREFIX)/share/doc/astro

install:
	mkdir -p $(BINDIR) $(DOCDIR) $(LICENSEDIR) $(MANDIR)
	install -m +rx astro -t $(BINDIR)
	install -m +r README.md -t $(DOCDIR)
	install -m +r LICENSE -t $(LICENSEDIR)
	install -m +r astro.en.1 $(MANDIR)/astro.1

uninstall:
	rm $(BINDIR)/astro
	rm -rf $(DOCDIR)
	rm -rf $(LICENSEDIR)
	rm -f $(MANDIR)/astro.1
