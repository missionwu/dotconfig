local mappings = {
    -- moving cursor between windows
    { "n", "<C-h>", "<C-w>h" },
    { "n", "<C-j>", "<C-w>j" },
    { "n", "<C-k>", "<C-w>k" },
    { "n", "<C-l>", "<C-w>l" },
    -- indent
    { "n", "<", "<<" },
    { "n", ">", ">>" },
    { "x", "<", "<gv" },
    { "x", ">", ">gv" },
}

local function load_keymaps()
    vim.g.mapleader = ";"
    vim.api.nvim_set_keymap("n", ";", "", { noremap = true })
    vim.api.nvim_set_keymap("x", ";", "", { noremap = true })

    local options = { noremap = true, silent = true }
    for _, mapping in ipairs(mappings) do
    vim.api.nvim_set_keymap(
        mapping[1],  -- mode
        mapping[2],  -- lhs
        mapping[3],  -- rhs
        mapping[4] or options
    )
    end
end

load_keymaps()
