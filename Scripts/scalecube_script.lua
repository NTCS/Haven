local base = piece "body"
local body = piece "body"

-- declares all the pieces we'll use in the script.

function script.Create()
    return 0
end

----driving animation
--http://answers.springlobby.info/questions/427/howto-spinning-wheels-on-moving-units
function script.StartMoving()

end

function script.StopMoving()

end


---death animation
function script.Killed(recentDamage, maxHealth)
	Explode (body, SFX.SHATTER) 
end
