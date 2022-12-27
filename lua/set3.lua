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

local bg = vim.g.set3_bg
if bg == 'hard' then
    Color.new('bg_foo', '#202224')
elseif bg == 'medium' or bg == nil then
    Color.new('bg_foo', '#2A2A2A')
elseif bg == 'soft' then
    Color.new('bg_foo', '#353535')
end

Color.new('black',   '#000000')
Color.new('fg_foo',  '#D5D5D5')
Color.new('grey0',   '#404040')
Color.new('grey1',   '#999999')
Color.new('grey2',   '#ADADAD')
Color.new('red',     '#FB8072')
Color.new('green',   '#B3DE69')
Color.new('blue',    '#80B1D3')
Color.new('yellow',  '#FFFFB3')
Color.new('magenta', '#BEBADA')
Color.new('cyan',    '#8DD3C7')
Color.new('orange',  '#FDB462')
Color.new('fire',    '#CF222B')

-- Color assignments (see :h highlight-groups)

Group.new("Normal",                     colors.fg_foo,      colors.bg_foo,      styles.none)
--
Group.new("Comment",                    colors.grey1,       colors.none,        styles.none)
--
Group.new("Constant",                   colors.blue,        colors.none,        styles.none)
Group.new("String",                     colors.cyan,        colors.none,        styles.none)
Group.new("Character",                  colors.green,       colors.none,        styles.none)
Group.new("Number",                     colors.blue,        colors.none,        styles.none)
Group.new("Boolean",                    colors.blue,        colors.none,        styles.none)
Group.new("Float",                      colors.blue,        colors.none,        styles.none)
--
Group.new("Identifier",                 colors.green,       colors.none,        styles.none)
Group.new("Function",                   colors.red,         colors.none,        styles.none)
--
Group.new("Statement",                  colors.orange,      colors.none,        styles.none)
Group.new("Conditional",                colors.orange,      colors.none,        styles.none)
Group.new("Repeat",                     colors.orange,      colors.none,        styles.none)
Group.new("Label",                      colors.orange,      colors.none,        styles.none)
Group.new("Operator",                   colors.none,        colors.none,        styles.none)
Group.new("Keyword",                    colors.orange,      colors.none,        styles.none)
Group.new("Exception",                  colors.orange,      colors.none,        styles.none)
--
Group.new("PreProc",                    colors.yellow,      colors.none,        styles.none)
Group.new("Include",                    colors.red,         colors.none,        styles.none)
Group.new("Define",                     colors.yellow,      colors.none,        styles.none)
Group.new("Macro",                      colors.yellow,      colors.none,        styles.none)
Group.new("PreCondit",                  colors.yellow,      colors.none,        styles.none)
--
Group.new("Type",                       colors.magenta,     colors.none,        styles.none)
Group.new("StorageClass",               colors.magenta,     colors.none,        styles.none)
Group.new("Structure",                  colors.magenta,     colors.none,        styles.none)
Group.new("Typedef",                    colors.magenta,     colors.none,        styles.none)
--
Group.new("Special",                    colors.yellow,      colors.none,        styles.none)
Group.new("SpecialChar",                colors.yellow,      colors.none,        styles.none)
Group.new("Tag",                        colors.yellow,      colors.none,        styles.none)
Group.new("Delimiter",                  colors.yellow,      colors.none,        styles.none)
Group.new("SpecialComment",             colors.yellow,      colors.none,        styles.none)
Group.new("Debug",                      colors.yellow,      colors.none,        styles.none)
--
Group.new("Underlined",                 colors.green,       colors.none,        styles.bold)
Group.new("Ignore",                     colors.yellow,      colors.none,        styles.bold)
Group.new("Error",                      colors.fire,        colors.none,        styles.bold)
Group.new("Todo",                       colors.green,       colors.none,        styles.bold)
--
Group.new("TabLineSel",                 colors.fg_foo,      colors.bg_foo,      styles.bold  )
Group.new("TabLineSelSeparator",        colors.orange,      colors.none,        styles.none)
Group.new("TabLine",                    colors.grey2,       colors.grey0,       styles.none)
Group.new("TabLineSeparator",           colors.grey0,       colors.none,        styles.none)
Group.new("TablineFill",                colors.red,         colors.bg_foo,      styles.none)
Group.new("StatusLine",                 colors.fg_foo,      colors.grey0,       styles.none)
Group.new("StatusLineNC",               colors.grey0,       colors.grey0,       styles.none)
Group.new("Conceal",                    colors.bg_foo,      colors.fg_foo,      styles.none)
Group.new("VertSplit",                  colors.grey1,       colors.none,        styles.none)
--
Group.new("ErrorMsg",                   colors.bg_foo,      colors.fire,        styles.bold)
Group.new("WarningMsg",                 colors.fg_foo,      colors.grey1,       styles.bold)
Group.new("Title",                      colors.grey2,       colors.none,        styles.none)
Group.new("CursorColumn",               colors.none,        colors.grey1,       styles.none)
Group.new("LineNr",                     colors.grey1,       colors.bg_foo,      styles.none)
Group.new("CursorLineNr",               colors.magenta,     colors.grey0,       styles.none)
Group.new("Line",                       colors.fg_foo,      colors.none,        styles.bold)
Group.new("SignColumn",                 colors.fire,        colors.bg_foo,      styles.none)
Group.new("ColorColumn",                colors.none,        colors.grey0,       styles.none)
Group.new("Cursor",                     colors.bg_foo,      colors.grey2,       styles.none)
Group.new("CursorLine",                 colors.none,        colors.grey0,       styles.none)
Group.new("iCursor",                    colors.bg_foo,      colors.grey2,       styles.none)
Group.new("EndOfBuffer",                colors.none,        colors.none,        styles.none)
Group.new("MatchParen",                 colors.yellow,      colors.grey1,       styles.none)
Group.new("NonText",                    colors.none,        colors.none,        styles.none)
Group.new("PMenu",                      colors.fg_foo,      colors.grey0,       styles.none)
Group.new("PMenuSel",                   colors.bg_foo,      colors.cyan:dark(), styles.none)
Group.new("PmenuSbar",                  colors.grey2,       colors.bg_foo,      styles.none)
Group.new("PmenuThumb",                 colors.bg_foo,      colors.grey1,       styles.none)
Group.new("QuickFixLine",               colors.bg_foo,      colors.orange,      styles.none)
Group.new("qfFileName",                 colors.cyan,        colors.none,        styles.none)
Group.new("NormalFloat",                colors.fg_foo,      colors.grey0,       styles.none)
Group.new("SpecialKey",                 colors.grey1,       colors.none,        styles.none)
Group.new("SpellBad",                   groups.String,      colors.none,        styles.underline)
Group.new("SpellCap",                   colors.fire,        colors.bg_foo,      styles.none)
Group.new("SpellLocal",                 colors.fg_foo,      colors.bg_foo,      styles.none)
Group.new("SpellRare",                  colors.fg_foo,      colors.bg_foo,      styles.none)
Group.new("Visual",                     colors.bg_foo,      colors.cyan:dark(), styles.none)
Group.new("VisualNOS",                  colors.bg_foo,      colors.fg_foo,      styles.none)
Group.new("Whitespace",                 colors.grey0,       colors.bg_foo,      styles.none)
Group.new("Folded",                     colors.grey1,       colors.grey0,       styles.none)
Group.new("Directory",                  colors.magenta,     colors.bg_foo,      styles.none)
--
Group.new("DiffAdd",                    colors.bg_foo,      colors.green,       styles.none)
Group.new("DiffChange",                 colors.bg_foo,      colors.blue,        styles.none)
Group.new("DiffDelete",                 colors.bg_foo,      colors.red,         styles.none)
Group.new("DiffText",                   colors.yellow,      colors.bg_foo,      styles.none)
--
Group.new("GitSignsAdd",                colors.green,       colors.bg_foo,      styles.none)
Group.new("GitSignsChange",             colors.blue,        colors.bg_foo,      styles.none)
Group.new("GitSignsDelete",             colors.red,         colors.bg_foo,      styles.none)
--
Group.new("fzf1",                       colors.fg_foo,      colors.bg_foo,      styles.none)
Group.new("fzf2",                       colors.fg_foo,      colors.bg_foo,      styles.none)
Group.new("fzf3",                       colors.fg_foo,      colors.bg_foo,      styles.none)
--
Group.new("healthError",                colors.yellow,      colors.fire,        styles.none)
Group.new("healthSuccess",              colors.yellow,      colors.fire,        styles.none)
Group.new("healthWarning",              colors.fire,        colors.fire,        styles.none)
Group.new("TermCursorNC",               colors.bg_foo,      colors.fire,        styles.none)
Group.new("IncSearch",                  colors.fg_foo,      colors.fire,        styles.underline)
Group.new("Search",                     colors.bg_foo,      colors.fire,        styles.none)
--
Group.new("vimcommand",                 groups.Statement,   colors.none)
Group.new("vimLet",                     groups.vimcommand,  colors.none)
Group.new("vimFuncVar",                 groups.identifier,  colors.none)
Group.new("vimNotFunc",                 groups.identifier,  colors.none)
Group.new("vimCommentTitle",            groups.PreProc,     colors.none)
Group.new("vimIsCommand",               colors.none,        colors.none)
Group.new("vimFuncSID",                 groups.Special,     colors.none)
Group.new("vimMapModKey",               groups.vimFuncSID,  colors.none)
Group.new("vimMapLhs",                  colors.none,        colors.none)
Group.new("vimNotation",                colors.yellow,      colors.none)
Group.new("vimBracket",                 groups.Delimiter,   colors.none)
Group.new("vimMap",                     groups.vimcommand,  colors.none)
Group.new("vimNotFunc",                 groups.vimcommand,  colors.none)
Group.new("nvimMap",                    groups.vimMap,      colors.none)
--
Group.new("markdownH1",                 colors.yellow,      colors.none,        styles.bold)
Group.new("markdownH2",                 colors.magenta,     colors.none,        styles.bold)
Group.new("markdownH3",                 colors.red,         colors.none,        styles.bold)
Group.new("markdownH4",                 colors.blue,        colors.none,        styles.bold)
Group.new("markdownH5",                 colors.orange,      colors.none,        styles.bold)
Group.new("markdownH6",                 colors.green,       colors.none,        styles.bold)
Group.new("markdownRule",               groups.markdownH2,  colors.none,        styles.bold)
Group.new("markdownItalic",             colors.cyan,        colors.none,        styles.italic)
Group.new("markdownBold",               colors.cyan,        colors.none,        styles.bold)
Group.new("markdownBoldItalic",         colors.cyan,        colors.none,        styles.bold  +  styles.italic)
Group.new("markdownCodeDelimiter",      colors.cyan,        colors.none,        styles.bold)
Group.new("markdownCode",               colors.cyan,        colors.none,        styles.none)
Group.new("markdownCodeBlock",          colors.cyan,        colors.none,        styles.none)
Group.new("markdownFootnoteDefinition", colors.cyan,        colors.none,        styles.italic)
Group.new("markdownListMarker",         colors.cyan,        colors.none,        styles.bold)
Group.new("markdownLineBreak",          colors.cyan,        colors.none,        styles.underline)
--
Group.new("luaFunctionCall",            groups.Function,    groups.Function,    groups.Function)
--
Group.new("pythonoperator",             groups.Operator,    groups.Operator,    styles.none)
--
Group.new("TSVariableBuiltin",          groups.Special,     groups.Special,     styles.none)
Group.new("TSMethod",                   groups.Function,    groups.Function,    styles.none)
Group.new("TSConstant",                 groups.Constant,    groups.Constant,    styles.none)
Group.new("TSKeywordOperator",          groups.Conditional, groups.Conditional, styles.none)
--
Group.new("TelescopeMatching",          colors.orange,      colors.none,        styles.bold)
Group.new("TelescopeSelection",         colors.orange,      colors.none,        styles.bold)
Group.new("TelescopeSelectionCaret",    colors.orange,      colors.none,        styles.bold)
Group.new("TelescopePromptPrefix",      colors.orange,      colors.none,        styles.bold)
Group.new("TelescopeBorder",            colors.blue,        colors.none,        styles.bold)
Group.new("TelescopePromptBorder",      colors.blue,        colors.none,        styles.bold)
Group.new("TelescopeResultsBorder",     colors.blue,        colors.none,        styles.bold)
Group.new("TelescopePreviewBorder",     colors.blue,        colors.none,        styles.bold)


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
