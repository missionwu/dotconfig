require("bufferline").setup({
    options = {
        number = "none",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_buffer_close_icons = false,
        show_buffer_icons = true,
        show_tab_indicators = false,
        close_icon = "",
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        separator_style = "thin",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                padding = 1,
            },
        },
    },
})
