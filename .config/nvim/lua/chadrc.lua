-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = { load_on_startup = true }
M.ui = {
 statusline = {
   theme = "default",
   separator_style = "round",
 },
}

M.colorify = {
 enabled = true,
 mode = "bg", -- fg, bg, virtual
 -- virt_text = "󱓻 ",
 highlight = { hex = true, lspvars = true },
}

return M
