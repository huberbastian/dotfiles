local settings = require("settings")
local colors = require("colors")

-- Equivalent to the --default domain
sbar.default({
  updates = "when_shown",
  icon = {
    font = {
      family = settings.font,
      style = "Semibold",
      size = 14.0,
    },
    color = colors.white,
    padding_left = 3,
    padding_right = 3,
  },
  label = {
    font = {
      family = settings.font,
      style = "Semibold",
      size = 14.0,
    },
    color = colors.white,
    padding_left = 3,
    padding_right = 3,
  },
  background = {
    height = 30,
    corner_radius = 9,
    border_width = 2,
  },
  popup = {
    background = {
      border_width = 2,
      corner_radius = 9,
      border_color = colors.popup.border,
      color = colors.popup.bg,
      shadow = { drawing = true },
    },
    blur_radius = 20,
  },
  padding_left = 5,
  padding_right = 5
})

