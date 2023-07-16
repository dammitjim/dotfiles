-- space bar
vim.g.mapleader = " "

-- jump out to the file's directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move between windows
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")

vim.keymap.set("n", "<leader>h", "<C-W><C-H>")
vim.keymap.set("n", "<leader>j", "<C-W><C-J>")
vim.keymap.set("n", "<leader>k", "<C-W><C-K>")
vim.keymap.set("n", "<leader>l", "<C-W><C-L>")

-- format file using language server
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)

-- go back to last file
vim.keymap.set("n", "<leader>b", "<C-^>")

-- nicer splits
vim.keymap.set("n", "<leader>ss", ":vs<CR>")
vim.keymap.set("n", "<leader>sb", ":sp<CR>")
vim.keymap.set("n", "<leader>sr", "<C-W>=")

