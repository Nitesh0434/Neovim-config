-- In your keymaps or plugin config
require("which-key").register({
  G = {
    name = "+Git", -- This shows a group under <leader>G
    s = "Stage hunk",
    u = "Undo stage hunk",
    r = "Reset hunk",
    p = "Preview hunk",
    b = "Blame line",
  },
}, { prefix = "<leader>" })
