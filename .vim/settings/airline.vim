augroup airline_config
  autocmd!
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline#extensions#tabline#buffer_nr_show=0
  let g:airline#extensions#tabline#enabled=1
  let g:airline#extensions#tabline#fnamecollapse=0
  let g:airline#extensions#tabline#fnamemod=':t'
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
