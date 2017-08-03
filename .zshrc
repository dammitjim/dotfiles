# Path to your oh-my-zsh installation.
export ZSH=/Users/James/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="steeef-redux"

plugins=(git)

# User configuration

if [ -f ~/.path ]; then
    source ~/.path
else
    print "ALERT!!! missing ~/.path file"
fi

if [ -f ~/.secrets ]; then
    source ~/.secrets
else
    print "ALERT!!! missing ~/.secrets file"
fi

export GOPATH=$HOME/Developer/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
[ -n "$TMUX"  ] && export TERM=screen-256color

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

