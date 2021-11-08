# Begin mac-setup contents ###################################################
# This .bashrc file is intended to work on both MacOS and Linux.

# Do not warn about using bash as default shell instead of zshrc.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Set shell to vim mode.
export EDITOR=vim
set -o vi

# Improve ls commands.
alias ls='ls -GFh'
alias la='ls -A'

# If available, add bash completion.
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Import aliases.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable command `subl` to open Sublime Text from the CLI.
export PATH="/$PATH:Applications/Sublime Text.app/Contents/SharedSupport/bin"
export PATH=$PATH:/opt/local/bin

# Do not update homebrew every time a package is installed.
export HOMEBREW_NO_AUTO_UPDATE=1

# Prevents homebrew from using Google Analytics to track behavior.
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# Unset PYTHONPATH
unset PYTHONPATH

# Coloring and command prompt improvements.
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="\[\e[1;32m\]\W\[\e[m\] \\$ "

# Don't put duplicate lines or lines starting with space in the history.
# For setting history length see HISTSIZE and HISTFILESIZE in bash(1).
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# End mac-setup contents #####################################################