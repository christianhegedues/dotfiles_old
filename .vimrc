set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" GIT Related
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

" activate filetype detection now that plugins are loaded
filetype plugin on

" =============================================================================
" AUTOCMDs
" =============================================================================

autocmd BufWritePre * :%s/\s\+$//e

" =============================================================================
" PLUGIN SETTINGS
" =============================================================================

" GITGUTTER
let g:gitgutter_sign_added              = '•'
let g:gitgutter_sign_modified           = '•'
let g:gitgutter_sign_removed            = '•'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed   = '•'
let g:gitgutter_override_sign_column_highlight = 1

" YOUCOMPLETEME
let g:ycm_autoclose_preview_window_after_completion = 1

" =============================================================================
" MAPPINGS
" =============================================================================

let mapleader = ','

" use jj to quickly escape to normal mode while typing <- AWESOME tip
inoremap jj <ESC>

" insert newline without entering insert mode
map <CR> o<Esc>k
" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" center display after searching
noremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z

" easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Type <F1> follwed by a buffer number or name fragment to jump to it.
" Also replaces the annoying help button. Based on tip 821.
map <F1> :ls<CR>:b<Space>
map <F7> :setlocal spell! spell?<CR>

" =============================================================================
" CODE RELATED
" =============================================================================

noremap <silent> <Leader>cc :TComment<CR>

" =============================================================================
" FILE RELATED
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

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/
" ,k to get the next location (compilation errors, grep etc)
nmap <leader>k :cn<CR>
" ,j to get the previous location (compilation errors, grep etc)
nmap <leader>j :cp<CR>

nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>fm :CtrlPMRU<CR>

" =============================================================================
" BUFFER RELATED
" =============================================================================

nnoremap <silent> <Leader>b :Buffers<CR>      " cycle between buffer
nnoremap <silent> <Leader>bd :bdelete<CR>         " (D)elete the current buffer
nnoremap <silent> <Leader>bu :bunload<CR>         " (U)nload the current buffer
nnoremap <silent> <Leader>bl :b#<CR>              " (L)ast buffer

" =============================================================================
" GIT RELATED
" =============================================================================

set diffopt+=vertical
nmap <Leader>gn <Plug>GitGutterNextHunk
nmap <Leader>gp <Plug>GitGutterPrevHunk

" =============================================================================
" APPEARANCE
" =============================================================================

set viminfo=""
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set list listchars=tab:→\ ,space:·,trail:·
set completeopt=menuone,preview

set hlsearch            " Highlight search match
set incsearch           " Incremental search
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

set autoindent          " automatically indent new line
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" Check, if backup directory excists and create it
if !isdirectory($HOME.'/.vim/backup')
  call mkdir($HOME.'/.vim/backup', 'p')
endif

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set undodir=~/.vim/backup/

" =============================================================================
" COLORS
" =============================================================================

syntax enable            " Enable syntax highlighting
set t_ZH=[3m           " Fix to print italic comments
set t_ZR=[23m          " Fix to print italic comments

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_bold': 1,
  \       'allow_italic': 1
  \     }
  \   }
  \ }

set termguicolors        " Enable true color
set background=light     " Use the light colorscheme
colorscheme PaperColor   " Set PaperColor as colorscheme
