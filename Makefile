
DESTDIR=/
PREFIX=/usr/local

all:
	@# do nothing yet

doc:
	$(MAKE) -f doc/Makefile html

install:
	env python2 setup.py install --root $(DESTDIR) --prefix $(PREFIX) --exec-prefix $(PREFIX)

install-osx:
	python setup.py install

.PHONY : doc
.PHONY : install
