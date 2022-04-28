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

"
"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
"THEMES

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'

" Plug 'vim-python/python-syntax'

call plug#end()

