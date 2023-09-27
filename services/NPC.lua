--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local dataMineTooltipName = ("%sDatamineTooltip"):format(addonName)
local dataMineTooltip = _G.CreateFrame("GameTooltip", dataMineTooltipName, UIParent, "GameTooltipTemplate")
local dataMineNameText = _G[("%sDatamineTooltipTextLeft1"):format(addonName)]
local npcNameCache = { }


NPCService = { }

function NPCService.GetName(npcID)
	local npcName = npcNameCache[npcID]
	if (not npcName) then
		dataMineTooltip:SetOwner(UIParent, "ANCHOR_NONE")
		dataMineTooltip:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(npcID))
		npcName = dataMineNameText:GetText()
		if (npcName) then
			npcNameCache[npcID] = npcName
		end
	end
	return npcName
end
