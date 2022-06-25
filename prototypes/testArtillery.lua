--testArtillery.lua
--author: RetroitKnife

local testArtillery = table.deepcopy(data.raw["artillery-turret"]["artillery-turret"])
testArtillery.name = "test-artillery"


testArtillery.icons = {
	{
		icon=testArtillery.icon,
		tint = { r = 0.0, g = 0.1, b = 0.3, a = 1.0 }		
	},
}

testArtillery.inventory_size = 42
testArtillery.ammo_stack_limit = 42
testArtillery.turret_rotation_speed = 10
testArtillery.manual_range_modifier = 42

data:extend{testArtillery}
