local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local cmd 
if  vim.loop.os_uname().sysname == 'Windows_NT' then
  cmd =  {
    'clangd.exe',
      "--pretty",
      --[[ "--pch-storage=memory",
      "-j=4",]]
    "--all-scopes-completion",
    "--inlay-hints",
    "--completion-style=detailed",
    '--query-driver="C:/Tools/mingw64/bin/gcc.exe,C:/Tools/mingw64/bin/g++.exe",C:/Tools/mingw64/bin/clang++.exe",C:/Tools/mingw64/bin/clang.exe",C:/Tools/mingw64/bin/clang-cpp.exe"'
  }
else
  cmd =  {
    'clangd',
      "--pretty",
      --[[ "--pch-storage=memory",
      "-j=4",]]
    "--all-scopes-completion",
    "--inlay-hints",
    "--completion-style=detailed",
  }
end


lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    require('custom.configs.clangd')
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  filetypes = {
    "c",
    "cpp",
    "objc",
    "objcpp",
    "cuda",
    "proto",
    "h",
    "hpp",
  },
  cmd = cmd,
  capabilities = capabilities,
}
