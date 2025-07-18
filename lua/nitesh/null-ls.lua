local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- FORMATTERS
    null_ls.builtins.formatting.stylua,     -- for Lua
    null_ls.builtins.formatting.prettier,   -- JS, TS, HTML, CSS, etc.
    null_ls.builtins.formatting.black,      -- Python

    -- LINTERS
    null_ls.builtins.diagnostics.eslint,    -- JS/TS
    null_ls.builtins.diagnostics.flake8,    -- Python
  },
})

