" ==============================================================================
" 01. General                                                                  =
" ==============================================================================
set nocompatible " get rid of Vi compatibility mode.
set shortmess=atI " Don’t show the intro message when starting Vim
set history=1000 "Store lots of :cmdline history
set noswapfile
set nobackup
set nowb

" Change leader to a comma because the backslash is too far away. The mapleader
" has to be set before vundle starts loading all the plugins.
let mapleader=","

" ==============================================================================
" 02. Plugins                                                                  =
" ==============================================================================
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundle.vim"))
    source ~/.vim/vundle.vim
endif

" ==============================================================================
" 03. Theme/Colors=
" ==============================================================================
syntax on
set background=dark
colorscheme solarized

" ==============================================================================
" 04. Vim UI=
" ==============================================================================
set list lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set number " Enable line numbers
set showcmd " Show the (partial) command as it’s being typed
set showmode " Show the current mode
set title " Show the filename in the window titlebar
set visualbell " No sounds
set incsearch " Find the next match as we type the search
set hlsearch " Highlight searches by default
set ignorecase " Ignore case when searching...
set smartcase " ...unless we type a capital
"
"Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=8
set sidescroll=8

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Use relative line numbers
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif
" ==============================================================================
" 05. Text Formatting/Layout=
" ==============================================================================
set expandtab " use spaces instead of tabs
set shiftwidth=2 " indent/outdent 2 columns
set softtabstop=2 " unify
set autoindent " auto-indent
set smartindent " automatically inset one extra level of indentation
set backspace=indent,eol,start " Allow backspace in insert mode
set nowrap "don't wrap text

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

source ~/.vim/settings.vim
