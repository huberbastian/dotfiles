local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
  height = 32,
  color = colors.bar.bg,
  blur_radius = 40,
  shadow = true,
  sticky = true,
  padding_right = 15,
  padding_left = 15,
  topmost="window",
})
