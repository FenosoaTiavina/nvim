local M = {}
M.disabled = {
  n = {
      ["<leader>x"] = "",
      ["<tab>"] = "",
      ["<S-tab>"] = "",
      ["<leader>n"] =  "",
      ["<leader>rn"] = "",
  }
}
M.general ={
  n ={
    ["<C-h>"] = {"TmuxNavigateLeft<CR>", "window left" } ,
    ["<C-l>"] = {"TmuxNavigateRight<CR>", "window right" } ,
    ["<C-j>"] = {"TmuxNavigateDown<CR>", "window down" } ,
    ["<C-k>"] = {"TmuxNavigateUp<CR>", "window up" } ,
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
