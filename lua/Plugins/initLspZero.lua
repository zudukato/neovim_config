return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },                     -- Required
        { 'williamboman/mason.nvim' },                   -- Optional
        { 'williamboman/mason-lspconfig.nvim' },         -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },             -- Required
        { 'hrsh7th/cmp-nvim-lsp' },         -- Required
        { 'L3MON4D3/LuaSnip' },             -- Required
    },
    config = function()
        local lsp = require('lsp-zero').preset({})

        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
        end)

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
        lsp.setup()
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()

        cmp.setup({
            mapping = {
                ['<Tab>'] = cmp_action.luasnip_supertab(),
                ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
            }
        })
    end,
}
