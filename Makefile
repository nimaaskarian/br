PREFIX = /usr/local
XDG_CONFIG_HOME ?= ${HOME}/.config/br

all: config

config:
	mkdir $(XDG_CONFIG_HOME)
	cp brrc $(XDG_CONFIG_HOME)/

install:
	cp br ${DESTDIR}${PREFIX}/bin
