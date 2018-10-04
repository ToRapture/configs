export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
  colored-man-pages
  zsh-syntax-highlighting
  z
)

source $ZSH/oh-my-zsh.sh
source ~/.torapture_specific 2>/dev/null
source ~/fuck 2>/dev/null

# alias
alias less="less -i"
alias diff="colordiff -u"
alias utc="date -u"
alias spp="git stash && git pull -r && git stash pop"

