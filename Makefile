all: help

run-setup:          ## Run the main setup. This is the first step in setting up a new Mac.
	cd scripts && bash setup.sh

apply-all: bashrc vimrc karabiner sublime iterm

pull-all: bash-pull vimrc-pull karabiner-pull sublime-pull iterm-pull

bashrc:             ## Configure shell setup by overwriting local files.
	cp bash/.bashrc ~/.bashrc
	cp bash/.bash_profile ~/.bash_profile
	cp bash/.profile ~/.profile

bash-aliases:       ## Initialize an empty bash aliases file (warning: overwrites).
	cp bash/.bash_aliases ~/.bash_aliases

bash-profile:       ## Initialize an empty

bash-pull:          ## Replace this repo's bash/shell setup with the local user's.
	cp ~/.bashrc bash/.bashrc
	cp ~/.bash_profile bash/.bash_profile
	cp ~/.profile bash/.profile

vim:              ## Configure local vim.
	cp vim/.vimrc ~/.vimrc

vim-pull:         ## Replace .vimrc in this repository with local .vimrc.
	cp ~/.vimrc vim/.vimrc

karabiner:          ## Configure local karabiner.
	cp keyboard/karabiner.json ~/.config/karabiner/karabiner.json

karabiner-pull:     ## Replace this repo's karabiner config with the local installation's.
	cp ~/.config/karabiner/karabiner.json keyboard/karabiner.json

sublime:            ## Configure local Sublime Text.
	cp -r sublime/.neovintageousrc ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/.neovintageousrc
	cp -r sublime/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*

sublime-pull:       ## Replace this repo's Sublime Text settings with the local installation's.
	cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/.neovintageousrc sublime/.neovintageousrc
	cp -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-settings sublime/

iterm:
	cp iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

iterm-pull:
	rm -f iterm/com.googlecode.iterm2.plist
	cp ~/Library/Preferences/com.googlecode.iterm2.plist iterm/com.googlecode.iterm2.plist

help:               ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

.PHONY: sublime iterm
