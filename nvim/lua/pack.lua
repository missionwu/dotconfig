local function install_packer()
    local data_dir   = vim.fn.stdpath("data")
    local install_path = data_dir.."/site/pack/packer/start/packer.nvim"
    if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
        vim.notify("Installing packer.nvim")
        vim.fn.system({
            "git", "clone", "--depth", "1",
            "https://github.com/wbthomason/packer.nvim",
            install_path
        })
    end
end

local function load_plugins()
    install_packer()

    local _ok, packer = pcall(require, "packer")
    if not _ok then
        vim.notify("Fail to load packer")
        return
    end

    packer.init({
        git = { clone_timeout = 100 },
        max_jobs = 20,
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "rounded" })
            end,
        },
    })

    packer.startup(function(use)
        -- packer.nvim can manage itself.
        use("wbthomason/packer.nvim")

        local plugins = require("plugins")
        for _, plugin in ipairs(plugins) do
            use(plugin)
        end
    end)
end

load_plugins()
