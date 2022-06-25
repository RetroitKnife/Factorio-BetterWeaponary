--testTurret.lua
--author: RetroitKnife

local testTurret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
testTurret.name = "test-turret"

testTurret.inventory_size = 1
testTurret.attacking_speed = 100
testTurret.max_health = 12321

data:extend{testTurret}
data.raw["ammo-turret"]["test-turret"].fast_replaceable_group = "gun-turret"

data:extend(
	{
		{
			type = "item",
			name = "test-turret",
			icon = "__base__/graphics/icons/gun-turret.png",
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "defensive-structure",
			stack_size = 42,
			place_result = "test-turret"
		}
	}
)
