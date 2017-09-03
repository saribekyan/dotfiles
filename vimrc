""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""" VUNDLE

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""
" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible " we want new vim features whenever they are available
set bs=2         " backspace should work as we expect it to
set autoindent
set history=100  " remember last 100 commands
set ruler        " show cursor position in the bottom line
set number       " show line numbers
syntax enable
set background=dark
colorscheme solarized

set whichwrap+=<,>,h,l,[,] "changle line with arrow keys

map <space> i <esc>r
 
" currently I prefer indent step 4 and spaces -- tabs are evil and should be avoided
set shiftwidth=4
set expandtab
set softtabstop=4

" text search settings
set incsearch  " show the first match already while I type
set ignorecase
set smartcase  " only be case-sensitive if I use uppercase in my query
set nohlsearch "highlight my search
" enough with the @@@s, show all you can if the last displayed line is too long
set display+=lastline
" show chars that cannot be displayed as <13> instead of ^M
set display+=uhex
" status line: we want it at all times -- white on blue, with ASCII code of the current letter


" <Tab> at the end of a word should attempt to complete it using tokens from the current file:
function! My_Tab_Completion()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
endfunction
inoremap <Tab> <C-R>=My_Tab_Completion()<CR>

