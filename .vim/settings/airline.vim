augroup airline_config
  autocmd!
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline#extensions#bufferline#enabled=0
  let g:airline#extensions#tabline#enabled=0
  let g:airline_mode_map = {
        \ '__' : '-',
        \ 'n'  : 'N',
        \ 'i'  : 'I',
        \ 'R'  : 'R',
        \ 'c'  : 'C',
        \ 'v'  : 'V',
        \ 'V'  : 'V',
        \ '' : 'V',
        \ 's'  : 'S',
        \ 'S'  : 'S'
        \ }
augroup END
