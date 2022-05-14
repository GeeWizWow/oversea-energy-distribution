
-- Support for  Schallfalke's Schall Transport Group mod
local subgroup_ship = "water_transport"
local subgroup_shipequip = "water_transport"

if mods["SchallTransportGroup"] then
  data:extend{
    {
      type = "item-subgroup",
      name = "water_transport2",
      group ="transport",
      order = "b-2",
    },
    {
      type = "item-subgroup",
      name = "water_equipment",
      group ="transport",
      order = "j-2",
    },
  }
  subgroup_ship = "water_transport2"
  subgroup_shipequip = "water_equipment"
end


data:extend{
  {
    type = "item-subgroup",
    name = "water_transport",
    group ="logistics",
    order = "e",
  },
  {
    type = "item",
    name = "floating-electric-pole",
    icon = GRAPHICSPATH .. "icons/floating_pole.png",
    icon_size = 64,
    flags = {},
    subgroup = subgroup_shipequip, --"energy-pipe-distribution",
    order = "a[energy]-d[floating-electric-pole]",
    place_result = "floating-electric-pole",
    stack_size = 50
  },
}

