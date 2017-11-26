if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " Appearance
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tomasiser/vim-code-dark'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'godlygeek/tabular'

  " Programming
  Plug 'Shougo/deoplete.nvim'
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/echodoc.vim'
  Plug 'carlitux/deoplete-ternjs'
  Plug 'majutsushi/tagbar'
  Plug 'ternjs/tern_for_vim'
  Plug 'w0rp/ale'

  if executable('git')
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  endif

  " JavaScript
  Plug 'pangloss/vim-javascript'
  Plug 'elzr/vim-json'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'mhartington/nvim-typescript'
  Plug 'HerringtonDarkholme/yats.vim'

  " HTML/CSS
  Plug 'othree/html5.vim'
  Plug 'mattn/emmet-vim'

call plug#end()
