--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

_G.SLASH_ADVENTUREGUIDECLASSIC1 = "/agc"
SlashCmdList["ADVENTUREGUIDECLASSIC"] = function(message)
	message = string.lower(message)
	if (message == "") then
		UI.ToggleEncounterJournal()
	elseif (message == "button") then
		MinimapButton.Toggle()
	else
		--todo: print usage instructions to the console
	end
end
