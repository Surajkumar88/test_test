
distro = $(shell uname)
# Setting the DESTDIR path based on the Distro detected
ifeq ($(distro), Linux)
	DESTDIR = /usr/bin
else 
	ifeq ($(distro), Darwin)
		DESTDIR = /usr/local/bin
	endif
endif
all:
	@echo Run \'make install\' to install maintest.

install:
	@mkdir -p $(DESTDIR)
	@cp -p maintest $(DESTDIR)
	@echo Installed

uninstall:
	@rm -rf $(DESTDIR)/maintest
	@echo UnInstalled

