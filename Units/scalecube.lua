local unitName  =  "scalecube"

local unitDef  =  {
--Internal settings
    BuildPic = "placeholder.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "scalecube.s3o",
    name = "Scale Cube",
    Side = "TANKS",
    TEDClass = "TANK",
    UnitName = "tank",
    script = "scalecube_script.lua",
    
--Unit limitations and properties
    BuildTime = 3,
    Description = "Scale testing cube.",
    MaxDamage = 300,
    RadarDistance = 0,
    SightDistance = 400,
    SoundCategory = "TANK",
    Upright = 0,
    
--Energy and metal related
    BuildCostEnergy = 100,
    BuildCostMetal = 0,
    
--Pathfinding and related
    Acceleration = 0.15,
    BrakeRate = 0.1,
    FootprintX = 1,
    FootprintZ = 1,
    MaxSlope = 15,
    MaxVelocity = 2.0,
    MaxWaterDepth = 20,
    MovementClass = "Default2x2,
    TurnRate = 900,
    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 0,
    
--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "20 20 20",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
    
--Weapons and related
    BadTargetCategory = "NOTAIR",
    ExplodeAs = "TANKDEATH",
    NoChaseCategory = "AIR",

    weapons = {
        [1] = {
            def = "orangeblob",
        },
    },
}

local weaponDefs = {
    orangeblob = {
    name = "Orange Plasma Cannon",
    weapontype = "Cannon",
    accuracy = 10,
    areaofeffect = 100,
    avoidfeature = false,
    avoidfriendly = true,
    canattackground = true,
    collidefriendly = true,
    collisionsize = 8,
    commandfire = false,
    craterboost = 0,
    cratermult = 0,
    edgeeffectiveness = 0.1,
    explosionspeed = 128,
    impulseboost = 0,
    impulsefactor = 0,
    intensity = 1,
    noselfdamage = true,
    size = 4,
        soundstart = "tank_fire",
        soundhit = "orangeblob_explo",
    range = 250,
    reloadtime = 1.5,
    rgbcolor = "1.0 1.0 1.0",
    turret = true,
    texture1 = "projectile_microwave",
    weaponvelocity = 400,
		explosiongenerator = "custom:TANKGUN_FX",
    damage =
    {
        default = 55,
    },
    },
}


    unitDef.weaponDefs = weaponDefs
    return lowerkeys({ [unitName]  =  unitDef })