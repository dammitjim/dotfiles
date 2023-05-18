-- space bar
vim.g.mapleader = " "

-- jump out to the file's directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move between windows
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

-- format file using language server
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>b", "<C-^>")
