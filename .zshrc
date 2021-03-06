# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kennethreitz"
COMPLETION_WAITING_DOTS="true"

plugins=(python debian github pip)

export EDITOR="vim"
source $ZSH/oh-my-zsh.sh
source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.functions
source $HOME/.aliases
export PIP_DOWNLOAD_CACHE="~/.pipcache"
