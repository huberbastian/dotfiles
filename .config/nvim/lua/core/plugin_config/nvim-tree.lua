vim.g.loaded_netrw = 1
vim.g.loaded_netrmPlugin = 1

require("nvim-tree").setup()

-- Toggle with Ctrl+n
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
