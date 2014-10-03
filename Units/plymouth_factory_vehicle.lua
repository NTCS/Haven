local unitName = "plymouth_factory_vehicle"

local unitDef =
{
-- Internal settings	
	Category = "LAND",
	ObjectName = "plymouth_factory_vehicle.s3o",	
	TEDClass = "PLANT",
	script = "plymouth_factory_vehicle_script.lua",
	buildPic = "placeholder.png",
-- Unit limitations and properties
	Description = "a simple factory that builds mobile units",
	MaxDamage = 1500,
	Name = "Vehicle Factory",
	RadarDistance = 0,
	SightDistance = 400,	
	Upright = 1,	
	levelground = 1,
	--cost
	buildCostMetal = 200,
	buildCostEnergy = 0,
	buildTime = 5,
	--economy	
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 0, 
	MetalMake = 0,	
-- Pathfinding and related
	FootprintX = 6,
	FootprintZ = 5,
	MaxSlope = 10,	
	YardMap ="oooooo occccc occccc occccc oooooo ",

-- Building	
	Builder = true,
    Reclaimable = false,
	ShowNanoSpray = true,
	CanBeAssisted = false,	
	workerTime = 1,
	buildoptions = 
	{
	"hoverweapon",
	"simpleattackvehicle",
	"attackvehicledoublebarrel",
	"hovereffects",
	"simplewalker",
	"buildervehicle",
	"helicopter",
	"attackvehiclerocket",
	"attackvehiclemultimissile",
	"plymouth_lynx_microwave",
	"plymouth_cargotruck",
	"simplehover",
	
	
	},
}

return lowerkeys({ [unitName] = unitDef })