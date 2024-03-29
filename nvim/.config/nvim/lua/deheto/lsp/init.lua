local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set('n', '<C-k>', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<space>wa', function() vim.lsp.buf.add_workspace_folder() end, opts)
    vim.keymap.set('n', '<space>wr', function() vim.lsp.buf.remove_workspace_folder() end, opts)
    vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
    vim.keymap.set('n', '<space>D', function() vim.lsp.buf.type_definition() end, opts)
    vim.keymap.set('n', '<space>rn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<space>ca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', '<space>e', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '[d', function() vim.lsp.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', ']d', function() vim.lsp.diagnostic.goto_next() end, opts)
end)

vim.diagnostic.config({
    virtual_text = true
})

lsp.setup()
