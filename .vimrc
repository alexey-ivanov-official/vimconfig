" download vundle plugin manager
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible                  " be iMproved, required
filetype off                      " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()               " alternatively, pass a path where Vundle should install plugins call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
call vundle#end()                 " required
filetype plugin indent on         " required

" install colorschemes plugin
Plugin 'flazz/vim-colorschemes'

" then use :PluginInstall command to install plugins
set mouse=a   " enable mouse support
set mousehide " hide mouse when write
set showmatch " show matched brackets
set t_Co=256  " enable 256 colors

" status bar string
set statusline=%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}\]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
hi StatusLine gui=reverse cterm=reverse
set laststatus=2

" highlight tabs and spaces at the end of line 
set list                           " enable highlight
set listchars=tab:>-,trail:-       " configure highlight symbols
au BufWinLeave *.* silent mkview   " save view on exit
au BufWinEnter *.* silent loadview " restore view on open
set expandtab                      " replace tab with spaces
syntax on                          " enable syntax highlighting

set novisualbell " don't blink
set t_vb=        " disable sounds
set backspace=indent,eol,start whichwrap+=<,>,[,] " setup BaskSpace behavior

set wrap          " enable word wrap
set linebreak     " wrap whole word
set noswapfile    " disable swap file
set ruler         " enable ruler
set autoindent
set shiftwidth=4
set tabstop=4     " tab size
set softtabstop=4 " tab size
set showtabline=1

set clipboard=unnamed " use system default clipboard

set number " show line numbers

colorscheme OceanicNext
