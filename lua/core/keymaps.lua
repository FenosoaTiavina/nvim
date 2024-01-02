local function map(mode, lhs, rhs , opts)
    opts.silent = true
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- <leader> = the space key

-- Save
map("n", "<leader>w", "<CMD>update<CR>", {desc ="Update"})

-- Quit
map("n", "<leader>q", "<CMD>q<CR>", {desc ="Quit"})

-- Exit insert mode
map("i", "jk", "<ESC>", {desc ="Exit insert mode"})

-- Windows
map("n", "<leader>sv", "<CMD>vsplit<CR>", {desc ="Vertical split"})
map("n", "<leader>sh", "<CMD>split<CR>", {desc ="Horizontal split"})
-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>", {desc ="Next Buffer"})
map("n", "<S-TAB>", "<CMD>bprevious<CR>", {desc ="Previous Buffer"})
map("n", "<leader>bd", "<CMD>bdelete<CR>", {desc = "Close current buffer"})
map("n", "<leader>bf", vim.lsp.buf.format, {desc="Format current buffer"})

-- Window Navigation
map("n", "<C-h>", "<C-w>h", {desc ="Swicth Window up"})
map("n", "<C-l>", "<C-w>l", {desc ="Swicth Window right"})
map("n", "<C-k>", "<C-w>k", {desc ="Swicth Window down"})
map("n", "<C-j>", "<C-w>j", {desc ="Swicth Window left"})

-- Resize Windows
map("n", "<C-Left>", "<C-w><", {desc ="Resize Window Left"})
map("n", "<C-Right>", "<C-w>>", {desc ="Resize Window Right"})
map("n", "<C-Up>", "<C-w>+", {desc ="Resize Window Up"})
map("n", "<C-Down>", "<C-w>-", {desc ="Resize Window Down"})
