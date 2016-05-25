" ==============================================================================
" 01. General                                                                  =
" ==============================================================================
set nocompatible " get rid of Vi compatibility mode.

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
source ~/.vim/settings.vim
