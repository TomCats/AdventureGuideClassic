--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local dungeons = { }
local raids = { }

InstanceService = { }

function InstanceService.AddDungeon(dungeon)
	table.insert(dungeons, dungeon)
end

function InstanceService.AddRaid(raid)
	table.insert(raids, raid)
end

function InstanceService.GetDungeons()
	local filteredDungeons = { }
	for i, dungeon in ipairs(dungeons) do
		if dungeon.season then
			table.insert(filteredDungeons, dungeon)
		end
	end
	if C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == 2 then
		return filteredDungeons
	else
		return dungeons
	end
end

function InstanceService.GetRaids()
	return raids
end