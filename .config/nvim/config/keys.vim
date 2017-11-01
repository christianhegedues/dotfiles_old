let mapleader = ","

" =============================================================================
" Funcion keys
" =============================================================================

" <F2> toggles paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Don't use Ex mode, use Q for formatting
map Q gq

" =============================================================================
" Window keys
" =============================================================================

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" =============================================================================
" Search keys
" =============================================================================

nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz

" ,k to get the next location (compilation errors, grep etc)
nmap <leader>k :cn<CR>
nmap <leader>j :cp<CR>

" =============================================================================
" CtrlP
" =============================================================================

nnoremap <Leader>n :CtrlP<CR>
nnoremap <Leader>m :CtrlPMRUFiles<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
