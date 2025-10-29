local front_app = sbar.add("item", "front_app", {
  position = "left",
  padding_right = 10,
  icon = {
    drawing = false
  },
  label = {
    font = {
      style = "Bold",
      size = 13.0,
    }
  }
})

front_app:subscribe("front_app_switched", function(env)
  front_app:set({
    label = {
      string = env.INFO
    }
  })
end)
