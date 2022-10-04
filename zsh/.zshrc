export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  git
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
  z
)

source $ZSH/oh-my-zsh.sh
source ~/.torapture_specific 2>/dev/null
source ~/.profile 2>/dev/null

alias less="less -i"

# time
alias utc='date -u "+%Y-%m-%d %H:%M:%S"'
alias unix="date -u +%s"
alias now='date "+%Y-%m-%d %H:%M:%S"'

unix-ms() {
  python3 -c 'import time; print(int(time.time() * 1000))'
}

day() {
  UNIX_TIMESTAMP=$1
  if [[ -z $UNIX_TIMESTAMP ]]; then
    UNIX_TIMESTAMP=$(unix)
  fi
  date -d @$UNIX_TIMESTAMP "+%Y-%m-%d %H:%M:%S"
}

day-ms() {
  UNIX_TIMESTAMP_MS=$1
  if [[ -z $UNIX_TIMESTAMP_MS ]]; then
    UNIX_TIMESTAMP_MS=$(unix-ms)
  fi
  date -d @$(($UNIX_TIMESTAMP_MS / 1000)) "+%Y-%m-%d %H:%M:%S"
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
