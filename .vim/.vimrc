" Load Pathogen first
execute pathogen#infect()

" Basic Settings

set nocompatible    "sanely reset options when re-sourcing .vimrc
filetype plugin indent on
set encoding=utf-8
set shell=/bin/zsh
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
" set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " Use case insensitive search
set smartcase       " except when using capital letters
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action
set laststatus=2    " Always display the status line, even if only 1 window is displayed
set confirm         " Instead of failing a command because of unsaved changes, instead raise a dialogue asking if you wish to save changed files.
set visualbell      " Use visual bell instead of beeping when doing something wrong


" Appearance

syntax enable
set background=dark
colorscheme solarized

" Custom Settings

inoremap jk <ESC>
let mapleader = "\<Space>"
