" Load Pathogen first
execute pathogen#infect()

" Basic Settings

filetype plugin indent on
set encoding=utf-8
set shell=/bin/zsh
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers
set showcmd         " show command in bottom bar
" set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" Appearance

syntax enable
set background=dark
colorscheme solarized

" Custom Settings

inoremap jk <ESC>
let mapleader = "\<Space>"