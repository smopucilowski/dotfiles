set enc=utf-8
set fileencoding=utf-8

set nocompatible  " enter the current millenium

set shiftwidth=4  " operation >> indents 4 cols, << unindents 4 cols
set tabstop=4     " a hard \t displays as 4 columns
set expandtab     " insert spaces when pressing tab
set softtabstop=4 " insert/delete 4 spaces when pressing tab/backspace
set shiftround    " round indent to multiples of shiftwidth
set autoindent    " align the new line indent with the previous line

set incsearch     " incremental searches as you type
set smartcase     " when searching, ignore case unless search contains upcas

set number        " line numbers in front of each line
set ruler         " some nice information in footer

set splitright    " open split planes to the right and bottom,
set splitbelow    " which feels more natural

nnoremap Q <nop>  " disable Ex mode

" Switch syntax highlighting on, when the terminal has colours
" Also switch on highlighting the last used search pattern
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    syntax on
endif

" Include custom vim configuration
if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
