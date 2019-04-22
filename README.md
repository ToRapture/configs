# Install

## Vim

### Normal
`$ cd ~ && ln -s $repo/vim/.vimrc ./`

### SpaceVim
`$ curl -sLf https://spacevim.org/cn/install.sh | bash`

`$ cp ~ && ln -s $repo/vim/.SpaceVim.d ./`

## Terminal
`$ $repo/mac/brew_install.sh`

## ZSH
`$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

`$ cd ~ && ln -s $repo/zsh/.zshrc ./`

### plugins
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Sublime
Package Control: https://packagecontrol.io/installation

OS X: `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages && ln -s $repo/sublime/User ./`

Linux: `cd ~/.config/sublime-text-3/Packages && ln -s $repo/sublime/User ./`
