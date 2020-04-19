.POSIX:

include config.mk

all: sstrip txt2pdf nvis E dwmdo scrat insight

clean:
	rm -f sstrip

sstrip: sstrip.c
	gcc $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f insight scrat sstrip txt2pdf nvis E dwmdo $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sstrip
	chmod 755 $(DESTDIR)$(PREFIX)/bin/txt2pdf
	chmod 755 $(DESTDIR)$(PREFIX)/bin/E
	chmod 755 $(DESTDIR)$(PREFIX)/bin/nvis
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmdo
	chmod 755 $(DESTDIR)$(PREFIX)/bin/scrat
	chmod 755 $(DESTDIR)$(PREFIX)/bin/insight

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/{txt2pdf,sstrip,E,nvis,dwmdo,scrat,insight}

.PHONY: all install uninstall clean
