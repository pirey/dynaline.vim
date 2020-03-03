" dynaline.vim - Dynamic Statusline
" Maintainer:   Pirey <https://github.com/pirey>
" Version:      0.1

if exists('g:loaded_dynaline')
    finish
endif

let g:loaded_dynaline = 1

""" dynaline options {{{
let g:dynaline = exists('g:dynaline') ? g:dynaline : {}
let s:default_options = {
            \ 'skip_filetypes': ['nerdtree'],
            \ 'conceal': 1,
            \ 'conceal_width': 30,
            \ 'conceal_content': '\ ⋯',
            \ 'compact_width': 60,
            \ 'compact_content': '\ %t',
            \ 'content': '',
            \ }

function! s:get_option(key)
    return get(g:dynaline, a:key, s:default_options[a:key])
endfunction
""" }}}

function! s:dynaline()
    if index(s:get_option('skip_filetypes'), &ft) >= 0
        return
    endif

    if winwidth(0) < s:get_option('conceal_width')
        execute 'setlocal statusline=' . s:get_option('conceal_content')
    elseif winwidth(0) < s:get_option('compact_width')
        execute 'setlocal statusline=' . s:get_option('compact_content')
    else
        execute 'setlocal statusline=' . s:get_option('content')
    endif
endfunction

augroup dynaline
    autocmd!
    autocmd VimEnter,VimResized,WinEnter,WinLeave * call s:dynaline()
augroup END
