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
" ==============================================================================
" 05. Text Formatting/Layout=
" ==============================================================================
source ~/.vim/settings.vim
