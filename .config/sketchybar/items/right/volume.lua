local colors = require("colors")
local icons = require("icons")

local volume_icon = sbar.add("item", "widget.volume_icon", {
  position = "right",
  icon = {
    string = icons.volume._100,
    color = colors.white,
    font = {
      style = "Regular",
      size = 13.0,
    },
  },
})

volume_icon:subscribe("volume_change", function(env)
  local volume = tonumber(env.INFO)
  local v_icon = icons.volume._0
  if volume > 60 then
    v_icon = icons.volume._100
  elseif volume > 30 then
    v_icon = icons.volume._66
  elseif volume > 10 then
    v_icon = icons.volume._33
  elseif volume > 0 then
    v_icon = icons.volume._10
  end

  volume_icon:set({ icon = { string = v_icon } })
end)
