local Terminal = require("toggleterm.terminal").Terminal

-- Float terminal
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

-- Simulated vertical terminal using float, positioned near right-middle
local vertical_term = Terminal:new({
    direction = "float",
    float_opts = {
        border = "rounded",
        width = 80,  -- Adjust width here
        height = vim.o.lines - 4, -- Almost full height
        row = 0,  -- Vertical offset from top
        col = vim.o.columns - 83,-- Shift it away from right edge (adjust 100 to your liking)
        winblend = 20;
        highlights = {
            border = "Normal",
            background = "Normal",
        },


    },
    start_in_insert = true,
    close_on_exit = true,
    persist_size = false,
})

-- Keymaps
vim.keymap.set("n", "<leader>t", function()
  float_term:toggle()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>v", function()
  vertical_term:toggle()
end, { noremap = true, silent = true })
