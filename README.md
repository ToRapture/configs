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
On Windows, you should set environment variable `LESSCHARSET` to `utf-8` to correctly display Chinese on git log.

------

# Windows Terminal
Replace `settings.json` of Windows Terminal with `windows-terminal\settings.json`.

## Font
To use Windows Terminal or correctly use powerline, you have to use powerline fonts, after downloading the font, set the terminal to use the font you downloaded.  

Fonts:
* [microsoft/cascadia-code](https://github.com/microsoft/cascadia-code)
* [powerline/fonts](https://github.com/powerline/fonts)

------

# Powershell
Replace `$profile` of Powershell with `powershell\Microsoft.PowerShell_profile.ps1`.

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
`$ mkdir -p ~/.config/terminator && cd ~/.config/terminator && ln -s $repo/terminator/config ./`
