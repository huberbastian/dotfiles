---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!

M.general = {
  n = {
    ["<leader>lof"] = { ":LspStop <cr>", "turn lsp off for current buffer"},
    ["<leader>lon"] = { ":LspStart <cr>", "turn lsp on for current buffer"},
  },
}

return M
