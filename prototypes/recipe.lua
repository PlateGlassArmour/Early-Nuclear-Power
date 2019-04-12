data:extend(
{
  {
    type = "recipe-category",
    name = "crude-centrifuging"
  },
  {
    type = "recipe",
    name = "low-temp-heat-exchanger",
    energy_required = 3,
    enabled = true,
    ingredients = {{"iron-plate", 10}, {"copper-plate", 25}, {"pipe", 5}},
    result = "low-temp-heat-exchanger"
  },
  {
    type = "recipe",
    name = "low-temp-heat-pipe",
    energy_required = 1,
    enabled = true,
    ingredients = {{"iron-plate", 2}, {"copper-plate", 10}},
    result = "low-temp-heat-pipe"
  },
  {
    type = "recipe",
    name = "crude-nuclear-reactor",
    energy_required = 8,
    enabled = true,
    ingredients =
    {
      {"stone-brick", 100},
      {"iron-plate", 50},
      {"electronic-circuit", 50},
      {"copper-plate", 50}
    },
    result = "crude-nuclear-reactor",
    requester_paste_multiplier = 1
  },
  {
    type = "recipe",
    name = "breeder-nuclear-reactor",
    energy_required = 8,
    enabled = false,
    ingredients =
    {
      {"stone-brick", 200},
      {"steel-plate", 100},
      {"electronic-circuit", 250},
      {"copper-plate", 250},
	  {"uranium-235", 10}
    },
    result = "breeder-nuclear-reactor",
    requester_paste_multiplier = 1
  },
  {
    type = "recipe",
    name = "crude-centrifuge",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"stone-brick", 50},
      {"iron-gear-wheel", 50},
      {"electronic-circuit", 50},
      {"copper-plate", 50}
    },
    result = "crude-centrifuge",
    requester_paste_multiplier = 10
  },
  {
    type = "recipe",
    name = "crude-uranium-processing",
    energy_required = 15,
    enabled = false,
    category = "crude-centrifuging",
    ingredients = {{"uranium-ore", 15}},
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "jz", -- k ordering so it shows up after explosives which is j ordering
    results =
    {
      {
        name = "uranium-235",
        probability = 0.005,
        amount = 1
      },
      {
        name = "uranium-238",
        probability = 0.895,
        amount = 1
      },
	  {
        name = "stone",
        probability = 0.10,
        amount = 1
      }
    }
  },
  {
    type = "recipe",
    name = "crude-enrichment",
    energy_required = 100,
    enabled = false,
    category = "crude-centrifuging",
    ingredients = {{"uranium-235", 1}, {"uranium-238", 10}},
    icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-bz",
    main_product = "",
    results = 
	{
	  {
        name = "uranium-235",
        amount = 1
      },
      {
        name = "uranium-235",
        probability = 0.5,
        amount = 1
      }
    },	  
    allow_decomposition = false
  },
  
  {
    type = "recipe",
    name = "dirty-bomb",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"processing-unit", 10},
      {"explosives", 10},
      {"plutonium", 10}
    },
    result = "dirty-bomb"
  },
  
  {
    type = "recipe",
    name = "portable-breeder-reactor-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"advanced-circuit", 200},
      {"breeder-nuclear-reactor", 1},
	  {"steel-plate", 50}
    },
    result = "portable-breeder-reactor-equipment"
  },
  
  {
    type = "recipe",
    name = "RTG",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"electronic-circuit", 20},
      {"plutonium", 10},
	  {"steel-plate", 5}
    },
    result = "RTG-equipment"
  },
  
  {
    type = "recipe",
    name = "crude-plutonium-processing",
    energy_required = 100,
    enabled = false,
    category = "crude-centrifuging",
    ingredients = {{"uranium-238", 20}},
    icon = "__Early_Nuclear_Power__/graphics/icons/plutonium.png",
    icon_size = 32,
    subgroup = "raw-material",
    order = "jy", -- k ordering so it shows up after explosives which is j ordering
    results = 
	{
	  {
        name = "plutonium",
        amount = 1
      }
	}  
  }
  
}
)