source /etc/skel/.bashrc

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
alias "sshyacht=ssh -L 6667:yacht.rit.edu:6667 loothelion@yacht.rit.edu"
alias "sshrubberduck=ssh root@104.131.124.72"
alias "sshhvz=ssh liam@45.33.88.11"
alias rmignored="git status --ignored -z | sed -z -e '/^[^!]/d' -e 's/^!! //' | xargs -0 rm -r"
# User specific aliases and functions

if [ -f /usr/bin/nvim ]; then
    alias vim=nvim
fi
export EDITOR=vim

export GOPATH=/home/liam/repos/golang
# added by travis gem
[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh

###CPCTELERA_START
##
## These lines configure CPCtelera in your system
##

export CPCT_PATH=/home/liam/repos/cpctelera/cpctelera
export PATH=${PATH}:/home/liam/repos/cpctelera/cpctelera/tools/scripts

source ~/.private_exports
###CPCTELERA_END 
