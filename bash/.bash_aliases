# List the projects aliased in this file.
alias projects="echo && echo 'projects:' && echo && "\
"grep '^alias' ~/.bash_aliases | grep -v 'alias projects' "\
"| awk '{print \$2}' | sed 's/=.*//' | sed 's/^/    /' && echo"

# Example project alias:
# alias mac-setup="cd ~/projects/mac-setup"
