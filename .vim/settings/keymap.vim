""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Escape inset mode and write to file
imap jj <ESC>:w<CR>

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
nnoremap ,yw yiww

"Go to last edit location with ,.
noremap ,. '.

"Move back and forth through previous and next buffers
""with ,z and ,x
nnoremap <silent> <S-Tab> :bp<CR>
nnoremap <silent> <Tab> :bn<CR>

" Toggle hlsearch with <leader>hs
nmap <Leader>hs :set hlsearch! hlsearch?<CR>

""
"" Plugin Mappings
""

" CtrlP
nmap <Leader>o :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>

" NERDTree
nmap <F1> :NERDTreeToggle<CR>

" Emmet
imap <Tab> <C-y>,
