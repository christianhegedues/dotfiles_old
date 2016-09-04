" ==============================================================================
" 01. General                                                                  =
" ==============================================================================
set nocompatible " get rid of Vi compatibility mode.
set shortmess=atI " Don’t show the intro message when starting Vim
set history=1000 "Store lots of :cmdline history

"
" Setup folder structure
"

if !isdirectory(expand('~/.vim/undo/', 1))
    silent call mkdir(expand('~/.vim/undo', 1), 'p')
endif

if !isdirectory(expand('~/.vim/backup/', 1))
    silent call mkdir(expand('~/.vim/backup', 1), 'p')
endif

if !isdirectory(expand('~/.vim/swap/', 1))
    silent call mkdir(expand('~/.vim/swap', 1), 'p')
endif

" Change leader to a comma because the backslash is too far away. The mapleader
" has to be set before vundle starts loading all the plugins.
let mapleader=","

"
" Gobal settings
"

" Use smarter defaults
set smartindent
set smarttab
"
" Use autoindenting
set autoindent

" " The tabstop look best at 4 spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4

" I have been converted to the dark side, I will use spaces to indent code
" from here on out
set expandtab

" Turn on persistent undo
" Thanks, Mr Wadsten: github.com/mikewadsten/dotfiles/
if has('persistent_undo')
    set undodir=~/.vim/undo//
    set undofile
    set undolevels=1000
    set undoreload=10000
endif

" Use backups
" http://stackoverflow.com/a/15317146
set backup
set writebackup
set backupdir=~/.vim/backup//

" Use a specified swap folder
" http://stackoverflow.com/a/15317146
set directory=~/.vim/swap//

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
"  ==============================================================================

" Highlight only the lines that go past 80 characters
highlight ColorColumn ctermbg=green guibg=green
call matchadd('ColorColumn', '\%82v', 100)

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
set backspace=indent,eol,start " Allow backspace in insert mode
set nowrap "don't wrap text

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

source ~/.vim/settings.vim
