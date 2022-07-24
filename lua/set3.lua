local Color, colors, Group, groups, styles = require("colorbuddy").setup()

--[[
There seems to be a bug where colors are not picked up if they are named
"background" or "bg". I am guessing they conflict with the colorbuddys
special_colors table

local special_colors = {
  none = "none",
  bg = "bg",
  background = "background",
  fg = "fg",
  foreground = "foreground",
}
--]]

Color.new('bg_foo',      "#282c34")
Color.new('fg_foo',      "#d8d8d8")
Color.new('grey1',       "#5c5c5c")
Color.new('grey2',       "#828282")
Color.new('grey3',       "#adadad")
Color.new('grey4',       "#d1d1d1")
Color.new('grey5',       "#ededed")
Color.new('grey_accent', "#373b41")
Color.new('red',         "#fb8072")
Color.new('green',       "#b3de69")
Color.new('yellow',      "#ffffb3")
Color.new('blue',        "#80b1d3")
Color.new('magenta',     "#bebada")
Color.new('cyan',        "#8dd3c7")
Color.new('orange',      "#fdb462")
Color.new('fire',        "#CF222B")

-- Color assignments (see :h highlight-groups)

Group.new("Normal",              colors.fg_foo,  colors.bg_foo,      styles.NONE)
--
Group.new("Comment",             colors.grey2,   colors.none,        styles.NONE)
--
Group.new("Constant",            colors.blue,    colors.none,        styles.NONE)
Group.new("String",              colors.cyan,    colors.none,        styles.NONE)
Group.new("Character",           colors.green,   colors.none,        styles.NONE)
Group.new("Number",              colors.blue,    colors.none,        styles.NONE)
Group.new("Boolean",             colors.blue,    colors.none,        styles.NONE)
Group.new("Float",               colors.blue,    colors.none,        styles.NONE)
--
Group.new("Identifier",          colors.green,   colors.none,        styles.NONE)
Group.new("Function",            colors.red,     colors.none,        styles.NONE)
--
Group.new("Statement",           colors.orange,  colors.none,        styles.NONE)
Group.new("Conditional",         colors.orange,  colors.none,        styles.NONE)
Group.new("Repeat",              colors.orange,  colors.none,        styles.NONE)
Group.new("Label",               colors.orange,  colors.none,        styles.italic)
Group.new("Operator",            colors.none,    colors.none,        styles.NONE)
Group.new("Keyword",             colors.orange,  colors.none,        styles.italic)
Group.new("Exception",           colors.orange,  colors.none,        styles.NONE)
--
Group.new("PreProc",             colors.yellow,  colors.none,        styles.NONE)
Group.new("Include",             colors.red,     colors.none,        styles.NONE)
Group.new("Define",              colors.yellow,  colors.none,        styles.NONE)
Group.new("Macro",               colors.yellow,  colors.none,        styles.NONE)
Group.new("PreCondit",           colors.yellow,  colors.none,        styles.NONE)
--
Group.new("Type",                colors.magenta, colors.none,        styles.italic)
Group.new("StorageClass",        colors.magenta, colors.none,        styles.NONE)
Group.new("Structure",           colors.magenta, colors.none,        styles.NONE)
Group.new("Typedef",             colors.magenta, colors.none,        styles.NONE)
--
Group.new("Special",             colors.yellow,  colors.none,        styles.NONE)
Group.new("SpecialChar",         colors.yellow,  colors.none,        styles.NONE)
Group.new("Tag",                 colors.yellow,  colors.none,        styles.NONE)
Group.new("Delimiter",           colors.yellow,  colors.none,        styles.NONE)
Group.new("SpecialComment",      colors.yellow,  colors.none,        styles.NONE)
Group.new("Debug",               colors.yellow,  colors.none,        styles.NONE)
--
Group.new("Underlined",          colors.green,   colors.none,        styles.bold)
Group.new("Ignore",              colors.yellow,  colors.none,        styles.bold)
Group.new("Error",               colors.fire,    colors.none,        styles.bold)
Group.new("Todo",                colors.green,   colors.none,        styles.NONE)
--
Group.new("TabLineSel",          colors.grey4,   colors.bg_foo,      styles.bold )
Group.new("TabLineSelSeparator", colors.orange,  colors.none,        styles.none)
Group.new("TabLine",             colors.grey3,   colors.grey1,       styles.none)
Group.new("TabLineSeparator",    colors.grey1,   colors.none,        styles.none)
Group.new("TablineFill",         colors.red,     colors.bg_foo,      styles.none)
Group.new("StatusLine",          colors.bg_foo,  colors.grey_accent, styles.none)
Group.new("StatusLineNC",        colors.grey1,   colors.grey_accent, styles.none)
Group.new("Conceal",             colors.bg_foo,  colors.grey4,       styles.none)
Group.new("VertSplit",           colors.grey2,   colors.none,        styles.none)
--
Group.new("ErrorMsg",            colors.bg_foo,  colors.fire,        styles.bold)
Group.new("WarningMsg",          colors.grey4,   colors.grey2,       styles.bold)
Group.new("Title",               colors.grey3,   colors.none,        styles.none)
Group.new("CursorColumn",        colors.none,    colors.grey_accent, styles.NONE)
Group.new("LineNr",              colors.grey2,   colors.bg_foo,      styles.NONE)
Group.new("CursorLineNr",        colors.magenta, colors.grey_accent, styles.NONE)
Group.new("Line",                colors.fg_foo,  colors.none,        styles.bold)
Group.new("SignColumn",          colors.fire,    colors.bg_foo,      styles.NONE)
Group.new("ColorColumn",         colors.none,    colors.grey_accent, styles.none)
Group.new("Cursor",              colors.bg_foo,  colors.grey3,       styles.none)
Group.new("CursorLine",          colors.none,    colors.grey_accent, styles.none)
Group.new("iCursor",             colors.bg_foo,  colors.grey3,       styles.none)
Group.new("EndOfBuffer",         colors.none,    colors.none,        styles.none)
Group.new("MatchParen",          colors.yellow,  colors.grey2,       styles.none)
Group.new("NonText",             colors.none,    colors.none,        styles.none)
Group.new("PMenu",               colors.fg_foo,  colors.grey_accent, styles.none)
Group.new("QuickFixLine",        colors.bg_foo,  colors.orange,      styles.none)
Group.new("qfFileName",          colors.cyan,    colors.none,        styles.none)
Group.new("PmenuSbar",           colors.grey3,   colors.bg_foo,      styles.none)
Group.new("PMenuSel",            colors.red,     colors.bg_foo,      styles.none)
Group.new("PmenuThumb",          colors.bg_foo,  colors.grey2,       styles.none)
Group.new("NormalFloat",         colors.fg_foo,  colors.grey_accent, styles.none)
Group.new("SpecialKey",          colors.grey2,   colors.none,        styles.none)
Group.new("SpellBad",            groups.String,  colors.none,        styles.underline)
Group.new("SpellCap",            colors.fire,    colors.bg_foo,      styles.none)
Group.new("SpellLocal",          colors.grey4,   colors.bg_foo,      styles.none)
Group.new("SpellRare",           colors.grey4,   colors.bg_foo,      styles.none)
Group.new("Visual",              colors.bg_foo,  colors.magenta,     styles.none)
Group.new("VisualNOS",           colors.bg_foo,  colors.fg_foo,      styles.none)
Group.new("Whitespace",          colors.grey1,   colors.bg_foo,      styles.none)
Group.new("Folded",              colors.grey2,   colors.grey_accent, styles.none)
Group.new("Directory",           colors.magenta, colors.bg_foo,      styles.none)

-- Git gutters and diffs

Group.new("DiffAdd",    colors.magenta, colors.bg_foo, styles.none)
Group.new("DiffChange", colors.orange,  colors.bg_foo, styles.none)
Group.new("DiffDelete", colors.fire,    colors.bg_foo, styles.none)
Group.new("DiffText",   colors.fg_foo,  colors.bg_foo, styles.none)

-- FZF

Group.new("fzf1", colors.grey4, colors.bg_foo, styles.none)
Group.new("fzf2", colors.grey4, colors.bg_foo, styles.none)
Group.new("fzf3", colors.grey4, colors.bg_foo, styles.none)

-- Neovim

Group.new("healthError",   colors.yellow, colors.fire, styles.none)
Group.new("healthSuccess", colors.yellow, colors.fire, styles.none)
Group.new("healthWarning", colors.fire,   colors.fire, styles.none)
Group.new("TermCursorNC",  colors.bg_foo, colors.fire, styles.none)
Group.new("IncSearch",     colors.grey4,  colors.fire, styles.underline)
Group.new("Search",        colors.bg_foo, colors.fire, styles.none)

-- vim

Group.new("vimcommand",      groups.Statement,  colors.none)
Group.new("vimLet",          groups.vimcommand, colors.none)
Group.new("vimFuncVar",      groups.identifier, colors.none)
Group.new("vimNotFunc",      groups.identifier, colors.none)
Group.new("vimCommentTitle", groups.PreProc,    colors.none)
Group.new("vimIsCommand",    colors.none,       colors.none)
Group.new("vimFuncSID",      groups.Special,    colors.none)
Group.new("vimMapModKey",    groups.vimFuncSID, colors.none)
Group.new("vimMapLhs",       colors.none,       colors.none)
Group.new("vimNotation",     colors.yellow,     colors.none)
Group.new("vimBracket",      groups.Delimiter,  colors.none)
Group.new("vimMap",          groups.vimcommand, colors.none)
Group.new("vimNotFunc",      groups.vimcommand, colors.none)
Group.new("nvimMap",         groups.vimMap,     colors.none)

-- markdown

Group.new("markdownH1",                 colors.yellow,     colors.none, styles.bold)
Group.new("markdownH2",                 colors.magenta,    colors.none, styles.bold)
Group.new("markdownH3",                 colors.red,        colors.none, styles.bold)
Group.new("markdownH4",                 colors.blue,       colors.none, styles.bold)
Group.new("markdownH5",                 colors.orange,     colors.none, styles.bold)
Group.new("markdownH6",                 colors.green,      colors.none, styles.bold)
Group.new("markdownRule",               groups.markdownH2, colors.none, styles.bold)
Group.new("markdownItalic",             colors.cyan,       colors.none, styles.italic)
Group.new("markdownBold",               colors.cyan,       colors.none, styles.bold)
Group.new("markdownBoldItalic",         colors.cyan,       colors.none, styles.bold + styles.italic)
Group.new("markdownCodeDelimiter",      colors.cyan,       colors.none, styles.bold)
Group.new("markdownCode",               colors.cyan,       colors.none, styles.none)
Group.new("markdownCodeBlock",          colors.cyan,       colors.none, styles.none)
Group.new("markdownFootnoteDefinition", colors.cyan,       colors.none, styles.italic)
Group.new("markdownListMarker",         colors.cyan,       colors.none, styles.bold)
Group.new("markdownLineBreak",          colors.cyan,       colors.none, styles.underline)

-- Lua

Group.new("luaFunctionCall", groups.Function, groups.Function, groups.Function)

--                             Python

Group.new("pythonoperator", groups.Operator, groups.Operator, styles.none)

-- Treesitter

Group.new("TSVariableBuiltin", groups.Special,     groups.Special,     styles.none) -- self
Group.new("TSMethod",          groups.Function,    groups.Function,    styles.none) -- self.method()
Group.new("TSConstant",        groups.Constant,    groups.Constant,    styles.none) -- self.variable
Group.new("TSKeywordOperator", groups.Conditional, groups.Conditional, styles.none) -- is and not

-- Telescope

Group.new("TelescopeMatching",       colors.magenta , colors.none , styles.bold)
Group.new("TelescopeSelection",      colors.yellow  , colors.none , styles.bold)
Group.new("TelescopeSelectionCaret", colors.magenta , colors.none , styles.bold)
Group.new("TelescopePromptPrefix",   colors.magenta , colors.none , styles.bold)
Group.new("TelescopeBorder",         colors.cyan    , colors.none , styles.bold)
Group.new("TelescopePromptBorder",   colors.yellow  , colors.none , styles.bold)
Group.new("TelescopeResultsBorder",  colors.red     , colors.none , styles.bold)
Group.new("TelescopePreviewBorder",  colors.blue    , colors.none , styles.bold)

--                                        Terminal
vim.api.nvim_set_var("terminal_color_0",  Color.to_rgb(colors.magenta))
vim.api.nvim_set_var("terminal_color_1",  Color.to_rgb(colors.red))
vim.api.nvim_set_var("terminal_color_2",  Color.to_rgb(colors.magenta))
vim.api.nvim_set_var("terminal_color_3",  Color.to_rgb(colors.red))
vim.api.nvim_set_var("terminal_color_4",  Color.to_rgb(colors.orange))
vim.api.nvim_set_var("terminal_color_5",  Color.to_rgb(colors.cyan))
vim.api.nvim_set_var("terminal_color_6",  Color.to_rgb(colors.green))
vim.api.nvim_set_var("terminal_color_7",  Color.to_rgb(colors.fg_foo))
vim.api.nvim_set_var("terminal_color_8",  Color.to_rgb(colors.magenta))
vim.api.nvim_set_var("terminal_color_9",  Color.to_rgb(colors.red))
vim.api.nvim_set_var("terminal_color_10", Color.to_rgb(colors.magenta))
vim.api.nvim_set_var("terminal_color_11", Color.to_rgb(colors.orange))
vim.api.nvim_set_var("terminal_color_12", Color.to_rgb(colors.cyan))
vim.api.nvim_set_var("terminal_color_13", Color.to_rgb(colors.red))
vim.api.nvim_set_var("terminal_color_14", Color.to_rgb(colors.green))
vim.api.nvim_set_var("terminal_color_15", Color.to_rgb(colors.fg_foo))

