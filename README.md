# Install
`$ cd ~ && ln -s $repo/vim/.vimrc ./`

`$ cd ~ && ln -s $repo/zsh/.zshrc ./`

## Terminal
`$ $repo/mac/brew_install.sh`

## ZSH
`$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### plugins
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Sublime
OS X: `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages && ln -s $repo/sublime/User ./`

Linux: `cd ~/.config/sublime-text-3/Packages && ln -s $repo/sublime/User ./`
