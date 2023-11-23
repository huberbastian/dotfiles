-- set 'space' as leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- set line numbers
vim.opt.number = true

-- clear seach with <space>h
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- switch panes
vim.keymap.set('n', '<c-j>', '<C-W>j')
vim.keymap.set('n', '<c-k>', '<C-W>k')
vim.keymap.set('n', '<c-h>', '<C-W>h')
vim.keymap.set('n', '<c-l>', '<C-W>l')

-- move to previous/next buffer(tab)
vim.keymap.set('n', '<Left>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<Right>', ':BufferNext<CR>')

-- reorder buffers
vim.keymap.set('n', '<C-Left>', ':BufferMovePrevious<CR>')
vim.keymap.set('n', '<C-Right>', ':BufferMoveNext<CR>')

-- pin/unpin buffer
vim.keymap.set('n', '<A-p>', ':BufferPin<CR>')

-- close buffer
vim.keymap.set('n', '<Down>', ':BufferClose<CR>')

-- show error messages
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
