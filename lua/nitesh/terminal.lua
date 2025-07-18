require("toggleterm").setup{

    open_mapping = [[<leader>t]],
    direction = "float",
    float_opts = {
        border = "rounded", -- "single", "double", "shadow", or "curved" also work
        winblend = 20,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    start_in_insert = true,
    close_on_exit = true,
    persist_size = true,
}

