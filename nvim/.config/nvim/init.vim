
source $HOME/.config/nvim/lets.vim
source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/maps.vim
source $HOME/.config/nvim/func.vim
source $HOME/.config/nvim/coc.vim

source $HOME/.config/nvim/themes/onedark.vim


"highlight Normal guibg=none
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_invert_selection='0'

"set termguicolors
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-tsserver',
            \ 'coc-prettier',
            \ 'coc-json',
            \ 'coc-eslint',
            \ ]
"ALE

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
endif

let g:LanguageClient_serverCommands = {
            \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
            \ }

"eslint.filetypes": ["javascript", "javascriptreact", "typescript", "typescriptreact"],
