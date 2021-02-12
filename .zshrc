if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


source .zinit/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions


alias merge="xrdb -merge $HOME/.Xresources"
alias upgrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="ls --color=auto"
alias la="ls -alFh --color=auto"
alias llp="stat -c '%A %a %n' {*,.*}"
alias ll="ls -a --color=auto"
alias l="ls -CF --color=auto"
alias .l="dirs -v"
alias lss="ls -sh | sort -h"
alias mk="mkdir"
alias /="cd /"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......='cd ../../../../..'
alias q="exit"

alias gi="git init"
alias gs="git status"
alias gl="git log --stat --pretty=oneline --graph --date=short"
alias ga="git add --all"
alias gr="git remote"
alias gf="git fetch"
alias gpl="git pull"
alias gp="git push"
alias gpm="git push origin master"

alias xbi="sudo xbps-install -S"
alias xbu="sudo xbps-install -Su"
alias xbr="sudo xbps-remove"
alias xbo="sudo xbps-remove -Oo"
alias dt="cd ~/Documents/dots"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
