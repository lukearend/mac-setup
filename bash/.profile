# Begin mac-setup contents ###################################################

# This .bashrc file is intended to work on both MacOS and Linux.
export PATH=$PATH:/opt/local/bin

# Enable command `subl` to open Sublime Text from the shell.
export PATH=$PATH:"Applications/Sublime Text.app/Contents/SharedSupport/bin"

# Allow go plugins to be found by Sublime Text.
export GOPATH=~/go
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/go/bin/goimports

# PYTHONPATH is not needed when using virtualenvs.
unset PYTHONPATH

# End mac-setup contents #####################################################
