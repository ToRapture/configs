#!/bin/bash

git config --global user.email torapture@gmail.com
git config --global user.name ToRapture
git config --global core.editor vim
git config --global core.quotepath false
git config --global push.default simple
git config --global diff.tool vimdiff  
git config --global difftool.prompt false
git config --global merge.tool vimdiff
git config --global mergetool.prompt false
git config --global log.date iso

# alias
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit --"
git config --global alias.l "log --stat"
git config --global alias.showtool "!showci () { rev=\${1:-HEAD}; git difftool \$rev~1 \$rev; }; showci \$1"