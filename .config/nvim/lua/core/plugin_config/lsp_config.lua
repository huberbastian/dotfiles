require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'clangd',
        'cmake',
        'jdtls',
        'rust_analyzer',
        'texlab',
        'zk',
        'jedi_language_server',
    }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>nn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- lua server
require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

-- c++ server
require("lspconfig").clangd.setup {
    on_attach = on_attach
}

-- cmake server
require("lspconfig").cmake.setup {
    on_attach = on_attach
}

-- rust server
require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach
}

-- java server
require("lspconfig").jdtls.setup {
    on_attach = on_attach
}

-- latex server
require("lspconfig").texlab.setup {
    on_attach = on_attach
}

-- markdown server
require("lspconfig").zk.setup {
    on_attach = on_attach
}

-- python server
require("lspconfig").jedi_language_server.setup {
    on_attach = on_attach
}

