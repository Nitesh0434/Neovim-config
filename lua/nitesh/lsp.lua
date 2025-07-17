local lspconfig = require('lspconfig')
local capabilities = require('nitesh.cmp')  -- get capabilities from cmp.lua

lspconfig.pyright.setup{
  capabilities = capabilities,
}

lspconfig.ts_ls.setup{
  capabilities = capabilities,
}

lspconfig.clangd.setup{
  capabilities = capabilities,
}

