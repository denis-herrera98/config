vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Leader>p', "'_dP", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>u', ':UndotreeShow<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ps', ':Rg<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':GFiles<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>wx', ':bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>j', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>k', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>l', ':wincmd l<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('v', 'X', "'_d", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'X', "'_d", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<', "<gv", { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<Leader>df', ':source ~/.config/nvim/init.vim<CR>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>nt', ':NERDTreeFind<CR>', { noremap = false, silent = true })

-- Console log from visual mode on next line, puts visual selection inside parentheses
-- vmap cll yocll<Esc>p
-- Console log from normal mode, inserted on next line with word your on inside parentheses
-- nmap cll yiwocll<Esc>p

-- nmap <leader>s <Plug>(easymotion-s2)
-- vim TODO



-- nmap <leader>gl :diffget //3<CR>
-- nmap <leader>gh :diffget //2<CR>
-- nmap <leader>gs :G<CR>

-- Console log from insert mode; Puts focus inside parentheses
-- imap cll console.log();<Esc>==f(a
-- Console log from visual mode on next line, puts visual selection inside parentheses
-- vmap cll yocll<Esc>p
-- nmap cll yiwocll<Esc>p


-- nnoremap <leader>pf <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>

-- Debugger remaps
-- nnoremap <leader>mx :MaximizerToggle!<CR>
-- nnoremap <leader>dd :call vimspector#Launch()<CR>
-- nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
-- nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
-- nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
-- nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
-- nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
-- nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
-- nnoremap <leader>de :call vimspector#Reset()<CR>

-- nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>
-- nmap <leader>dl <Plug>VimspectorStepInto
-- nmap <leader>dj <Plug>VimspectorStepOver
-- nmap <leader>dk <Plug>VimspectorStepOut
-- nmap <leader>d_ <Plug>VimspectorRestart
-- nnoremap <leader>d<space> :call vimspector#Continue()<CR>
-- nmap <leader>drc <Plug>VimspectorRunToCursor
-- nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
-- nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
