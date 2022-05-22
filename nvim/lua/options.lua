local options = {
    tabstop           = 4,
    shiftwidth        = 4,
    softtabstop       = 4,
    autoindent        = true,
    expandtab         = true,
    smarttab          = true,

    number            = true,
    relativenumber    = false,
    signcolumn        = "yes",
    wrap              = false,
    textwidth         = 80,
    colorcolumn       = "81",
    cursorline        = true,
    cursorcolumn      = false,
    list              = true,
    listchars         = "tab:»■,trail:■",
    fillchars         = "vert:▋,eob: ,",
    foldenable        = true,
    foldlevelstart    = 99,

    ignorecase        = true,
    smartcase         = true,
    infercase         = true,
    incsearch         = true,
    wrapscan          = true,

    backup            = false,
    writebackup       = false,
    swapfile          = false,
    undofile          = false,

    hidden            = true,
    magic             = true,
    mouse             = "",
    encoding          = "utf-8",
    fileformats       = "unix,mac,dos",
    history           = 1000,
    clipboard         = "unnamedplus",
    backspace         = "indent,start,eol",
    virtualedit       = "block",
    jumpoptions       = "stack",
    completeopt       = "menuone,noselect",
    splitbelow        = true,
    splitright        = true,
    errorbells        = false,
    visualbell        = false,
    scrolloff         = 5,
    sidescrolloff     = 5,
    autoread          = true,
    autowrite         = true,
    termguicolors     = true,

    timeout           = true,
    ttimeout          = true,
    timeoutlen        = 500,
    ttimeoutlen       = 0,
    updatetime        = 100,
    redrawtime        = 1500,

    winwidth          = 30,
    winminwidth       = 10,
    winblend          = 10,
    pumheight         = 15,
    pumblend          = 10,
    cmdheight         = 1,
    cmdwinheight      = 5,
}

local function load_options()
    for name, value in pairs(options) do
        vim.opt[name] = value
    end
end

load_options()
