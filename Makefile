.PHONY: all help run-setup
all: help

run-setup:          ## Run the main setup. This is the first step in setting up a new Mac.
	cd scripts && bash setup.sh

.PHONY: apply-all pull-all
apply-all: bashrc vimrc karabiner sublime iterm

pull-all: bash-pull vimrc-pull karabiner-pull sublime-pull iterm-pull

.PHONY: bashrc bash-aliases bash-profile bash-pull
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

.PHONY: vim vim-pull
vim:                ## Configure local vim.
	cp vim/.vimrc ~/.vimrc

vim-pull:           ## Replace .vimrc in this repo with local .vimrc.
	cp ~/.vimrc vim/.vimrc

.PHONY: ideavim ideavim-pull
ideavim:			## Configure IDEA vim.
	cp ideavim/.ideavimrc ~/.ideavimrc

ideavim-pull:		## Replace .ideavimrc in this repo with local .ideavimrc.
	cp ~/.ideavimrc ideavim/.ideavimrc

.PHONY: karabiner karabiner-pull
karabiner:          ## Configure local karabiner.
	cp keyboard/karabiner.json ~/.config/karabiner/karabiner.json

karabiner-pull:     ## Replace this repo's karabiner config with the local installation's.
	cp ~/.config/karabiner/karabiner.json keyboard/karabiner.json

.PHONY: sublime sublime-pull
sublime:            ## Configure local Sublime Text.
	cp -r sublime/.neovintageousrc ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/.neovintageousrc
	cp -r sublime/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*

sublime-pull:       ## Replace this repo's Sublime Text settings with the local installation's.
	cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/.neovintageousrc sublime/.neovintageousrc
	cp -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-settings sublime/

.PHONY: iterm iterm-pull
iterm:
	cp iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

iterm-pull:
	rm -f iterm/com.googlecode.iterm2.plist
	cp ~/Library/Preferences/com.googlecode.iterm2.plist iterm/com.googlecode.iterm2.plist

.PHONY: pycharm pycharm-pull
pycharm:
	pycharm=`cd ~/Library/Application\ Support/JetBrains && find . -type d -path '*/PyCharm*' -maxdepth 1 | head -1 | xargs basename` && \
	for config in codestyles colors filetypes inspection keymaps options templates tools shelf; \
	do \
		cp -r pycharm/$$config ~/Library/Application\ Support/JetBrains/$$pycharm/ &> /dev/null || : ; \
	done

pycharm-pull:
	pycharm=`cd ~/Library/Application\ Support/JetBrains && find . -type d -path '*/PyCharm*' -maxdepth 1 | head -1 | xargs basename` && \
	for config in codestyles colors filetypes inspection keymaps options templates tools shelf; \
	do \
		cp -r ~/Library/Application\ Support/JetBrains/$$pycharm/$$config pycharm/ &> /dev/null || : ; \
	done

help:               ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
