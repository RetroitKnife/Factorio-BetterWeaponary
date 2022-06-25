--testArmor.lua
--author: RetroitKnife

local testArmor = table.deepcopy(data.raw["armor"]["light-armor"])
testArmor.name = "test-armor"

testArmor.icons = {
	{
		icon = testArmor.icon,
		tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.3 }
	}
}

testArmor.stack_size = 42

data:extend{testArmor}
