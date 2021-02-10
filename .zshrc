export ZSH="/home/kki/.oh-my-zsh"
ZSH_THEME="kardan"
plugins=(zsh-autocomplete fast-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
[[ -f ~/.alias_zsh ]] && . ~/.alias_zsh
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx &> /dev/null
