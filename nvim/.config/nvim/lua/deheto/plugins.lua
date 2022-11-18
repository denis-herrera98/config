local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)

use 'christianchiarulli/nvcode-color-schemes.vim'
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
use 'scrooloose/nerdtree'
use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

use 'mfussenegger/nvim-dap'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
-- CMP
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'

--
---- ESTE ES EL DE GIT
--use 'tpope/vim-fugitive'
--use 'vim-utils/vim-man'
---- ESPACIO + U
--use 'mbbill/undotree'
---- use 'puremourning/vimspector'
--use 'szw/vim-maximizer'
--use 'stsewd/fzf-checkout.vim'
--use 'vuciv/vim-bujo'
---- use 'folke/tokyonight.nvim', { 'branch': 'main' }
--use 'sheerun/vim-polyglot'
--use 'scrooloose/nerdcommenter'
--use 'nvim-lua/plenary.nvim'
---- use 'nvim-treesitter/nvim-treesitter'
--
---- THEMES
--
--use 'vim-airline/vim-airline'
--use 'vim-airline/vim-airline-themes'
--use 'gruvbox-community/gruvbox'
--use 'sainnhe/gruvbox-material'

-- use 'OmniSharp/omnisharp-vim'
if packer_bootstrap then
    require('packer').sync()
end

end)


