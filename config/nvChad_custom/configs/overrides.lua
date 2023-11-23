local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "java",
    "bash",
    "c_sharp",
    "cpp",
    "fish",
    "json",
    "latex",
    "python",
    "php",
    "rust",
    "yuck",
    "clojure",
    "cmake",
    "scala",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "quick-lint-js",
    "vtsls",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- other
    "bash-language-server",
    "clang-format",
    "cmake-language-server",
    "haskell-language-server",
    "jdtls",
    "jedi-language-server",
    "rust-analyzer",
    "zk",
    "csharp_ls",
    "clojure-lsp",
    "texlab",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    root_folder_label = "none",
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
