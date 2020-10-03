"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle copied from https://github.com/VundleVim/Vundle.vim and modified
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'sheerun/vim-polyglot'  " recommended by onedark
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set enc=utf-8               " avoid from E595: contains unprintable or wide character
syntax on                   " start highlighting
set hlsearch                " highlight search results
colorscheme onedark
set nu                      " display line numbers
set softtabstop=4           " cause <Tab> and <BS> to insert and delete the correct number of spaces
set shiftwidth=4            " change the number of space characters inserted for indentation
set tabstop=4               " control the number of space characters that will be inserted when the tab key is pressed
set expandtab               " convert tabs to spaces
set ignorecase              " ignore case in search patterns

set list                    " show white spaces as a character
set showbreak=↪\ 
set listchars=tab:→\ ,nbsp:␣,trail:•,eol:↲,precedes:«,extends:»

set cursorline              " highlight the current line
hi CursorLine cterm=NONE ctermbg=0 ctermfg=NONE
set cursorcolumn            " highlight the current column
hi CursorColumn cterm=NONE ctermbg=0 ctermfg=NONE


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
