function! myspacevim#before() abort
    set ignorecase
    set list "显示tab和换行"
    let g:indentLine_setConceal = 0 "json文件显示分号"
    autocmd FileType go :set noexpandtab "golang文件使用tab缩进"
    let g:vimfiler_direction = "topleft"
    let g:spacevim_enable_ycm = 1
    let g:ycm_global_ycm_extra_conf = "~/.cache/vimfiles/repos/github.com/Valloric/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"
endfunction

function! myspacevim#after() abort
    let g:tagbar_left = 0
endfunction
