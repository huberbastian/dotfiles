require "nvchad.mappings"

local isMac = jit.os == "OSX"

local map = vim.keymap.set

-- common mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- override terminal toggles on mac as alt is not available, only works on german keyboard layout
if isMac then
  map({ "n", "t" }, "C-ä", function()
    require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
  end, { desc = "terminal toggle vertical term" })

  map({ "n", "t" }, "C-ü", function()
    require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
  end, { desc = "terminal toggle horizontal term" })

  map({ "n", "t" }, "C-ö", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
  end, { desc = "terminal toggle floating term" })
end
