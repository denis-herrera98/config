
" let g:airline#extensions#ale#enabled = 1
let mapleader = " "
let loaded_matchparen = 1
let dart_html_in_string=v:true
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let g:dart_format_on_save = 1
let g:lsc_auto_map = v:true
let g:lsc_dart_sdk_path = '/home/denisherrera/dart-sdk'
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let $FZF_DEFAULT_OPTS='--reverse'
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
" EMMET
" let g:user_emmet_mode='n'    "only enable normal mode functions.

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='base16'

" let g:python_highlight_all = 1
"
autocmd FileType scss setl iskeyword+=@-@
