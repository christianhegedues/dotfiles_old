set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \ }

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:25'

" Directories to ignore
set wildignore+=*/smarty_c/**
set wildignore+=*/vendor/**
set wildignore+=*/bower_components/**
set wildignore+=*/node_modules/**
set wildignore+=*/dist/**

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0

