function! myspacevim#before() abort
    set ignorecase
    set list "显示tab和换行"
    let g:indentLine_setConceal = 0 "json文件显示分号"
    autocmd FileType go :set noexpandtab "golang文件使用tab缩进"
    let g:vimfiler_direction = "topleft"
endfunction

function! myspacevim#after() abort
    let g:tagbar_left = 0
endfunction
