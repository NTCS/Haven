local nano = piece "body"

--local wheel1, wheel2, wheel3, wheel4 = piece ("wheel1", "wheel2", "wheel3", "wheel4")
local wheel_speed = math.rad(180)

function script.Create()

end

function script.Killed()

end

--------BUILDING---------
function script.StopBuilding()
	SetUnitValue(COB.INBUILDSTANCE, 0)
end

function script.StartBuilding(heading, pitch)	
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

function script.QueryNanoPiece()
     return nano
end

function moveCrane (angle)
	angle = math.rad (-angle)
	Turn (crane1, x_axis, angle, math.rad(50))
	Turn (crane2, x_axis, -angle*2, math.rad(100))	
end

function waitForCrane ()
	WaitForTurn (crane1, x_axis)
	WaitForTurn (crane2, x_axis)
end
----------------


----driving animation
--http://answers.springlobby.info/questions/427/howto-spinning-wheels-on-moving-units
function script.StartMoving()
--    Spin(wheel1, x_axis, wheel_speed)
--    Spin(wheel2, x_axis, wheel_speed)
--    Spin(wheel3, x_axis, wheel_speed)
--   Spin(wheel4, x_axis, wheel_speed)
end

function script.StopMoving()
--    StopSpin (wheel1,x_axis)
--    StopSpin (wheel2,x_axis)
--    StopSpin (wheel3,x_axis)
--    StopSpin (wheel4,x_axis)
end