.POSIX:

include config.mk

bins=reader insight scrat sstrip txt2pdf nvis E dwmdo ps2png

all: sstrip txt2pdf nvis E dwmdo scrat insight

clean:
	rm -f sstrip

sstrip: sstrip.c
	gcc $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f reader insight scrat sstrip txt2pdf nvis E dwmdo ps2png $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sstrip
	chmod 755 $(DESTDIR)$(PREFIX)/bin/txt2pdf
	chmod 755 $(DESTDIR)$(PREFIX)/bin/E
	chmod 755 $(DESTDIR)$(PREFIX)/bin/nvis
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmdo
	chmod 755 $(DESTDIR)$(PREFIX)/bin/scrat
	chmod 755 $(DESTDIR)$(PREFIX)/bin/insight
	chmod 755 $(DESTDIR)$(PREFIX)/bin/reader
	chmod 755 $(DESTDIR)$(PREFIX)/bin/ps2png

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/{ps2png,txt2pdf,sstrip,E,nvis,dwmdo,scrat,insight,reader}

.PHONY: all install uninstall clean
