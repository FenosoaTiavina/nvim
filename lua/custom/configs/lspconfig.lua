local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local cmd 
if  vim.loop.os_uname().sysname == 'Windows_NT' then
  cmd =  {
    'clangd.exe',
      --[[ "--pch-storage=memory",
      "--all-scopes-completion",
      "--pretty",
      "-j=4",
      "--inlay-hints",]]
    "--completion-style=detailed",
    '--query-driver="C:/Tools/mingw64/bin/gcc.exe,C:/Tools/mingw64/bin/g++.exe"'
  }
else
  cmd =  {
    'clangd',
      --[[ "--pch-storage=memory",
      "--all-scopes-completion",
      "--pretty",
      "-j=4",
      "--inlay-hints",]]
    "--completion-style=detailed",
  }
end


lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    require('custom.configs.clangd')
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  cmd = cmd,
  capabilities = capabilities,
}
