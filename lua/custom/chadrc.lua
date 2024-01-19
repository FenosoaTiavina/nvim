---@type ChadrcConfig 
 local M = {}
 M.ui = { theme = 'rosepine' ,
  hl_override = {
      LineNr = { fg = "white" },
      Comment = {fg = "#c2c2c2"},
      Visual = {bg = "white"},

   },
}
 M.plugins = "custom.plugins"
 M.mappings = require("custom.mappings")
 return M
