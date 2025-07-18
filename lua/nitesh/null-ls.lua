local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    -- Formatters
    null_ls.builtins.formatting.black,    -- Python formatter
    -- Linters
    null_ls.builtins.diagnostics.flake8,  -- Python linter
    -- add other sources here
  },

  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      -- Format on save (optional)
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

