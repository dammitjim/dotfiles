-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- set this bad boy up
require("lazy").setup({
    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",
    -- git
    "tpope/vim-fugitive",
    -- comments
    { 'numToStr/Comment.nvim', opts = {} },
    -- undo tree (local file history)
    "mbbill/undotree",
    --marks management
    "chentoast/marks.nvim",
    -- colorscheme
    { "catppuccin/nvim",      name = "catppuccin", priority = 1000 },
    -- directory explorer
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    -- project file finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- LSP configuration helper
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- GUI for managing LSP installs
            "williamboman/mason.nvim",
            -- glue between Mason and LSP
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
        }
    },
    -- Display popup with possible keybindings of command
    { 'folke/which-key.nvim', opts = {} },
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- autocoder 3000
    "github/copilot.vim",
    -- syntax highlighting
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    -- completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- Snippet engine and associated cmp source
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- Complete buffers
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
        }
    },
    -- diagnostics
    {
        "folke/trouble.nvim",
        dependencies = {
            "kyazdani42/nvim-web-devicons"
        }
    },
})
