--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideNavBar")

local instanceID, encounterID

function component.Init(components)
	local navBar = CreateFrame("Frame", EncounterJournal:GetName() .. "NavBar", EncounterJournal, "NavBarTemplate")
	component.frame = navBar
	EncounterJournal.navBar = navBar
	navBar:SetSize(730, 34)
	navBar:SetPoint("TOPLEFT", 61, -22)
	local insetBotLeftCorner = navBar:CreateTexture(nil, "BORDER", "UI-Frame-InnerBotLeftCorner")
	insetBotLeftCorner:ClearAllPoints()
	insetBotLeftCorner:SetPoint("BOTTOMLEFT", -3, -3)
	local insetBotRightCorner = navBar:CreateTexture(nil, "BORDER", "UI-Frame-InnerBotRight")
	insetBotRightCorner:ClearAllPoints()
	insetBotRightCorner:SetPoint("BOTTOMRIGHT", 3, -3)
	local insetBottomBorder = navBar:CreateTexture(nil, "BORDER", "_UI-Frame-InnerBotTile")
	insetBottomBorder:ClearAllPoints()
	insetBottomBorder:SetPoint("BOTTOMLEFT", insetBotLeftCorner, "BOTTOMRIGHT")
	insetBottomBorder:SetPoint("BOTTOMRIGHT", insetBotRightCorner, "BOTTOMLEFT")
	local insetLeftBorder = navBar:CreateTexture(nil, "BORDER", "!UI-Frame-InnerLeftTile")
	insetLeftBorder:ClearAllPoints()
	insetLeftBorder:SetPoint("TOPLEFT", -3, 0)
	insetLeftBorder:SetPoint("BOTTOMLEFT", insetBotLeftCorner, "TOPLEFT")
	local insetRightBorder = navBar:CreateTexture(nil, "BORDER", "!UI-Frame-InnerRightTile")
	insetRightBorder:ClearAllPoints()
	insetRightBorder:SetPoint("TOPRIGHT", 3, 0)
	insetRightBorder:SetPoint("BOTTOMRIGHT", insetBotRightCorner, "TOPRIGHT")
	navBar.button2 = CreateFrame("Button", navBar:GetName() .. "Button2", navBar, "NavButtonTemplate")
	local homeData = {
		name = "Home",
		OnClick = function()
			if (instanceID) then
				if (DungeonsByInstanceID[instanceID]) then
					components.AdventureGuideInstanceSelect.ShowDungeons()
				else
					components.AdventureGuideInstanceSelect.ShowRaids()
				end
			end
		end,
	}
	NavBar_Initialize(navBar, "NavButtonTemplate", homeData, navBar.home, navBar.overflow);
	--local button2Data = {
	--	name = "Fooxy",
	--	OnClick = nop,
	--}
	--NavBar_AddButton(frame, button2Data)
	--NavBar_AddButton(frame, button2Data)

end

function component.SetInstance(instanceID_)
	instanceID = instanceID_
end

function component.SetEncounter(encounterID_)
	encounterID = encounterID_
end

function component.Refresh()
	NavBar_Reset(component.frame)
	if (instanceID) then
		local instance = DungeonsByInstanceID[instanceID]
		if (not instance) then
			instance = RaidsByInstanceID[instanceID]
		end
		NavBar_AddButton(component.frame, {
			name = instance.name,
			OnClick = function()
				components.EncounterJournalEncounterFrame.ShowInstanceInfo(instance.instanceID)
			end,
			listFunc = nop
		})
		if (encounterID) then
			NavBar_AddButton(component.frame, {
				name = Encounters[encounterID].name,
				listFunc = nop
			})
		end
	end
end

function component.Reset()
	instanceID = nil
	encounterID = nil
	NavBar_Reset(component.frame)
end

UI.Add(component)