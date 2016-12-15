"
" General Mappings (Normal, Visual, Operator-pending)
"

" Disable ex mode, ick, remap it to Q instead.
"
" Tip:
"   Use command-line-window with q:
"   Use search history with q/
"
" More info:
" http://blog.sanctum.geek.nz/vim-command-window/
nmap Q q

" Map Ctrl+V to paste in Insert mode
imap <C-V> <C-R>*

" Map Ctrl+C to copy in Visual mode
vmap <C-C> "+y

" Add paste shortcut
nmap <leader>P "+p

" Escape inset mode and write to file
imap jj <ESC>:w<CR>

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
nnoremap ,yw yiww

"Go to last edit location with ,.
noremap ,. '.

" Toggle hlsearch with <leader>hs
nmap <Leader>hs :set hlsearch! hlsearch?<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

" Fugitive mapping
nmap <leader>gb :Gblame<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gg :Ggrep
nmap <leader>gl :Glog<cr>
nmap <leader>gp :Git pull<cr>
nmap <leader>gP :Git push<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gw :Gbrowse<cr>
nmap <leader>g? :map <leader>g<cr>
