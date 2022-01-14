" .VIMRC vim Configuration
" Plugins will be downloaded under the specified directory.

" use the OS clipboard by default
set clipboard=unnamedplus

" enable syntax highlighting
"syntax on

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
set number relativenumber
set cursorline
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set title
set confirm
set cmdheight=2
