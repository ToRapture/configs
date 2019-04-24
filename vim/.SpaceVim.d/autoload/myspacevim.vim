function! myspacevim#before() abort
    set ignorecase
    set list "显示tab和换行"
    let g:indentLine_setConceal = 0 "json文件显示分号"
    autocmd FileType go :set noexpandtab "golang文件使用tab缩进"
endfunction

function! myspacevim#after() abort
endfunction
