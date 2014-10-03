--script for the facory
local buildspot = piece "body"
local door = piece "door"

function script.Create()
end

function script.Killed()

end

--------BUILDING---------
function script.QueryBuildInfo() 
	return buildspot	--the unit will be constructed at the position of this piece
end


function script.Activate()
	SetUnitValue(COB.YARD_OPEN, 1)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	SetUnitValue(COB.BUGGER_OFF, 1)
	return 1
end

function script.Deactivate()
	SetUnitValue(COB.YARD_OPEN, 0)
	SetUnitValue(COB.INBUILDSTANCE, 0)
	SetUnitValue(COB.BUGGER_OFF, 0)
	return 0
end


function script.StartBuilding()	
	--animation
end

function script.StopBuilding()
	--animation
	Move(door,y_axis,-30,30)
	Sleep(2000)
	Move(door,y_axis,0,30)
end
---------------------