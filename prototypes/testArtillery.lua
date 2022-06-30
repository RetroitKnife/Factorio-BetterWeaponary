--testArtillery.lua
--author: RetroitKnife

local testArtillery = table.deepcopy(data.raw["artillery-turret"]["artillery-turret"])
testArtillery.name = "test-artillery"

data:extend{testArtillery}

data:extend(
	{
		{
			type = "item",
			name = "test-artillery",
			icon = "__base__/graphics/icons/artillery-turret.png",
			icon_size = 64,
			icon_mipmaps = 4,
			subgroup = "defensive-structure",
			stack_size = 42,
			place_result = "test-artillery",
		}
	}
)
