" File              : .vimrc
" Author            : Yanqing Wu <meet.yanqing.wu@gmail.com>
" Date              : 16.10.2019
" Last Modified Date: 17.01.2020
" Last Modified By  : Yanqing Wu <meet.yanqing.wu@gmail.com>
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

Plugin 'ycm-core/YouCompleteMe'

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-repeat'

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
"Run following in Vim
":source %
":PluginInstall
packloadall
silent! helptags ALL
" ---------------------------------------------------------------------

" ---------------------------------------------------------------------
" Add bried author info for `alpertuna/vim-header`
let g:header_field_author = 'Yanqing Wu'
let g:header_field_author_email = 'meet.yanqing.wu@gmail.com'
map <F4> :AddHeader<CR>

" YCM
let g:ycm_use_clangd = 0

" ---------------------------------------------------------------------

:set number " enable line number displaying.

" modify indent space, smartindent is depracated
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" remap ESC key to jj
inoremap jj <ESC>
let mapleader = "," " remap `leader` key to `,` 

" Indent 4 spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" de-tab (Vim built-in: ctrl-t for tab, ctrl-d for de-tab)
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

func! WordProcessorMode()
    setlocal formatoptions=t1
    setlocal textwidth=80
    map j gj
    map k gk
    " setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O 

" ---------------------------------------------------------------------
" Auto Fill Brackets:
func! AutoPair(open, close)
    let line = getline('.')
    if col('.') > strlen(line) || index([' ', ']', ')', '}'], line[col('.') - 1]) > 0
        return a:open . a:close . "\<ESC>i"
    else
        return a:open
    endif
endfunc
func! ClosePair(char)
    return (getline('.')[col('.') - 1] == a:char ? "\<Right>" : a:char)
endfunc
inoremap <expr> ( AutoPair('(', ')')
inoremap <expr> ) ClosePair(')')
inoremap <expr> [ AutoPair('[', ']')
inoremap <expr> ] ClosePair(']')
inoremap <expr> { AutoPair('{', '}')
inoremap <expr> } ClosePair('}')
" inoremap " ""<Left>
" inoremap ' ''<Left>
au Filetype mkd,tex,txt,lrc silent! iunmap '
au Filetype vim silent! iunmap "
au Filetype vim silent! iunmap ""
" ---------------------------------------------------------------------
"  turn on syntax coloring
syntax on
