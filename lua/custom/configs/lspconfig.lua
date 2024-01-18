local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local query_driver = ""
local clangd = "clangd"
if vim.fn.has("win32")  then
  query_driver = '--query-driver="C:/Tools/mingw64/bin/gcc.exe,C:/Tools/mingw64/bin/g++.exe"'
  clangd = 'clangd.exe'
end


lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    require('custom.configs.clangd')
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  cmd = {
    clangd,
    "--pch-storage=memory",
    "--all-scopes-completion",
    "--pretty",
    "-j=4",
    "--inlay-hints",
    "--completion-style=detailed",
    query_driver,
  },
  capabilities = capabilities,
}
