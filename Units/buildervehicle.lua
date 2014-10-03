local unitName = "buildervehicle"

local unitDef = {
name = "Plymouth Convec",
Description = "a crane that builds stuff. has heavy armour that prevents damage from maschine guns (see armordefs.lua)",
objectName = "plymouth_convec.s3o",
script = "buildervehicle.lua",
buildPic = "ico_plymouth_convec.png",
--cost
buildCostMetal = 500,
buildCostEnergy = 0,
buildTime = 5,
--Health
maxDamage = 800,
idleAutoHeal = 0,
--Movement
Acceleration = 0.2,
BrakeRate = 0.3,
FootprintX = 1,
FootprintZ = 1,
MaxSlope = 15,
MaxVelocity = 3.0,
MaxWaterDepth = 20,
MovementClass = "Default2x2",
TurnRate = 300,

sightDistance = 1000,

CanAttack = false,
CanGuard = true,
CanMove = true,
CanPatrol = true,
CanStop = true,
LeaveTracks = false, 
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,	
workerTime = 1,
buildDistance = 400,
terraformSpeed = 9001,
buildoptions = 
	{
	"plymouth_factory_vehicle",
	},

Category = [[LAND]],


}

return lowerkeys({ [unitName] = unitDef })