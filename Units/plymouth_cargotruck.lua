local unitName = "plymouth_cargotruck"

local unitDef = {
name = "Cargo Truck",
Description = "a simple, mobile unit. does nothing but drive around.",
objectName = "plymouth_cargotruck.s3o",
script = "simplehover.lua",
buildPic = "ico_plymouth_cargotruck.png",
--cost
buildCostMetal = 100,
buildCostEnergy = 0,
buildTime = 5,
--Health
maxDamage = 100,
idleAutoHeal = 0,

--Movement
Acceleration = 0.2,
BrakeRate = 0.3,
FootprintX = 1,
FootprintZ = 1,
--MaxSlope = 15,
MaxVelocity = 8.0,
--MaxWaterDepth = 20,
MovementClass = "Default2x2",
canHover = false,
TurnRate = 900,

sightDistance = 300,

Category = [[LAND]],

Builder = false,
CanAttack = false,
CanGuard = true,
CanMove = true,
CanPatrol = true,
CanStop = true,
LeaveTracks = false, 
}

return lowerkeys({ [unitName] = unitDef })