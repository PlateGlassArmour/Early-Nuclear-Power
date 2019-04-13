require("prototypes.item")
require("prototypes.entity")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.fuel-category")
require("prototypes.autoplace-controls")
require("prototypes.noise-layers")
require("prototypes.resources")
require("prototypes.projectiles")
data.raw["item"]["uranium-ore"]["fuel_category"] = "crude-nuclear"
data.raw["item"]["uranium-ore"]["burnt_result"] = "stone"
data.raw["item"]["uranium-ore"]["fuel_value"] = "10MJ"
data.raw["item"]["uranium-238"]["fuel_category"] = "breeder-nuclear"
data.raw["item"]["uranium-238"]["burnt_result"] = "plutonium"
data.raw["item"]["uranium-238"]["fuel_value"] = "400MJ"
data.raw["heat-pipe"]["heat-pipe"]["fast_replaceable_group"] = "heat-pipe"
data.raw["boiler"]["heat-exchanger"]["fast_replaceable_group"] = "heat-exchanger"
data.raw["assembling-machine"]["centrifuge"]["fast_replaceable_group"] = "centrifuge"
data.raw["technology"]["uranium-processing"]["prerequisites"] = {"chemical-science-pack", "concrete", "sulfur-processing", "crude-uranium-processing"}
data.raw["technology"]["nuclear-power"]["prerequisites"] = {"uranium-processing", "intermediate-nuclear-technology"}
data.raw["technology"]["kovarex-enrichment-process"]["prerequisites"] = { "production-science-pack", "uranium-processing", "rocket-fuel", "crude-enrichment"}
data.raw["technology"]["atomic-bomb"]["prerequisites"] = {"military-4", "kovarex-enrichment-process", "rocket-control-unit", "rocketry", "dirty-bomb"}