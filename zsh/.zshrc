# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
  z
  docker
)

source $ZSH/oh-my-zsh.sh
source ~/.torapture-profile 2>/dev/null
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
  if [[ $OSTYPE == "darwin"* ]]; then
    date -r $UNIX_TIMESTAMP "+%Y-%m-%d %H:%M:%S"
  else
    date -d @$UNIX_TIMESTAMP "+%Y-%m-%d %H:%M:%S"
  fi
}

day-ms() {
  UNIX_TIMESTAMP_MS=$1
  if [[ -z $UNIX_TIMESTAMP_MS ]]; then
    UNIX_TIMESTAMP_MS=$(unix-ms)
  fi
  if [[ $OSTYPE == "darwin"* ]]; then
    date -r $(($UNIX_TIMESTAMP_MS / 1000)) "+%Y-%m-%d %H:%M:%S"
  else
    date -d @$(($UNIX_TIMESTAMP_MS / 1000)) "+%Y-%m-%d %H:%M:%S"
  fi
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
