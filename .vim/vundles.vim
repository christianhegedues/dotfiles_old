" Vundle itself
Bundle 'gmarik/vundle'

" General
if count(g:vundles, 'general')
  Bundle 'scrooloose/nerdtree'
  Bundle 'chriskempson/base16-vim'
  Bundle 'YankRing.vim'
  let g:yankring_history_dir = $HOME.'/.vim/'
  let g:yankring_history_file = '.yankring_history'
  Bundle 'kien/ctrlp.vim'
  Bundle 'jistr/vim-nerdtree-tabs'
  Bundle 'sudo.vim'
  Bundle 'bronson/vim-trailing-whitespace'
  Bundle 'mbbill/undotree'
  Bundle 'Raimondi/delimitMate'
  Bundle 'bling/vim-airline'
  Bundle 'vim-airline/vim-airline-themes'
  Bundle 'mikewest/vimroom'
  Bundle 'tpope/vim-surround'
endif

if count(g:vundles, 'git')
  if executable('git')
    Bundle "gregsexton/gitv"
    Bundle 'tpope/vim-fugitive'
    Bundle 'airblade/vim-gitgutter'
  endif
endif

" General Programming
if count(g:vundles, 'programming')
  Bundle 'godlygeek/tabular'
  if v:version > 700
    " Bundle 'scrooloose/syntastic'
    if executable('ctags')
      Bundle 'majutsushi/tagbar'
    endif
  endif
endif

" Javascript
if count(g:vundles, 'javascript')
  Bundle 'elzr/vim-json'
  Bundle 'groenewege/vim-less'
  Bundle 'taxilian/vim-web-indent'
endif

" HTML
if count(g:vundles, 'html')
  Bundle 'othree/html5.vim'
  Bundle 'HTML-AutoCloseTag'
  Bundle 'juvenn/mustache.vim'
endif

" Misc
if count(g:vundles, 'misc')
  Bundle 'tpope/vim-markdown'
  Bundle 'JamshedVesuna/vim-markdown-preview'
  Bundle 'spf13/vim-preview'
  Bundle 'tpope/vim-cucumber'
endif

