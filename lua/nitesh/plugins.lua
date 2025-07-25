--plugins


vim.g.VM_maps = {
  ["Add Cursor Down"] = "<C-Down>",
  ["Add Cursor Up"] = "<C-Up>",
}
  
vim.g.VM_set_statusline = 0 -- Do not mess with your statusline
vim.g.VM_show_warnings = 0  -- Suppress visual-multi warnings
vim.g.VM_default_mappings = 0

-- Load paq
require "paq" {
    "savq/paq-nvim"; -- Let Paq manage itself

    -- Add your plugins here, for example:
    "folke/tokyonight.nvim";  -- Colorscheme
    "kylechui/nvim-surround";  -- Surround text objects
    "nvim-lua/plenary.nvim";   -- Lua functions (used by many plugins)
    "tpope/vim-commentary"; -- visual select the line and press gc or in normal mode press gcc to uncomment/comment
    "tpope/vim-repeat";  --makes your edit repeatable using (.)
    "justinmk/vim-sneak"; -- jumps anywhere on the screen with just two characters
    "nvim-tree/nvim-tree.lua";         -- file explorer
    "nvim-tree/nvim-web-devicons";     -- optional icons (for better look)
    "nvim-telescope/telescope.nvim";  -- fuzzy finder finds the files
    "neovim/nvim-lspconfig";     -- Core LSP support
    "nvim-lualine/lualine.nvim";  -- statusline plugin
    "nvim-tree/nvim-web-devicons"; -- for nice icons in lualine
    "rafamadriz/friendly-snippets";  -- thousands of snippets in VSCode format
    --startup ui
    "goolord/alpha-nvim";
    
    "nvimtools/none-ls.nvim"; -- formatter /linter
    "akinsho/nvim-toggleterm.lua"; -- terminal


    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        run = function() vim.cmd("TSUpdate") end
    };

    --Auto completion
    -- completion engine
    -- 
    "hrsh7th/nvim-cmp";

    -- completion sources
    "hrsh7th/cmp-nvim-lsp";
    "hrsh7th/cmp-buffer";
    "hrsh7th/cmp-path";
    "hrsh7th/cmp-cmdline";

    "folke/which-key.nvim";

    -- snippet engine
    "L3MON4D3/LuaSnip";

    -- snippet completion source
    "saadparwaiz1/cmp_luasnip";

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup{}
        end
    };
    {
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require('gitsigns').setup()
        end
    };
    {
        "mg979/vim-visual-multi",
        branch = "master"
    };




}
require("nvim-surround").setup()
require("nvim-autopairs").setup{}
     
     
