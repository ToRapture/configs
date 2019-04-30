function! myspacevim#before() abort
    set ignorecase " 不区分大小写
    set list " 显示tab和换行
    let g:indentLine_setConceal = 0 " json文件显示分号
    autocmd FileType go :set noexpandtab " golang文件使用tab缩进
    let g:vimfiler_direction = "topleft" " 文件栏置左
    let g:spacevim_enable_statusline_bfpath = 1 " 底部状态栏显示文件fullpath

    " vim-go
    let g:go_fmt_command = "goimports"

    " YouCompleteMe
    let g:spacevim_enable_ycm = 1 " 开启YouCompleteMe
    let g:ycm_global_ycm_extra_conf = "~/.cache/vimfiles/repos/github.com/Valloric/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py" " YouCompleteMe配置
    " 输入两个字符即触发补全
    let g:ycm_semantic_triggers = {
                \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
                \ 'cs,lua,javascript': ['re!\w{2}'],
                \}
endfunction

function! myspacevim#after() abort
    let g:tagbar_left = 0 " tagbar置右
endfunction
