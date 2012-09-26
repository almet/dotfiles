# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kennethreitz"
COMPLETION_WAITING_DOTS="true"

plugins=(git python debian github pip)

source $ZSH/oh-my-zsh.sh
source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.functions
source $HOME/.aliases
