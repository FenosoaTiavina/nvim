local dap = require('dap')
local codelldb = require("utils.os")
dap.adapters.lldb = {
  type = 'executable',
  command =codelldb.codelldb_path,
  name = 'lldb',
  host= '127.0.0.1',
  port='13000',
}
dap.configurations.cpp = {
    {
      name = "Launch",
      type = "lldb",
      request = "launch",
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = false,
      args = {},
      runInTerminal = true,
    }
}
dap.configurations.c = dap.configurations.cpp

