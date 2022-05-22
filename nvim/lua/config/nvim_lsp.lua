vim.cmd([[packadd nvim-lsp-installer]])
vim.cmd([[packadd lsp_signature.nvim]])
vim.cmd([[packadd lspsaga.nvim]])
vim.cmd([[packadd cmp-nvim-lsp]])

local nvim_lsp = require("lspconfig")
local lsp_installer = require("nvim-lsp-installer")
local saga = require("lspsaga")

-- Override diagnostics symbol
saga.init_lsp_saga({
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local function custom_attach(client)
    require("lsp_signature").on_attach({
        bind = true,
        use_lspsaga = false,
        floating_window = true,
        fix_pos = true,
        hint_enable = true,
        hi_parameter = "Search",
        handler_opts = { "double" },
    })
end

-- Override server settings here
local servers = { "clangd", "rust_analyzer", }
for _, server in ipairs(servers) do
    nvim_lsp[server].setup({
        capabilities = capabilities,
        on_attach = custom_attach,
    })
end
