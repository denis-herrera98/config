call plug#begin('~/.vim/plugged')

"REACT SNIPPETS
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'


"EMMET
Plug 'mattn/emmet-vim'

Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

"Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc-solargraph'

"ESPACIO + s
Plug 'easymotion/vim-easymotion'

"ESTE ES EL DE GIT
Plug 'tpope/vim-fugitive'

Plug 'vim-utils/vim-man'

"ESPACIO + U
Plug 'mbbill/undotree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'dense-analysis/ale'"
"Plug 'w0rp/ale'


"
"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
Plug 'scrooloose/nerdtree'

"THEMES

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
"Plug 'itchyny/lightline.vim'
Plug 'norcalli/nvim-colorizer.lua'

" LEANGUAGE SERVER PROTOCOL
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ }

call plug#end()

