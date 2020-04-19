.POSIX:

include config.mk

all: sstrip txt2pdf nvis E dwmdo scrat

clean:
	rm -f sstrip

sstrip: sstrip.c
	gcc $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f scrat sstrip txt2pdf nvis E dwmdo $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sstrip
	chmod 755 $(DESTDIR)$(PREFIX)/bin/txt2pdf
	chmod 755 $(DESTDIR)$(PREFIX)/bin/E
	chmod 755 $(DESTDIR)$(PREFIX)/bin/nvis
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmdo
	chmod 755 $(DESTDIR)$(PREFIX)/bin/scrat

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/{txt2pdf,sstrip,E,nvis,dwmdo,scrat}

.PHONY: all install uninstall clean
