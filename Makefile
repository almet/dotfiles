GIT_REPO := $(shell pwd)
install:
	ln -s $(GIT_REPO)/git ~/.git
	ln -s $(GIT_REPO)/.gitconfig ~/.
