local g = vim.g
local opt = vim.opt


local powershell_options = {
  shell ="pwsh",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end


opt.colorcolumn    = '80'
opt.cursorline     = true
opt.foldlevelstart = 99
opt.helpheight     = 10
opt.showmode       = false
opt.mousemoveevent = true
opt.number         = true
opt.ruler          = true
opt.pumheight      = 16
opt.scrolloff      = 8 
opt.sidescrolloff  = 8
opt.sidescroll     = 0
opt.signcolumn     = 'yes:1'
opt.splitright     = true
opt.splitbelow     = true
opt.swapfile       = false
opt.undofile       = true
opt.wrap           = false
opt.linebreak      = true
opt.breakindent    = true
opt.conceallevel   = 2
opt.autowriteall   = true
opt.virtualedit    = 'block'
opt.completeopt    = 'menuone'
opt.termguicolors = true
opt.cursorlineopt = 'number'
opt.gcr = {
  'i-c-ci-ve:blinkoff500-blinkon500-ver100-TermCursor',
  'n-v:block-Curosr/lCursor',
  'o:hor50-Curosr/lCursor',
  'r-cr:hor20-Curosr/lCursor',
}
opt.clipboard:append('unnamedplus')
opt.listchars:append({ nbsp = '␣' })
  opt.fillchars:append({
    foldopen  = '',
    foldclose = '',
    diff      = '╱',
  })
opt.softtabstop = 4
opt.shiftwidth  = 4
opt.expandtab   = true
opt.smartindent = true
opt.autoindent  = true

opt.ignorecase  = true
opt.smartcase   = true

