require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local unmap = vim.keymap.del
unmap("n","<leader>/")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>/","<CMD>Oil<CR>", { desc = "Open parent directory" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
