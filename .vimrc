" Call dotvim
source ~/.vim/dotvim.vim

if has("user_commands")
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  let g:vundles=['general', 'git', 'programming', 'javascript', 'html', 'misc']
  " Load 'vundles'
  source ~/.vim/vundles.vim
  " Add extra bundles here...
  " Bundle 'reponame'
endif

" Customize to your needs...
" Highlight up to 255 columns (this is the current Vim max) beyond 'textwidth'
if has('autocmd')
  if exists('+colorcolumn')
    autocmd BufEnter,FocusGained,VimEnter,WinEnter * let &l:colorcolumn='+' . join(range(0, 254), ',+')
    autocmd FocusLost,WinLeave * let &l:colorcolumn=join(range(1, 255), ',')
  endif
endif

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif

" wrap long lines at characters in 'breakat'
if has('linebreak')
  set wrap
  set linebreak
  set textwidth=80
  let &showbreak='↳ '

  " emphasize broken lines by indenting them
  set breakindent
  if exists('&breakindentopt')
    set breakindentopt=shift:2
  endif
endif

" open horizontal splits below current window
if has('windows')
  set splitbelow
endif

" open vertical splits to the right of the current window
if has('vertsplit')
  set splitright
endif

