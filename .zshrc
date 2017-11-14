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

if [ -f ~/.exports ]; then
    source ~/.exports
fi

# fzf bindings and completion
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
    source /usr/local/opt/fzf/shell/key-bindings.zsh
    source /usr/local/opt/fzf/shell/completion.zsh
fi

# fzf + ag configuration
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
#export FZF_DEFAULT_OPTS='
  #--color=bg+:#073642,bg:#002b36,spinner:#719e07,hl:#586e75
  #--color=fg:#839496,header:#586e75,info:#cb4b16,pointer:#719e07
  #--color=marker:#719e07,fg+:#839496,prompt:#719e07,hl+:#719e07
#'

# oh my zsh config
source $ZSH/oh-my-zsh.sh

# colours config
export TERM=xterm-256color
[ -n "$TMUX"  ] && export TERM=screen-256color

# TODO I think this can go now that I have pyenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

