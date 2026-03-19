PREFIX ?= /usr/local

install:
	install -d $(PREFIX)/bin
	install -m 755 bin/bgptools $(PREFIX)/bin/bgptools

uninstall:
	rm -f $(PREFIX)/bin/bgptools

.PHONY: install uninstall
