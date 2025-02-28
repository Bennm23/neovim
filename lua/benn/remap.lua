vim.g.mapleader = " "
vim.keymap.set("n", "<leader>go", vim.cmd.Ex)

-- Allow movement of code blocks up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Allow half page jumping with fixed cursor
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Allow cursor to stay in same location when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- When pasting over existing text, keep previously stored text
vim.keymap.set("x", "<leader>p", "\"_dP")


-- Past into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")


vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")












