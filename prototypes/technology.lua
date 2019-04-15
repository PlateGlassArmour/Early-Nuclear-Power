data:extend(
{
  {
    type = "technology",
    name = "intermediate-nuclear-technology",
    icon_size = 128,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "breeder-nuclear-reactor"
      }
    },
    prerequisites = { "crude-uranium-processing" },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "crude-uranium-processing",
    icon_size = 128,
    icon = "__base__/graphics/technology/uranium-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "crude-centrifuge"
      },
	  {
        type = "unlock-recipe",
        recipe = "crude-uranium-processing"
      }
    },
    prerequisites = { "logistic-science-pack" },
    unit =
    {
      count = 25,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "dirty-bomb",
    icon_size = 128,
    icon = "__base__/graphics/technology/atomic-bomb.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "dirty-bomb"
      }
    },
    prerequisites = { "crude-enrichment", "rocketry", "military-3" },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"military-science-pack", 1},
		{"production-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "crude-enrichment",
    icon_size = 128,
    icon = "__base__/graphics/technology/kovarex-enrichment-process.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "crude-enrichment"
      }
    },
    prerequisites = { "intermediate-nuclear-technology", "crude-uranium-processing" },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 25
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "portable-breeder-reactor",
    icon_size = 128,
    icon = "__base__/graphics/technology/nuclear-power.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "portable-breeder-reactor-equipment"
      }
    },
    prerequisites = { "intermediate-nuclear-technology", "modular-armor" },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 25
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "RTG",
    icon_size = 128,
    icon = "__Early_Nuclear_Power__/graphics/icons/RTG-research.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "RTG"
      },
	  {
        type = "unlock-recipe",
        recipe = "crude-plutonium-processing"
      }
    },
    prerequisites = { "intermediate-nuclear-technology", "modular-armor" },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 25
    },
    order = "c-k-d"
  },
  
  {
    type = "technology",
    name = "nuclear-fuel",
    icon_size = 128,
    icon = "__Early_Nuclear_Power__/graphics/icons/nuclear-fuel.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "plutonium-nuclear-fuel"
      }
    },
    prerequisites = { "intermediate-nuclear-technology", "rocket-fuel" },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-k-d"
  }
  
}
)