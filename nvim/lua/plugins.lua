local function load_cfg(plugin)
    return string.format("require('config.%s')", plugin)
end

return {
    -- replacement for the included filetype.vim
    { "nathom/filetype.nvim" },
    -- map escape
    { "jdhao/better-escape.vim", event = "InsertEnter" },
    -- accelerates j/k mappings
    { "rhysd/accelerated-jk" },
    -- disable search highlight when you are done
    { "romainl/vim-cool" },
    -- colorscheme
    { "navarasu/onedark.nvim", config = [[require("onedark").load()]] },
    -- start page
    { "goolord/alpha-nvim", config = load_cfg("alpha") },
    -- file explorer
    { "kyazdani42/nvim-web-devicons" },
    {
        "kyazdani42/nvim-tree.lua",
        cmd = "NvimTreeToggle",
        config = load_cfg("nvimtree"),
    },
    -- buffer line
    { "akinsho/bufferline.nvim", config = load_cfg("bufferline") },
    -- status line
    { "glepnir/galaxyline.nvim", config = load_cfg("galaxyline") },
    -- indent line
    { "lukas-reineke/indent-blankline.nvim" },
    -- git signs in file
    { "nvim-lua/plenary.nvim" },
    { "lewis6991/gitsigns.nvim", config = load_cfg("gitsigns") },
    -- language parser for syntax highlight
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = load_cfg("treesitter"),
    },
    -- autopair
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = load_cfg("autopairs"),
    },
    -- LSP
    { "williamboman/nvim-lsp-installer" },
    { "neovim/nvim-lspconfig", config = load_cfg("nvim_lsp") },
    { "tami5/lspsaga.nvim", after = "nvim-lspconfig" },
    { "ray-x/lsp_signature.nvim", after = "nvim-lspconfig" },
    -- auto complete
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = load_cfg("nvim_cmp"),
    },
    { "hrsh7th/cmp-vsnip", after = "nvim-cmp" },
    { "hrsh7th/vim-vsnip", after = "nvim-cmp" },
}
