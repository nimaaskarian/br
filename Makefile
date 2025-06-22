PREFIX := ${HOME}/.local
XDG_CONFIG_HOME := ${HOME}/.config

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f brmenu br ${DESTDIR}${PREFIX}/bin
	cp -f br.fish ${XDG_CONFIG_HOME}/fish/completions

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/br\
		${DESTDIR}${PREFIX}/bin/brmenu\
		${XDG_CONFIG_HOME}/fish/completions/br.fish
