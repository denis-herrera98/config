require("bufferline").setup{}

function ColorMyPencils(color) 
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

vim.opt.termguicolors = true

vim.g.airline_theme = 'catppuccin'

