local util = require("catppuccino.utils.util")
local opts = require("catppuccino.config").options

local colors = {
    none = "NONE",
    bg = "#150b26", -- nvim bg
    fg = "#FDEBC3", -- fg color (text)
    fg_gutter = "#3b4261",
    black = "#393b44",
    gray = "#2a2e36",
    red = "#CF4F6D",
    green = "#51ee72",
    yellow = "#FFE070",
    blue = "#96e2f0",
    magenta = "#d97bf2",
    cyan = "#63cdcf",
    white = "#dfdfe0",
    orange = "#EDC580",
    pink = "#D67AD2",
    black_br = "#7f8c98",
    red_bg = "#e06c75",
    green_br = "#58cd8b",
    yellow_br = "#FFE37E",
    blue_br = "#84CEE4",
    magenta_br = "#B8A1E3",
    cyan_br = "#59F0FF",
    white_br = "#FDEBC3",
    orange_br = "#F6A878",
    pink_br = "#DF97DB",
    comment = "#526175",
    git = {
        add = "#dfdfe0",
        change = "#F8B58C",
        delete = "#e06c75",
        conflict = "#FFE070"
    },
}

util.bg = colors.bg
colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
colors.bg_highlight = util.brighten(colors.bg, 0.05)
colors.fg_alt = util.darken(colors.fg, 0.80, "#000000")

colors.diff = { -- also used for gitsigns
    add = util.darken(colors.blue, 0.50),
    delete = util.darken(colors.red, 0.50),
    change = util.darken(colors.yellow, 0.50),
    text = colors.blue
}

colors.git.ignore = colors.black
colors.black = util.darken(colors.bg, 0.8, "#000000")
colors.border_highlight = colors.blue
colors.border = colors.black

-- Popups and statusline always get a dark background
colors.bg_popup = colors.bg_alt
colors.bg_statusline = colors.bg_alt

-- Sidebar and Floats are configurable
-- colors.bg_sidebar = config.darkSidebar and colors.bg_alt or colors.bg
-- colors.bg_float = config.darkFloat and colors.bg_alt or colors.bg
colors.bg_sidebar = colors.bg_alt
colors.bg_float = colors.bg_alt

colors.bg_visual = util.darken(colors.blue, 0.2)
colors.bg_search = util.darken(colors.cyan, 0.3)
colors.fg_sidebar = colors.fg_alt

colors.error = colors.red_bg
colors.warning = colors.yellow
colors.info = colors.blue
colors.hint = colors.white_br

colors.variable = colors.white

util.color_overrides(colors, opts)

return colors
