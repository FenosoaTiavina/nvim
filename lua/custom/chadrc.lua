---@type ChadrcConfig 
 local M = {}
 M.ui = { theme = 'catppuccin' ,
  hl_override = {
      LineNr = { fg = "white" },
      Comment = {fg = "#c2c2c2"},
      Visual = {bg = "white"},
      TelescopeBorder = { fg = "white" },
      TelescopeSelectionCaret = { fg = "white" },
      TelescopePromptTitle = { fg = "white" },
      TelescopePromptBorder = { fg = "white" },
      TelescopeResultsTitle = { fg = "white" },
      TelescopePreviewTitle = { fg = "white" },
   },
}
 M.plugins = "custom.plugins"
 M.mappings = require("custom.mappings")
 return M
