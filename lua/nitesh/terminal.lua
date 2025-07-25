local Terminal = require("toggleterm.terminal").Terminal

-- Float Terminal (centered)
local float_term = Terminal:new({
    direction = "float",
    float_opts = {
        border = "rounded",
        winblend = 18,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    start_in_insert = true,
    close_on_exit = true,
    persist_size = true,
})

vim.keymap.set("n", "<leader>t", function()
    float_term:toggle()
end, { noremap = true, silent = true })

local vertical_term = Terminal:new({
    direction = "float",
    float_opts = {
        border = "rounded",
        width = term_width,
        height = term_height,
        row = 0,
        col = term_col,
        winblend = 20,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    start_in_insert = true,
    close_on_exit = true,
    persist_size = false,
})


-- Dynamic right-side vertical-like terminal
vim.keymap.set("n", "<leader>v", function()
    -- Recalculate position and size dynamically
    local width = 80
    local height = vim.o.lines - 4
    local col = vim.o.columns - (width + 3)

    vertical_term.float_opts.width = width
    vertical_term.float_opts.height = height
    vertical_term.float_opts.col = col
    vertical_term.float_opts.row = 0

    vertical_term:toggle()
end, { noremap = true, silent = true })

