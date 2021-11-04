export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Begin manually written contents ############################################

# Set shell to vim mode.
set -o vim

# If available, add bash completion.
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Aliases to quickly jump to project environments.
alias example-project="cd ~/projects/example-project"

# Added for Sublime Text.
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Do not update homebrew every time a package is installed.
export HOMEBREW_NO_AUTO_UPDATE=1

# Prevents homebrew from using Google Analytics to track behavior.
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# unset PYTHONPATH
unset PYTHONPATH

# Nice cosmetic things: coloring, command prompt change, and improved ls:
# from osxdaily.com/2013/02/05/improve-terminal-appearance-mac-os-x/
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Show only current directory at the command prompt.
export PS1="%1d$ "

# End manually written contents ##############################################
