" nerdtree
" Ctrl-F4 to Display the file browser tree
nmap <F4> :NERDTreeTabsToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

let g:NERDTreeWinSize=30
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

