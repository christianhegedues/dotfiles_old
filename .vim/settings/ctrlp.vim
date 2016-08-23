nmap <Leader>f :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>

augroup ctrlp_config
    autocmd!
    let g:ctrlp_clear_cache_on_exit=0 " Do not clear filenames cache, to improve CtrlP startup
    let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'
    let g:ctrlp_lazy_update=350 " Set delay to prevent extra search
    let g:ctrlp_match_window_bottom=1 " Show at top of window
    let g:ctrlp_max_depth=6 " Directory depth to recurse into when scanning
    let g:ctrlp_max_files=600 " Set no file limit, we are building a big project
    let g:ctrlp_show_hidden=1 " Ignore dotfiles and dotdirs or not
    let g:ctrlp_switch_buffer='Et' " Jump to tab AND buffer if already open
    let g:ctrlp_open_new_file='r' " Open newly created files in the current window
    let g:ctrlp_open_multiple_files='ij' " Open multiple files in hidden buffers, and jump to the first one
augroup END
