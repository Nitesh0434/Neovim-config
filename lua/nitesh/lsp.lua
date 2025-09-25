local lspconfig = require("lspconfig")
local capabilities = require("nitesh.cmp") -- your custom cmp capabilities

-- Python
lspconfig.pyright.setup {
  capabilities = capabilities,
}

-- TypeScript / JavaScript
lspconfig.tsserver.setup {   -- not ts_ls
  capabilities = capabilities,
}

-- C / C++
lspconfig.clangd.setup {
  capabilities = capabilities,
}

-- HTML
lspconfig.html.setup {
  capabilities = capabilities,
}

-- CSS
lspconfig.cssls.setup {
  capabilities = capabilities,
}

-- JSON
lspconfig.jsonls.setup {
  capabilities = capabilities,
}

-- Emmet (optional but very useful)
lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  filetypes = { "html", "css", "javascriptreact", "typescriptreact" },
}

