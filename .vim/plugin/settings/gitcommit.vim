if has("autocmd")
  " seems broken, not sure if config or vim!
  autocmd BufNewFile,BufRead *.git/modules/*/COMMIT_EDITMSG setf gitcommit
endif

