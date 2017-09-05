" Author: Yanqing Wu
" Personal Customized

" Add bried author info
let g:header_field_author = 'Yanqing Wu'
let g:header_field_author = 'meet.yanqing.wu@gmail.com'
map <F4> :AddHeader<CR>

func! WordProcessorMode()
    setlocal formatoptions=t1
    setlocal textwidth=80
    map j gj
    map k gk
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O

:set number " enable line number displaying.

" remap ESC key to jj
inoremap jj <ESC>

let mapleader = "," " remap `leader` key to `,`

" skip over closing parenthesis with <TAB>
inoremap <expr> <Tab> SkipClosingParentheses()

" Skip closing parentheses with Tab key
function! SkipClosingParentheses()
    let line = getline('.')
    let current_char = line[col('.')-1]

    "Ignore EOL
    if col('.') == col('$')
        return "\t"
    end

    return stridx(']})', current_char)==-1 ? "\t" : "\<Right>"
endfunction