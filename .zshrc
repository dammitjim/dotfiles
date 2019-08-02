# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="spaceship"

autoload -U promptinit; promptinit
prompt pure

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

if [ -f ~/.exports ]; then
    source ~/.exports
fi

# oh my zsh config
source $ZSH/oh-my-zsh.sh

# colours config
export TERM=xterm-256color
[ -n "$TMUX"  ] && export TERM=screen-256color

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

