# Install

## Vim

### Normal
`$ cd ~ && ln -s $repo/vim/.vimrc ./`

### SpaceVim
`$ curl -sLf https://spacevim.org/cn/install.sh | bash`

`$ cd ~ && ln -s $repo/vim/.SpaceVim.d ./`

#### Font

##### Mac
`$ brew tap caskroom/fonts`

`$ brew cask install font-hack-nerd-font`

设置终端的`Non-ASCII Font`为`Hack Nerd Font`

#### Dependence

##### Python
`$ pip3 install jedi`

##### GoLang
`vim :GoInstallBinaries`

##### YouCompleteMe
`$ cd ~/.cache/vimfiles/repos/github.com/Valloric/YouCompleteMe && git submodule update --init --recursive && ./install.py --clang-completer --go-completer`

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
