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
	jbdir=~/Library/ApplicationSupport/JetBrains && \
	pycharm=`cd $$jbdir && find . -type d -path '*/PyCharm*' -maxdepth 1 | head -1 | xargs basename` && \
	cp -r pycharm/codestyles $$jbdir/$$pycharm/ && \
	cp -r pycharm/colors $$jbdir/$$pycharm/ && \
	cp -r pycharm/inspection $$jbdir/$$pycharm/ && \
	cp -r pycharm/keymaps $$jbdir/$$pycharm/ && \
	cp pycharm/options/*.xml $$jbdir/$$pycharm/options/

pycharm-pull:
	cd pycharm && mkdir -p codestyles colors inspection keymaps options
	jbdir=~/Library/ApplicationSupport/JetBrains && \
	pycharm=`cd $$jbdir && find . -type d -path '*/PyCharm*' -maxdepth 1 | head -1 | xargs basename` && \
	cp -r $$jbdir/$$pycharm/codestyles pycharm/ && \
	cp -r $$jbdir/$$pycharm/colors pycharm/ && \
	cp -r $$jbdir/$$pycharm/inspection pycharm/ && \
	cp -r $$jbdir/$$pycharm/keymaps pycharm/ && \
	cp $$jbdir/$$pycharm/options/actionSummary.xml pycharm/options/actionSummary.xml && \
	cp $$jbdir/$$pycharm/options/advancedSettings.xml pycharm/options/advancedSettings.xml && \
	cp $$jbdir/$$pycharm/options/colors.scheme.xml pycharm/options/colors.scheme.xml && \
	cp $$jbdir/$$pycharm/options/databaseSettings.xml pycharm/options/databaseSettings.xml && \
	cp $$jbdir/$$pycharm/options/debugger.xml pycharm/options/debugger.xml && \
	cp $$jbdir/$$pycharm/options/editor-font.xml pycharm/options/editor-font.xml && \
	cp $$jbdir/$$pycharm/options/editor.xml pycharm/options/editor.xml && \
	cp $$jbdir/$$pycharm/options/filetypes.xml pycharm/options/filetypes.xml && \
	cp $$jbdir/$$pycharm/options/find.xml pycharm/options/find.xml && \
	cp $$jbdir/$$pycharm/options/ide-features-trainer.xml pycharm/options/ide-features-trainer.xml && \
	cp $$jbdir/$$pycharm/options/ide.general.xml pycharm/options/ide.general.xml && \
	cp $$jbdir/$$pycharm/options/laf.xml pycharm/options/laf.xml && \
	cp $$jbdir/$$pycharm/options/pySdk.xml pycharm/options/pySdk.xml && \
	cp $$jbdir/$$pycharm/options/pyWelcome.xml pycharm/options/pyWelcome.xml && \
	cp $$jbdir/$$pycharm/options/runner.layout.xml pycharm/options/runner.layout.xml && \
	cp $$jbdir/$$pycharm/options/shownTips.xml pycharm/options/shownTips.xml && \
	cp $$jbdir/$$pycharm/options/terminal.xml pycharm/options/terminal.xml && \
	cp $$jbdir/$$pycharm/options/usageView.xml pycharm/options/usageView.xml && \
	cp $$jbdir/$$pycharm/options/vcs.xml pycharm/options/vcs.xml && \
	cp $$jbdir/$$pycharm/options/vim_settings.xml pycharm/options/vim_settings.xml

help:               ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
