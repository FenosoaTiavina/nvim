local os = {
  iswin32 = vim.loop.os_uname().sysname == 'Windows_NT',
  islinux =vim.loop.os_uname().sysname == 'Linux',
}

local M = {}
M.os = os
local extension_path
local codelldb_path
local liblldb_path

if  os.islinux then
  extension_path = vim.env.HOME .. "/.vscode-server/extensions/vadimcn.vscode-lldb-1.10.0/"
  codelldb_path = extension_path .. "adapter/codelldb"
  liblldb_path = extension_path .. "lldb/lib/liblldb.so"
elseif os.iswin32 then
  extension_path = vim.env.HOME .. "C:\\Users\\Fenosoa\\.vscode\\extensions\\vadimcn.vscode-lldb-1.10.0\\"
  codelldb_path = extension_path .. "adapter\\codelldb"
  liblldb_path = extension_path .. "lldb\\lib\\liblldb.so"
end

M.codelldb_path = codelldb_path
M.liblldb_path = liblldb_path

return M
