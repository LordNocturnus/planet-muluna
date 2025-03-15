local flib_data_util=require("__flib__.data-util")

local crusher_2=table.deepcopy(data.raw["assembling-machine"]["crusher"])

crusher_2.name="crusher-2"
crusher_2.module_slots=4
crusher_2.minable.result="crusher-2"
crusher_2.graphics_set = require("__planet-muluna__.graphics.entities.crusher.crusher-2-pictures")
crusher_2.crafting_speed=crusher_2.crafting_speed*1.5
local energy, suffix=flib_data_util.get_energy_value(crusher_2.energy_usage)
crusher_2.energy_usage=tostring(energy*2) .. suffix

--crusher_2.energy_usage=crusher_2.crafting_speed*2
crusher_2.localised_name={"",{"item-name.crusher"}," 2"}

data:extend{crusher_2}

data.raw["assembling-machine"]["crusher"].next_upgrade = crusher_2.name