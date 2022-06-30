--testTurret.lua
--author: RetroitKnife

--[[
		TODO: Test following stuff:
				- attacking speed
]]

local function logs(message)
	print("[testTurret] ", message)
end

local testTurret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
testTurret.name = "test-turret"
logs("Initialized testTurret")

-- set Turret values
testTurret.inventory_size = 1
testTurret.max_health = 1234321

data:extend{testTurret}

data.raw["ammo-turret"]["test-turret"].fast_replaceable_group = "gun-turret"
data.raw["ammo-turret"]["test-turret"].attacking_speed = 1
logs("Turret values set")

logs("Finished testTurret entity")

data:extend(
	{
		{
			type = "item",
			name = "test-turret",
			icon = "__base__/graphics/icons/gun-turret.png",
			tint = { r = 0.0, g = 0.0, b = 0.0, a = 0.0 },
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "defensive-structure",
			stack_size = 42,
			place_result = "test-turret",
		}
	}
)

logs("Finished testTurret item")
