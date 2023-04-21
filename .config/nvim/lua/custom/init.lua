local autocmd = vim.api.nvim_create_autocmd
-- local opt = vim.opt

-- Indenting
-- opt.expandtab = true
-- opt.shiftwidth = 4
-- opt.smartindent = true
-- opt.tabstop = 4
-- opt.softtabstop = 4

-- Shell
vim.o.shell = "/usr/bin/fish"

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- autocmd('Filetype', {
--   pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript',
--     'yaml', 'lua', 'json'
--   },
--   command = 'setlocal shiftwidth=2 tabstop=2'
-- })

autocmd('Filetype', {
  pattern = { 'python', 'cs', 'java', 'cpp', 'c' },
  command = 'setlocal shiftwidth=4 tabstop=4'
})
