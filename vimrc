" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-scripts/marvim'
" " all of your plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" line enables syntax highlighting by default.
if has("syntax")
        syntax on
endif

set background=dark

" uncomment the following to have vim jump to the last position when
" reopening a file
if has("autocmd")
        au bufreadpost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"if has("autocmd")
"  filetype plugin indent on
"endif

"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set cursorline
set number
set relativenumber
set backspace=indent,eol,start

set smarttab
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set wildmenu
set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
inoremap kj <esc>
inoremap jk <esc>

set clipboard=unnamed
set clipboard=unnamedplus

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

colorscheme spring-night


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
        source /etc/vim/vimrc.local
endif

