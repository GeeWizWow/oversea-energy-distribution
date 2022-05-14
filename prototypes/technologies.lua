local function unlock(recipe)
  return {
    type = "unlock-recipe",
    recipe = recipe
  }
end

data:extend ({
{
  type = "technology",
  name = "oversea-energy-distribution",
  icon = GRAPHICSPATH .. "technology/oversea-energy-distribution.png",
  icon_size = 256,
  effects = {
    unlock("floating-electric-pole"),
  },
  prerequisites = {"electric-energy-distribution-1"},
  unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
    time = 30
  },
  order = "c-e-b",
},
})
