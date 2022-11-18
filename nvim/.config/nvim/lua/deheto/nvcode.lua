require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", 
  highlight = {
    enable = true,              
    disable = {},  
  },
}

vim.cmd([[
let g:nvcode_termcolors=256
syntax on
colorscheme nvcode 
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
]])

