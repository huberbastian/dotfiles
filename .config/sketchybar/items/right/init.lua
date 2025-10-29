local colors = require("colors")

-- odered right to left
require("items.right.calendar")
require("items.right.volume")
require("items.right.battery")

sbar.add("bracket", { "/widget\\..*/" }, {
  background = {
    color = colors.bracket.bg,
    height = 28,
    corner_radius = 5,
  }
})
