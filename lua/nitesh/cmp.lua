local cmp = require('cmp')
local luasnip = require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()


cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)  -- For `luasnip` users.
        end,
    },

    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' },
            { name = 'cmdline' }
        })
    }),

    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.complete(),  -- trigger completion
        ['<C-e>'] = cmp.mapping.abort(),         -- abort completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- confirm selection
        -- arrow keys navigation handled by default
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
            { name = 'buffer' },
        })
})

-- Setup capabilities for LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities()

return capabilities

