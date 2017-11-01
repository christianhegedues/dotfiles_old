" =============================================================================
" Airline
" =============================================================================

let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts     = 1
let g:airline_enable_fugitive     = 1
let g:airline_left_sep            = ""
let g:airline_right_sep           = ""
let g:airline_section_y           = ""
let g:airline_section_z           = ""
let g:airline_mode_map            = {
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

" =============================================================================
" Deoplete
" =============================================================================

let g:deoplete#enable_at_startup    = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs  = 1

inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" =============================================================================
" NeoSnippet
" =============================================================================

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" =============================================================================
" Ale
" =============================================================================

let g:ale_sign_error           = '❌'
let g:ale_sign_warning         = '--'
let g:ale_set_highlights       = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter        = 0

highlight link ALEErrorSign LineNr
highlight link ALEWarningSign LineNr

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'typescript': ['tslint']
\}

" =============================================================================
" GitGutter
" =============================================================================

nmap <Leader>hn <Plug>GitGutterNextHunk
nmap <Leader>hm <Plug>GitGutterPrevHunk

let g:gitgutter_sign_added              = '•'
let g:gitgutter_sign_modified           = '•'
let g:gitgutter_sign_removed            = '•'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed   = '•'

hi GitGutterAdd ctermfg=Green ctermbg=NONE
hi GitGutterChange ctermfg=Yellow ctermbg=NONE
hi GitGutterDelete ctermfg=Red ctermbg=NONE

" =============================================================================
" VimJavaScript
" =============================================================================

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" =============================================================================
" NVIM-Typescript
" =============================================================================

let g:nvim_typescript#type_info_on_hold = 1
