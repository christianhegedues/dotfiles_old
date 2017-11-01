syntax on
syntax enable
filetype plugin indent on

" =============================================================================
" File settings
" =============================================================================

set hidden
set fileformats=unix,dos,mac
set backspace=indent,eol,start
set history=1000

" When editing a file, always jump to the last known cursor position.
" Don't do it when the mark is in the first line, that is the default
" position when opening a file.
if has("autocmd")
   autocmd BufReadPost *
   \ if line("'\"") > 1 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif
endif

" =============================================================================
" Directory settings
" =============================================================================

set nobackup
set noswapfile

if has("persistent_undo")
  let s:vim_cache = expand("$HOME/.config/nvim/backup")

  if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0700)
  endif

  set backupdir=~/.config/nvim/backup/
  set directory=~/.config/nvim/backup/

  set undofile
  set undodir=~/.config/nvim/backup/
  set undolevels=100
  set undoreload=1000
endif

" =============================================================================
" UI settings
" =============================================================================

set number
set ruler
set showcmd
set showmatch
set nowrap
set laststatus=2
set showtabline=0
set list listchars=tab:➽\ ,trail:·,space:·
set ttimeout
set ttimeoutlen=100
set scrolloff=5

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
  hi LineNr ctermfg=DarkGrey ctermbg=NONE
endif

" =============================================================================
" Indent settings
" =============================================================================

set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

" =============================================================================
" Search settings
" =============================================================================

set incsearch
set hlsearch
set ignorecase
set smartcase

