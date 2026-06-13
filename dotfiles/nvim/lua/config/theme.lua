

local M = {}

M.colors = {
  none  = "NONE",

  bg = "NONE",
  fg = "#d8d8d8",

  gray = "#808080",
  dark_gray = "#3a3a3a",

  orange = "#ff8800",
  gold = "#ffbf66",
  amber = "#d68a2e",

  red = "#cc6666",
  green = "#8faa80",
  blue = "#7aa2c0",
  purple = "#b48ead",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.cmd("highlight clear")

  local c = M.colors

  -- UI
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalNC", { fg = c.fg, bg = c.bg })
  hl("SignColumn", { bg = c.bg })
  hl("EndOfBuffer", { fg = c.dark_gray, bg = c.bg })
  hl("LineNr", { fg = c.gray, bg = c.bg })
  hl("CursorLineNr", { fg = c.orange, bg = c.bg, bold = true })
  hl("CursorLine", { bg = c.bg })
  hl("Visual", { bg = c.dark_gray })

  -- Borders / Status
  hl("StatusLine", { fg = c.orange, bg = c.bg })
  hl("StatusLineNC", { fg = c.gold, bg = c.bg })
  hl("WinSeparator", { fg = c.orange, bg = c.bg })

  -- Syantax Basics
  hl("Comment", { fg = c.gray, italic = true })
  hl("Keyword", { fg = c.orange, bold = true })
  hl("Statement", { fg = c.orange })
  hl("Conditional", { fg = c.orange })
  hl("Repeat", { fg = c.orange })
  hl("Operator", { fg = c.gold })

  hl("String", { fg = c.green })
  hl("Character", { fg = c.green })
  hl("Number", { fg = c.gold })
  hl("Boolean", { fg = c.gold })
  hl("Float", { fg = c.gold })

  hl("Function", { fg = c.amber })
  hl("Identifier", { fg = c.fg })
  hl("Type", { fg = c.blue })
  hl("StorageClass", { fg = c.blue })
  hl("Structure", { fg = c.blue })
  hl("Constant", { fg = c.purple })

  -- Diagnostics
  hl("DiagnosticError", { fg = c.red })
  hl("DiagnosticWarn", { fg = c.gold })
  hl("DiagnosticInfo", { fg = c.blue })
  hl("DiagnosticHint", { fg = c.green })

  -- TreeSitter
  hl("@keyword", { fg = c.orange, bold = true })
  hl("@string", { fg = c.green })
  hl("@number", { fg = c.gold })
  hl("@boolean", { fg = c.gold })
  hl("@function", { fg = c.amber })
  hl("@type", { fg = c.blue })
  hl("@variable", { fg = c.fg })
  hl("@comment", { fg = c.gray, italic = true })
  hl("@constant", { fg = c.purple })

  vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE
    highlight EndOfBuffer guibg=NONE
    highlight StatusLine guifg=orange guibg=NONE
    highlight StatusLineNC guifg=gold guibg=NONE
    highlight WinSeparator guifg=orange guibg=NONE
  ]])
end

return M


