local api = require("nvim-tree.api")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set("n", "<leader>tt", api.tree.toggle, {desc = "[T]oggle [T]ree"})
