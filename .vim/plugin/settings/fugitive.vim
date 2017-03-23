" Fugitive
if exists("g:fugitive_loaded")
  " ,e for Ggrep
  nmap <leader>g :silent Ggrep
  " ,f for global git search for word under the cursor (with highlight)
  nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

  " same in visual mode
  :vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>
endif

