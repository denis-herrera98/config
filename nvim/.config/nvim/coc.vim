if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set cmdheight=2
set shortmess+=c
  
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

