.PHONY: install uninstall

PREFIX ?= ~/.local
BINDIR?=$(PREFIX)/bin
DOCDIR?=$(PREFIX)/share/doc/ereandel
MANDIR?=$(PREFIX)/share/man/man1
LICENSEDIR?=$(PREFIX)/share/doc/ereandel

install:
	mkdir -p $(BINDIR) $(DOCDIR) $(LICENSEDIR) $(MANDIR)
	install -m +rx ereandel -t $(BINDIR)
	install -m +r README.md CONTRIBUTING.md -t $(DOCDIR)
	install -m +r LICENSE -t $(LICENSEDIR)
	install -m +r ereandel.en.1 $(MANDIR)/ereandel.1

uninstall:
	rm $(BINDIR)/ereandel
	rm -rf $(DOCDIR)
	rm -rf $(LICENSEDIR)
	rm -f $(MANDIR)/ereandel.1
