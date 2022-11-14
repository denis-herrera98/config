
source $HOME/.config/nvim/lets.vim
source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/func.vim
  
" source $HOME/.config/nvim/coc.vim
" source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/themes/airline.vim


highlight Normal guibg=none
set termguicolors
colorscheme gruvbox-material

if exists('+termguicolors')
    let &t_8f = '\<Esc>[38;2;%lu;%lu;%lum'
    let &t_8b = '\<Esc>[48;2;%lu;%lu;%lum'
endif

lua require('deheto/_telescope')
lua require('deheto/_lsp')

" let g:coc_global_extensions = [
"             \ 'coc-snippets',
"             \ 'coc-pairs',
"             \ 'coc-tsserver',
"             \ 'coc-prettier',
"             \ 'coc-json',
"             \ 'coc-eslint',
"             \ ]
" "ALE
" 
" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"     let g:coc_global_extensions += ['coc-prettier']
" endif
" 
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"     let g:coc_global_extensions += ['coc-eslint']
" endif
" 
" 
" colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_invert_selection='0'
