
--keymaps
vim.g.mapleader = " " -- assiging space to space 
vim.keymap.set("n","<C-s>",":w<CR>",{ noremap = true, silent = true}) -- save whatever you write

vim.keymap.set("n","<C-q>",":wq<CR>",{noremap = true, silent = true}) -- save and exit 

vim.keymap.set("n", "<leader>c", ":bd<CR>", { noremap = true, silent = true }) -- close the current buffer
vim.keymap.set("i", "jj", "<Esc>", { noremap = true }) -- escape the insert mode
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true, silent = true }) -- remove yellow highlighted color when you search something
vim.keymap.set({"v","i"}, "<Del>", '"_d', { noremap = true, silent = true })


vim.keymap.set("n", "<C-n>", function()
  local cur_win = vim.api.nvim_get_current_win()
  vim.cmd("wincmd h")  -- Try to go left
  if vim.api.nvim_get_current_win() == cur_win then
    vim.cmd("wincmd l")  -- If already on left, go right
  end
end, { noremap = true, silent = true , nowait =true})




--plugins

vim.keymap.set("n","<leader>e",":NvimTreeToggle<CR>",{ noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>", { noremap = true, silent = true })

--lsp

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })

--prettier format/linter
vim.keymap.set("n", "<leader>j", function()
  vim.lsp.buf.format({ async = true })
end, { noremap = true, silent = true, desc = "Format current buffer" })

--python formatter

vim.api.nvim_set_keymap(
  "n",
  "<leader>t",
  ":w<CR>:!black %<CR>",
  { noremap = true, silent = true }
)

-- Keymap to run ESLint on current file using your config
vim.api.nvim_set_keymap(
  "n",
  "<leader>s",
  ":!eslint --config ~/.config/nvim/lua/linter/eslint.config.js %<CR>",
  { noremap = true, silent = true }
)

-- keymap for python/linter

vim.api.nvim_set_keymap(
  "n",
  "<leader>m",
  ":!flake8 %<CR>",
  { noremap = true, silent = true }
)






