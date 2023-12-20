
PATH = /usr/local/bin

all:
	@echo Run \'make install\' to install maintest.

install:
	@mkdir -p $(PATH)
	@cp -p maintest $(PATH)

uninstall:
	@rm -rf $(PATH)/maintest
