local base = piece "base"
local body = piece "body"
local turret = piece "turret"
local gun = piece "gun"
local flare = piece "flare"

--local wheels = ()
--local numWheels = 6,
--for i = 1, numWheels do
--   wheels[i] = piece ("wheel_" .. i)
--end

local wheel1, wheel2, wheel3, wheel4, wheel5, wheel6 = piece ("wheel_1", "wheel_2", "wheel_3", "wheel_4", "wheel_5", "wheel_6")

local wheel_speed = math.rad(250) -- adjust to suit your unit's maxVelocity
--local WHEEL_ACCEL = math.rad(100) -- ditto

-- declares all the pieces we'll use in the script.

local SIG_AIM = 2

local RESTORE_DELAY = Spring.UnitScript.GetLongestReloadTime(unitID) * 2
-- picks a sensible time to wait before trying to turn the turret back to default.

function script.Create()
    return 0
end

local function RestoreAfterDelay(unitID)
    -- defines a local funtion to wait a bit, then move the turret back to how it was originally.
	Sleep(RESTORE_DELAY)
	Turn(turret, y_axis, 0, math.rad(180))
	Turn(gun, x_axis, 0, math.rad(180))
end

function script.AimWeapon(weaponID, heading, pitch)
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
    -- each time the Signal is called, all other functions with the same SignalMask will stop running. This makes sure the tank isn't trying to fire at something, and restore the turret position, at the same time.
	Turn(turret, y_axis, heading, math.rad(180))
	Turn(gun, x_axis, -pitch, math.rad(180))
	WaitForTurn(turret, y_axis)
	WaitForTurn(gun, x_axis)
	StartThread(RestoreAfterDelay)
	return true
end

function script.FireWeapon(weaponID)
	--EmitSfx(flare, 0)
end

function script.QueryWeapon() return flare end
-- The piece that the bullet/laser/whatever comes out of.

 function script.AimFromWeapon() return gun end
-- The unit looks from this piece down the QueryWeapon piece, to see whether it's aiming at anything.

function script.Killed(recentDamage, maxHealth)
		Explode(body, SFX.EXPLODE)
		Explode(turret, SFX.EXPLODE)
		Explode(gun, SFX.EXPLODE)
		Explode(wheel1, SFX.EXPLODE)
		Explode(wheel2, SFX.EXPLODE)
		Explode(wheel3, SFX.EXPLODE)
		Explode(wheel4, SFX.EXPLODE)
		Explode(wheel5, SFX.EXPLODE)
		Explode(wheel6, SFX.EXPLODE)
	return 0
end

function script.HitByWeapon(x,z,weaponDef,damage)
    -- This stops the unit taking damage until it's been built.
	if GetUnitValue(COB.BUILD_PERCENT_LEFT)>2 then return 0
	else return damage
	end
end


function script.StartMoving()

    Spin(wheel1, x_axis, wheel_speed)
	Spin(wheel2, x_axis, wheel_speed)
	Spin(wheel3, x_axis, wheel_speed)
	Spin(wheel4, x_axis, wheel_speed)
	Spin(wheel5, x_axis, wheel_speed)
	Spin(wheel6, x_axis, wheel_speed)

end

function script.StopMoving()

    StopSpin(wheel1, x_axis)
	StopSpin(wheel2, x_axis)
	StopSpin(wheel3, x_axis)
	StopSpin(wheel4, x_axis)
	StopSpin(wheel5, x_axis)
	StopSpin(wheel6, x_axis)

end


function script.StartMoving()

    Spin(wheel1, x_axis, wheel_speed, WHEEL_ACCEL)
	Spin(wheel2, x_axis, wheel_speed, WHEEL_ACCEL)
	Spin(wheel3, x_axis, wheel_speed, WHEEL_ACCEL)
	Spin(wheel4, x_axis, wheel_speed, WHEEL_ACCEL)
	Spin(wheel5, x_axis, wheel_speed, WHEEL_ACCEL)
	Spin(wheel6, x_axis, wheel_speed, WHEEL_ACCEL)

end

function script.StopMoving()

    StopSpin(wheel1, x_axis, WHEEL_ACCEL)
	StopSpin(wheel2, x_axis, WHEEL_ACCEL)
	StopSpin(wheel3, x_axis, WHEEL_ACCEL)
	StopSpin(wheel4, x_axis, WHEEL_ACCEL)
	StopSpin(wheel5, x_axis, WHEEL_ACCEL)
	StopSpin(wheel6, x_axis, WHEEL_ACCEL)

end

