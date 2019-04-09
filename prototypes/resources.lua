local function autoplace_settings(name, coverage)
  local ret = {
    control = name,
    sharpness = 1,
    richness_multiplier = 300,
    richness_multiplier_distance_bonus = 0,
    richness_base = 1,
	coverage = coverage,
    starting_area_amount = 2000,
    peaks = {
      {
        noise_layer = name,
        noise_octaves_difference = -1.5,
        noise_persistence = 0.3,
      },
    }
  }
  for i, resource in ipairs({"loose-uranium-ore"}) do
    if resource ~= name then
      ret.starting_area_size = 600 * coverage
      ret.starting_area_amount = 1500
    end
  end
  return ret
end

local function resource(name, map_color, hardness, coverage)
  if hardness == nil then hardness = 0.9 end
  if coverage == nil then coverage = 0.008 end
  return {
    type = "resource",
    name = name,
    icon = "__base__/graphics/icons/uranium-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order="c",
    minable =
    {
      hardness = hardness,
      --mining_particle = name .. "-particle",
      mining_time = 1,
      result = "uranium-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = autoplace_settings(name, coverage),
    stage_counts = {2000, 1000, 600, 200, 100, 50, 10, 5},
    stages =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/uranium-ore/uranium-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
          {
          filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
          }
      }
    },
    map_color = {r=0, g=0.95, b=0},
  }
end

data:extend(
{
  resource("loose-uranium-ore")
}
)