local gl = require("galaxyline")
local condition = require("galaxyline.condition")
local gls = gl.section
gl.short_line_list = { "NvimTree",'vista','dbui','packer' }

local colors = {
    bg      = "#202328",
    fg      = "#BBC2CF",
    red     = "#FF6C6B",
    green   = "#98BE65",
    yellow  = "#ECBE7B",
    blue    = "#51AFEF",
    magenta = "#C678DD",
    cyan    = "#46D9FF",
}

gls.left[1] = {
    RainbowRed = {
        provider = function() return "▊ " end,
        highlight = { colors.blue, colors.bg }
    },
}

gls.left[2] = {
    GitIcon = {
        provider = function() return "  " end,
        condition = condition.check_git_workspace,
        highlight = { colors.yellow, colors.bg },
    }
}

gls.left[3] = {
    GitBranch = {
        provider = "GitBranch",
        condition = condition.check_git_workspace,
        separator = " ",
        separator_highlight = { "NONE", colors.bg },
        highlight = { colors.yellow, colors.bg },
    }
}

gls.left[4] ={
    FileIcon = {
        provider = "FileIcon",
        condition = condition.buffer_not_empty,
        highlight = {
            require("galaxyline.provider_fileinfo").get_file_icon_color,
            colors.bg
        },
    },
}

gls.left[5] = {
    FileName = {
        provider = "FileName",
        condition = condition.buffer_not_empty,
        highlight = { colors.fg, colors.bg }
    }
}

gls.right[1] = {
    PerCent = {
        provider = "LinePercent",
        separator = " ",
        separator_highlight = { "NONE", colors.bg },
        highlight = { colors.fg, colors.bg },
    }
}

gls.right[2] = {
    RainbowBlue = {
        provider = function() return " ▊" end,
        highlight = { colors.blue, colors.bg }
    },
}

gls.short_line_left[1] = {
    BufferType = {
        provider = "FileTypeName",
        separator = " ",
        separator_highlight = { "NONE", colors.bg },
        highlight = { colors.blue, colors.bg }
    }
}

gls.short_line_left[2] = {
    SFileName = {
        provider =  "SFileName",
        condition = condition.buffer_not_empty,
        highlight = { colors.fg, colors.bg }
    }
}

gls.short_line_right[1] = {
    BufferIcon = {
        provider= "BufferIcon",
        highlight = { colors.fg, colors.bg }
    }
}
