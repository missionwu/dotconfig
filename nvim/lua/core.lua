local function disable_distribution_plugins()
    vim.g.did_load_filetypes         = 1
    vim.g.did_load_fzf               = 1
    vim.g.did_load_gtags             = 1
    vim.g.did_load_gzip              = 1
    vim.g.did_load_tar               = 1
    vim.g.did_load_tarPlugin         = 1
    vim.g.did_load_zip               = 1
    vim.g.did_load_zipPlugin         = 1
    vim.g.did_load_getscript         = 1
    vim.g.did_load_getscriptPlugin   = 1
    vim.g.did_load_vimball           = 1
    vim.g.did_load_vimballPlugin     = 1
    vim.g.did_load_matchit           = 1
    vim.g.did_load_matchparen        = 1
    vim.g.did_load_2html_plugin      = 1
    vim.g.did_load_logiPat           = 1
    vim.g.did_load_rrhelper          = 1
    vim.g.did_load_netrw             = 1
    vim.g.did_load_netrwPlugin       = 1
    vim.g.did_load_netrwSettings     = 1
    vim.g.did_load_netrwFileHandlers = 1
end

local function load_core()
    disable_distribution_plugins()

    require("options")
    require("keymaps")
    require("pack")
end

load_core()
