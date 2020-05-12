FLAVOURS=latest edge
DIRS=$(patsubst %,alpine/%,${FLAVOURS})
DOCKERFILES=$(patsubst %,alpine/%/Dockerfile, ${FLAVOURS})
MAKEFILES=$(patsubst %,alpine/%/Makefile, ${FLAVOURS})

.PHONY: all clean

all: ${DOCKERFILES} ${MAKEFILES}

clean:
	rm -rf ${DIRS}

alpine/%/Dockerfile alpine/%/Makefile: alpine/template/Dockerfile.in alpine/template/Makefile.in
	mkdir -p "$(@D)"
	cd "$(@D)" && ../../configure --srcdir=../template TAG=$(*F) NAME=alpine
