.POSIX:

include config.mk

all: sstrip txt2pdf nvis E

clean:
	rm -f sstrip

sstrip: sstrip.c
	gcc $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f sstrip txt2pdf nvis E $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sstrip
	chmod 755 $(DESTDIR)$(PREFIX)/bin/txt2pdf
	chmod 755 $(DESTDIR)$(PREFIX)/bin/E
	chmod 755 $(DESTDIR)$(PREFIX)/bin/nvis

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/txt2pdf\
		$(DESTDIR)$(PREFIX)/bin/sstrip

.PHONY: all install uninstall clean
