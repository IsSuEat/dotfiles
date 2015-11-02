set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()                       " required


syntax on
filetype plugin on
filetype indent on
colorscheme  molokai

set ttyfast                             " don't lag…
set nowrap                              " don't wrap lines
set splitbelow                          " place new files below the current
set showmatch                           " matching brackets & the like
set clipboard+=unnamed                  " yank and copy to X clipboard
set encoding=utf-8                      " UTF-8 encoding for all new files
set backspace=2                         " full backspacing capabilities (indent,eol,start)
set scrolloff=10                        " keep 10 lines of context
set number                              " show line numbers
set linebreak                           " attempt to wrap lines cleanly
set wildmenu                            " enhanced tab-completion shows all matching cmds in a popup menu
set spelllang=en_US                     " English spelling
set dictionary+=/usr/share/dict/words   " use standard dictionary
set wildmode=list:longest,full          " full completion options
let g:is_posix=1                        " POSIX shell scripts

" tabs and indenting
set tabstop=4                           " tabs appear as n number of columns
set shiftwidth=4                        " n cols for auto-indenting
set expandtab                           " spaces instead of tabs
set autoindent                          " auto indents next new line

" searching
set hlsearch                            " highlight all search results
set incsearch                           " increment search
set ignorecase                          " case-insensitive search

" status bar info and appearance
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set laststatus=2
set cmdheight=1

:nnoremap j jzz
:nnoremap k kzz

" Allows writing to files with root priviledges
cmap w!! w !sudo tee % > /dev/null
