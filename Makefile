.POSIX:

all: sstrip txt2pdf

clean:
	rm -f sstrip

sstrip: sstrip.c
	gcc $< -o $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f sstrip txt2pdf $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sstrip
	chmod 755 $(DESTDIR)$(PREFIX)/bin/txt2pdf

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/txt2pdf\
		$(DESTDIR)$(PREFIX)/bin/sstrip

.PHONY: all install uninstall clean
