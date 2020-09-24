#!/bin/bash

git config --global user.email torapture@gmail.com
git config --global user.name ToRapture
git config --global core.editor vim
git config --global log.date iso

# display Chinese correctly when using git status
git config --global core.quotepath false

# better git log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset' --abbrev-commit --"
git config --global alias.l "log --stat"
