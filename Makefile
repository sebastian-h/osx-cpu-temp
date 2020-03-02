
CC     = cc
CFLAGS = -O2 -Wall
DEBUG-CFLAGS = -O0 -Wall -DEBUG -g
INC    = -framework IOKit
PREFIX = /usr/local
EXEC   = osx-cpu-temp
SOURCES := $(shell find . -name '*.c')

build : $(EXEC)

clean : 
	rm $(EXEC)
	rm -rf $(EXEC).dSYM

$(EXEC) : smc.c
	$(CC) $(CFLAGS) $(INC) -o $@ $?

debug: CFLAGS = ${DEBUG-CFLAGS}
debug: build

install : $(EXEC)
	@install -v $(EXEC) $(PREFIX)/bin/$(EXEC)

lint: bin/lint.sh $(SOURCES)
	@$<

lint-fix: bin/lint-fix.sh $(SOURCES)
	@$<

.PHONY: lint lint-fix clean install build debug
