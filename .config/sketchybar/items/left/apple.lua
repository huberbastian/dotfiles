local icons = require("icons")
local colors = require("colors")

sbar.add("item", "apple_logo", {
  position = "left",
  padding_left = 2,
  padding_right = 4,
  icon = {
    string = icons.apple,
    font = {
      style = "Regular",
      size = 16.0,
    },
    color = colors.white,
  },
  label = {
    drawing = false,
  },
  click_script = "open -a 'System Preferences'",
})
