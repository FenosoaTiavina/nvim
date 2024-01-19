local M = {}
M.disabled = {
  n = {
    ["<leader>x"] = "",
    ["<tab>"] = "",
    ["<S-tab>"] = "",
    ["<leader>n"] =  "",
    ["<leader>rn"] = "",
    ["<leader>q"] = ""
  }
}
M.general ={
  n ={
    ["<C-h>"] = {"<cmd>TmuxNavigateLeft<CR>", "window left" } ,
    ["<C-l>"] = {"<cmd>TmuxNavigateRight<CR>", "window right" } ,
    ["<C-j>"] = {"<cmd>TmuxNavigateDown<CR>", "window down" } ,
    ["<C-k>"] = {"<cmd>TmuxNavigateUp<CR>", "window up" } ,
  }
}
M.lspconfig = {
  n = {
    ["<leader>q"] = {"<cmd>Telescope diagnostics<CR>", "Diagnostics lists"}
  }
}
M.customs = {
  n = {
    ["<leader>x"] ={
      "<cmd> bdelete! <CR>",
      "Close current buffer"
    },
    ["<tab>"] = {
      "<cmd> :bnext <CR>",
      "Switch to next buffer"
    },
    ["<S-tab>"] = {
      "<cmd> :bprev <CR>",
      "Switch to previous buffer"
    },
  }
}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

return M
