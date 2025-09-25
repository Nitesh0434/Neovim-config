-- ~/.config/nvim/lua/nitesh/colors.lua
require("colorizer").setup({
    "*",
    css = { rgb_fn = true, names = true },
    html = { names = true },
})

-- Auto attach to buffers when they are opened
vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
    pattern = {"*.css", "*.scss", "*.html"},
    callback = function()
        pcall(vim.cmd, "ColorizerAttachToBuffer")
    end
})
