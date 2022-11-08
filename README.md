```
$ git clone git@github.com:ToRapture/configs.git
$ cd configs
$ export REPO=$(realpath .)
```

# Vim
`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`  
`$ cd ~ && ln -s $REPO/vim/.vimrc ./`  
`$ vim +PluginInstall +qall`

------

# ZSH
`$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  
`$ cd ~ && ln -s $REPO/zsh/.zshrc ./`

## plugins
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`  
`$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`  
`$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`  

------

# Git
`$ $REPO/git/gitconfig.sh`  
On Windows, you should set environment variable `LESSCHARSET` to `utf-8` to correctly display Chinese on git log.

------

# Font
Fonts:
* [ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

Use `CaskaydiaCove NF Mono` for Windows Terminal.

------

# Powershell
`> .\powershell\setup.ps1`

------

# Chrome
## Advanced Font Settings
Download the `Advanced Font Settings` plugin and set fonts.  

### Fonts
* [Noto CJK](https://www.google.com/get/noto/help/cjk/) download `Super OpenType/CFF Collection (Super OTC)`
* [Hack](https://sourcefoundry.org/hack/)


### Default
* `Standard`: `Noto Sans CJK SC`
* `Serif`: `Noto Serif CJK SC`
* `Sans-Serif`: `Noto Sans CJK SC`
* `Fixed`: `Hack`

### Simplified Han
* `Standard`: `Noto Sans CJK SC`
* `Serif`: `Noto Serif CJK SC`
* `Sans-Serif`: `Noto Sans CJK SC`
* `Fixed`: `Hack`

### Traditional Han
* `Standard`: `Noto Sans CJK TC`
* `Serif`: `Noto Serif CJK TC`
* `Sans-Serif`: `Noto Sans CJK TC`
* `Fixed`: `Hack`

### Japanese
* `Standard`: `Noto Sans CJK JP`
* `Serif`: `Noto Serif CJK JP`
* `Sans-Serif`: `Noto Sans CJK JP`
* `Fixed`: `Hack`

------

# Terminator
`$ mkdir -p ~/.config/terminator && cd ~/.config/terminator && ln -s $REPO/terminator/config ./`
