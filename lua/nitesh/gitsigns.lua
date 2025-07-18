local gs = require("gitsigns")

gs.setup()

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>Gs", gs.stage_hunk, { desc = "Git: Stage hunk" })
keymap("n", "<leader>Gu", gs.undo_stage_hunk, { desc = "Git: Undo stage hunk" })
keymap("n", "<leader>Gr", gs.reset_hunk, { desc = "Git: Reset hunk" })
keymap("n", "<leader>Gp", gs.preview_hunk, { desc = "Git: Preview hunk" })
keymap("n", "<leader>Gb", function() gs.blame_line({ full = true }) end, { desc = "Git: Blame line" })

