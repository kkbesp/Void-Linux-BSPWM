if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zinit (modern path)
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d "$ZINIT_HOME" ] && mkdir -p "$(dirname $ZINIT_HOME)" && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
                zdharma-continuum/fast-syntax-highlighting \
                romkatv/powerlevel10k

alias merge="xrdb -merge $HOME/.Xresources"
alias upgrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="ls --color=auto"
alias la="ls -alFh --color=auto"
alias llp="stat -c '%A %a %n' {*,.*}"
alias ll="ls -a --color=auto"
alias l="ls -CF --color=auto"
alias lss="ls -sh | sort -h"
alias c='clear'
alias h='history'
alias ping='ping -c 5'
alias ports='netstat -tulanp'
alias fastping='ping -c 100 -s.2'
alias /="cd /"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......='cd ../../../../..'
alias q="exit"

alias xbi="sudo xbps-install -S"
alias xbu="sudo xbps-install -Su"
alias xbr="sudo xbps-remove"
alias xbo="sudo xbps-remove -Oo"
alias dt="cd ~/Documents/dots"

setopt completealiases
autoload -U compinit && compinit
setopt HIST_IGNORE_DUPS
ZSH_CACHE_DIR=$HOME/.cache/zshcache
export BROWSER="firefox"
export TERM="st-256color"
HISTFILE=~/.cache/.zhist
HISTSIZE=100000
SAVEHIST=100000

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
