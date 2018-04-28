syntax on
set smartindent 
set showmatch
set ignorecase
set mouse=a 
set tabstop=4  
set shiftwidth=4 
set expandtab  
set softtabstop=4  
set nu

"Vundle Begin"
set nocompatible "be improved, required
filetype off "required

"启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"安装插件写在这之后

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"安装插件写在这之前
call vundle#end() "required
filetype plugin on "required
"Vendle End"
