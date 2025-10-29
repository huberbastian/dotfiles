local colors = require("colors")

local function reverse_table(tbl)
  for i = 1, #tbl//2, 1 do
    tbl[i], tbl[#tbl-i+1] = tbl[#tbl-i+1], tbl[i]
  end
  return tbl
end

local function prepare_workspace_table(spaces, reversed)
  -- Sort numerically (in case JSON isn’t ordered)
  table.sort(spaces, function(a, b)
    return tonumber(a.workspace) < tonumber(b.workspace)
  end)

  -- Reverse order if position is "q" or "right"
  if reversed then
    return reverse_table(spaces)
  end

  return spaces
end

local position = "q"
local reversed = position == "q" or position == "right"
sbar.exec("aerospace list-workspaces --all --json", function(spaces)
  local workspaces = prepare_workspace_table(spaces, reversed)
  for index, entry in ipairs(workspaces) do
    local sid = entry.workspace
    local is_first = (reversed and index == #workspaces) or (not reversed and index == 1)
    local is_last = (reversed and index == 1) or (not reversed and index == #workspaces)

    local item = "space." .. sid
    local space = sbar.add("item", item, {
      position = position,
      background = {
        height = 22,
        color = colors.transparent,
        corner_radius = 2,
        padding_left = is_first and 8 or 2,
        padding_right = is_last and 8 or 2,
      },
      label = {
        font = {
          family = "SF Mono",
          style = "Semibold",
          size = 14.0,
        },
        string = sid,
        color = colors.white,
        padding_left = 4,
        padding_right = 5,
      },
      icon = {
        drawing = false,
      },
      click_script = "aerospace workspace " .. sid
    })

    space:subscribe("aerospace_workspace_change", function(env)
    local selected = env.FOCUSED_WORKSPACE == sid
      space:set {
        background = {
          color = selected and 0x90ffffff or colors.transparent,
        },
        label = {
          color = selected and colors.black or colors.white,
        },
      }
    end)
  end

  sbar.add("bracket", { "/space\\..*/" }, {
    background = {
      color = colors.bracket.bg,
      height = 28,
      corner_radius = 5,
    }
  })
end)
