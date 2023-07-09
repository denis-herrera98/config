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
--
-- CMP
use 'neovim/nvim-lspconfig'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lua'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'jose-elias-alvarez/null-ls.nvim'

use 'mbbill/undotree'
use 'tpope/vim-fugitive'
use 'vim-utils/vim-man'

use 'nvim-lua/popup.nvim'
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
--

use 'kyazdani42/nvim-web-devicons'
use 'glepnir/galaxyline.nvim'

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

use {
    "christoomey/vim-tmux-navigator",
    lazy = false,
}

---- ESTE ES EL DE GIT
---- ESPACIO + U
---- use 'puremourning/vimspector'
--use 'szw/vim-maximizer'
--use 'stsewd/fzf-checkout.vim'
--use 'vuciv/vim-bujo'
---- use 'folke/tokyonight.nvim', { 'branch': 'main' }
--use 'sheerun/vim-polyglot'
--use 'scrooloose/nerdcommenter'
--use 'nvim-lua/plenary.nvim'
--
---- THEMES
--
--use 'gruvbox-community/gruvbox'
--use 'sainnhe/gruvbox-material'

-- use 'OmniSharp/omnisharp-vim'
if packer_bootstrap then
    require('packer').sync()
end

end)


