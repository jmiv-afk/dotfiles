" .VIMRC vim Configuration
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
" We recommend updating the parsers on update

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" for Vundle:
"set nocompatible              " be iMproved, required
"filetype off                  " required
"
"call plug#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'universal-ctags/ctags'
"Plugin 'majutsushi/tagbar'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"
"if has('nvim')
"  Plugin 'iamcco/markdown-preview.nvim'
"endif
"
"" All of your Plugins must be added before the following line
"call plug#end()            " required
"filetype plugin on           " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 
" 

" use the OS clipboard by default
set clipboard=unnamedplus

" enable syntax highlighting
syntax on

nmap <F8> :TagbarToggle<CR>
if has('mouse')
  set mouse=a
endif
set guicursor=
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set incsearch
"set hlsearch
set background=dark
set encoding=utf-8
set wildmenu
set showmatch
set number
set cursorline
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set title
set confirm
set cmdheight=2
