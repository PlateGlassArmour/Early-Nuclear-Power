data:extend (
{
 
 {
    type = "item",
    name = "crude-nuclear-reactor",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 32,
    subgroup = "energy",
    order = "fAa",
    place_result = "crude-nuclear-reactor",
    stack_size = 10
  },
  
   {
    type = "item",
    name = "breeder-nuclear-reactor",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 32,
    subgroup = "energy",
    order = "fAb",
    place_result = "breeder-nuclear-reactor",
    stack_size = 10
  },
  
  {
    type = "item",
    name = "low-temp-heat-pipe",
    icon = "__base__/graphics/icons/heat-pipe.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-c[heat-pipe]",
    place_result = "low-temp-heat-pipe",
    stack_size = 50
  },
  
  {
    type = "item",
    name = "low-temp-heat-exchanger",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-b[heat-exchanger]",
    place_result = "low-temp-heat-exchanger",
    stack_size = 50
  },
  
  {
    type = "item",
    name = "crude-centrifuge",
    icon = "__base__/graphics/icons/centrifuge.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "fz",
    place_result = "crude-centrifuge",
    stack_size = 50
  },
  
  {
    type = "ammo",
    name = "dirty-bomb",
    icon = "__base__/graphics/icons/atomic-bomb.png",
    icon_size = 32,
    ammo_type =
    {
      range_modifier = 3,
      cooldown_modifier = 3,
      target_type = "position",
      category = "rocket",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "dirty-bomb-rocket",
          starting_speed = 0.05,
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-bz",
    stack_size = 10
  },
  
  {
     type = "item",
     name = "portable-breeder-reactor-equipment",
     icon = "__base__/graphics/icons/nuclear-reactor.png",
     icon_size = 32,
     placed_as_equipment_result = "portable-breeder-reactor-equipment",
     subgroup = "equipment",
     order = "a[energy-source]-b[fusion-reactor]",
     stack_size = 5
  },
  
  {
    type = "generator-equipment",
    name = "portable-breeder-reactor-equipment",
    sprite =
    {
      filename = "__Early_Nuclear_Power__/graphics/icons/nuclear-reactor-equipment.png",
      width = 96,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
	burner =
			{
			fuel_category = "breeder-nuclear",
			effectivity = 0.1,
			emissions = 0.01,
			fuel_inventory_size = 1,
			burnt_inventory_size = 1,
				smoke =
				{
					{
					name = "turbine-smoke",
					deviation = { 0.1, 0.1 },
					frequency = 1,
					position = { 0, 1.25 },
					starting_vertical_speed = 0.06,
					starting_frame = 0,
					starting_frame_deviation = 60
					}
				}
			},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "500kW",
    categories = {"armor"}
  }
  
}
)