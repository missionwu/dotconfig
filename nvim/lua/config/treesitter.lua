vim.api.nvim_command("set foldmethod=expr")
vim.api.nvim_command("set foldexpr=nvim_treesitter#foldexpr()")

require("nvim-treesitter.install").prefer_git = true
local parsers = require("nvim-treesitter.parsers").get_parser_configs()
for _, p in pairs(parsers) do
    p.install_info.url = p.install_info.url:gsub("https://github.com/", "git@github.com:")
end

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "cpp",
        "go",
        "gomod",
        "json",
        "rust",
        "toml",
    },
    highlight = { enable = true, disable = { "vim" } },
})
