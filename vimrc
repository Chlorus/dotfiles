execute pathogen#infect()
set history=700

filetype plugin on
filetype indent on

set autoread
let mapleader = ","
let g:mapleader = ","
set nocompatible

nmap <leader>w :w!<cr>

set wildmenu
set wildignore=*.o,*~,*.pyc
set ruler

set cmdheight=2

set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase

set smartcase

set hlsearch

set incsearch

set lazyredraw

set magic

set showmatch

set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=50

syntax enable
set t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
"
" " Use Unix as the standard file type
set ffs=unix,dos,mac
"

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
function! HasPaste()
        if &paste
                    return 'PASTE MODE  '
                        en
                            return ''
                        endfunction
