GIT_REPO := $(shell pwd)
install: install-git install-helix

install-git:
	# Git
	ln -s $(GIT_REPO)/git ~/.git
	ln -s $(GIT_REPO)/.gitconfig ~/.

install-helix:
	# Helix
	ln -s $(GIT_REPO)/helix ~/.config/.
