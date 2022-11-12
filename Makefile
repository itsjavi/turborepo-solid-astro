DCR=.devcontainer/run

default: dev
dev:
	${DCR} up -d app
	make open

restart:
	${DCR} restart

stop:
	${DCR} stop

install:
	${DCR} app yarn install

open:
	open http://localhost:3000
	open http://localhost:6006

sh: bash
bash:
	${DCR} app bash
