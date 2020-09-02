`$repo` represents directory path of this repo.  
You can run `$ export repo=$(pwd)` to set `$repo`.

# Vim
`$ cd ~ && ln -s $repo/vim/.vimrc ./`

------

# ZSH
`$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  
`$ cd ~ && ln -s $repo/zsh/.zshrc ./`

## plugins
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`  
`$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

------

# Git
`$ $repo/git/gitconfig.sh`

------

# Font
To use Windows Terminal or correctly use powerline, you have to use powerline fonts, after downloading the font, set the terminal to use the font you downloaded.  

Fonts:
* [microsoft/cascadia-code](https://github.com/microsoft/cascadia-code)
* [powerline/fonts](https://github.com/powerline/fonts)
