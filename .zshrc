# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="steeef-redux"

plugins=(git extract z)

# User configuration

if [ -f ~/.path ]; then
    source ~/.path
else
    print "ALERT!!! missing ~/.path file"
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
else
    print "ALERT!!! missing ~/.aliases file"
fi

if [ -f ~/.secrets ]; then
    source ~/.secrets
fi

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
[ -n "$TMUX"  ] && export TERM=screen-256color

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

