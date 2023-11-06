-- space bar
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- jump out to the file's directory
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move between windows
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", { desc = "[W]indow [H]" })
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", { desc = "[W]indow [J]" })
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", { desc = "[W]indow [K]" })
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", { desc = "[W]indow [L]" })

-- go back to last file
vim.keymap.set("n", "<leader>b", "<C-^>", { desc = "[B]ack" })

-- nicer splits
vim.keymap.set("n", "<leader>vs", ":vs<CR>", { desc = "[V]ertical [S]plit" })
vim.keymap.set("n", "<leader>hs", ":sp<CR>", { desc = "[H]orizontal [S]plit" })


