all: help

apply-all: bashrc vimrc

pull-all: bash-pull vimrc-pull karabiner-pull sublime-pull iterm-pull

bash-install:       ## Configure Bash shell (.bashrc, 
	cp bash/.bashrc ~/.bashrc
	cp bash/.bash_profile ~/.bash_profile
	cp bash/.profile ~/.profile

bash-aliases:       ## Initialize an empty bash aliases file (warning: overwrites).
	cp bash/.bash_aliases ~/.bash_aliases

vim:                ## Configure local vim.
	cp vim/.vimrc ~/.vimrc

vim-pull:           ## Replace .vimrc in this repo with local .vimrc.
	cp ~/.vimrc vim/.vimrc

ideavim:			## Configure IDEA vim.
	cp ideavim/.ideavimrc ~/.ideavimrc

ideavim-pull:		## Replace .ideavimrc in this repo with local .ideavimrc.
	cp ~/.ideavimrc ideavim/.ideavimrc

karabiner:          ## Configure local karabiner.
	cp keyboard/karabiner.json ~/.config/karabiner/karabiner.json

karabiner-pull:     ## Replace this repo's karabiner config with the local installation's.
	cp ~/.config/karabiner/karabiner.json keyboard/karabiner.json

help:               ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
