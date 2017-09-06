" Author: Yanqing Wu <meet.yanqing.wu@gmail.com>
" Personal Customized vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" ---------------------------------------------------------------------
" Vundle Configurations
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'alpertuna/vim-header'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" ---------------------------------------------------------------------
" Add bried author info for `alpertuna/vim-header`
let g:header_field_author = 'Yanqing Wu'
let g:header_field_author = 'meet.yanqing.wu@gmail.com'
map <F4> :AddHeader<CR>

" ---------------------------------------------------------------------

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
