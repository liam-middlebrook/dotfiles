source /etc/skel/.bashrc

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export XDG_CONFIG_HOME=$HOME/config
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

if [ -f /usr/bin/nvim ]; then
    alias vim=nvim
    export EDITOR=nvim
fi

export GOPATH=/home/liam/repos/golang
# added by travis gem

[ -f /home/liam/.travis/travis.sh ] && source /home/liam/.travis/travis.sh

source ~/.private_exports

export GPGKEY="$(gpg -K | awk 'NR==3 {print $2}' | sed 's/2048R\///g')"

alias evince=mupdf

alias refresh=". ~/.bashrc"

shopt -s histappend
shopt -s cmdhist

PROMPT_COMMAND='history -a'

HISTSIZE=500000
HISTFILESIZE=1000000

HISTCONTROL="erapedups:ignoreboth"

export HISTIGNORE="&:[]*:exit:ls:bg:fg:history"

HISTIMEFORMAT='%F %T '

shopt -s dirspell
shopt -s cdspell

export PATH="$PATH:/home/loothelion/Downloads/rkt-v1.1.0"
