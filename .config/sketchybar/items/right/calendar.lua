local cal = sbar.add("item", "cal", {
  position = "right",
  update_freq = 15,
  icon = {
    padding_right = 5,
    font = {
      style = "Bold",
      size = 14.0,
    },
  },
  label = {
    font = {
      style = "Bold",
    },
    width = 45,
    align = "right",
  },
})

local function update()
  local date = os.date("%a %b %d")
  local time = os.date("%H:%M")
  cal:set({ icon = date, label = time })
end

cal:subscribe("routine", update)
cal:subscribe("forced", update)

