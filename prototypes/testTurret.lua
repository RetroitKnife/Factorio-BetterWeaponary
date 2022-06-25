--testTurret.lua
--author: RetroitKnife

local testTurret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
testTurret.name = "test-turret"

data:extend{testTurret}
