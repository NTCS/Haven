--http://springrts.com/wiki/Modinfo.lua
local modinfo = {
	name = "Haven: The Last Outpost",
	shortname = "HHLO",
	game = "HHLO",
	shortgame = "HHLO",
	description = "Spiritual Successor to Outpost 2",
	url = "http://newterrancommandsite.com/forums/viewtopic.php?f=16&t=32",
	version = "0.0.4", --when zipping .sdz for releasing make this a full integer like 1,2,3
	modtype = 1,
	depend = {
		"cursors.sdz",
	}
}
return modinfo