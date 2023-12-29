DESTDIR ?= /
PREFIX ?= $(DESTDIR)usr/local
EXEC_PREFIX ?= $(PREFIX)
BINDIR ?= $(EXEC_PREFIX)/bin
DATAROOTDIR ?= $(PREFIX)/share

install:
	@install -v -Dm 0755 hypr-trans --target-directory "$(BINDIR)"
	@install -v -Dm 644 LICENSE "/usr/share/licenses/sway-trans/LICENSE"

uninstall:
	rm "$(BINDIR)/sway-trans"
	rm -fr "/usr/share/licenses/sway-trans/"
