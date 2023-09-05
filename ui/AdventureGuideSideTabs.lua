--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local AdventureGuideInstanceInfo

local component = UI.CreateComponent("AdventureGuideSideTabs")

local function AddTab(label)
	local tab = CreateFrame("Button", nil, AdventureGuideInstanceInfo.frame.info)
	tab:SetFrameLevel(510)
	tab:SetSize(63, 57)
	local normalTexture = tab:CreateTexture()
	normalTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	normalTexture:SetSize(63, 57)
	normalTexture:SetTexCoord(0.25585938, 0.37890625, 0.90332031, 0.95898438)
	tab:SetNormalTexture(normalTexture)
	local pushedTexture = tab:CreateTexture()
	pushedTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	pushedTexture:SetSize(63, 57)
	pushedTexture:SetTexCoord(0.12890625, 0.25195313, 0.90332031, 0.95898438)
	tab:SetPushedTexture(pushedTexture)
	local disabledTexture = tab:CreateTexture()
	disabledTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	disabledTexture:SetSize(63, 57)
	disabledTexture:SetTexCoord(0.25585938, 0.37890625, 0.90332031, 0.95898438)
	tab:SetDisabledTexture(disabledTexture)
	local highlightTexture = tab:CreateTexture()
	highlightTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	highlightTexture:SetSize(63, 57)
	highlightTexture:SetTexCoord(0.00195313, 0.12500000, 0.90332031, 0.95898438)
	tab:SetHighlightTexture(highlightTexture)
	tab.unselected = tab:CreateTexture(nil, "OVERLAY")
	tab.unselected:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	tab.unselected:SetSize(48, 43)
	tab.unselected:SetPoint("RIGHT", -6, 0)
	tab.selected = tab:CreateTexture(nil, "OVERLAY")
	tab.selected:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	tab.selected:SetSize(48, 43)
	tab.selected:SetPoint("CENTER", tab.unselected, "CENTER", 0, 0)
	return tab
end
--[[

]]

function component.Init(components_)
	AdventureGuideInstanceInfo = components_.AdventureGuideInstanceInfo
	AdventureGuideInstanceInfo.Tabs = tabs
	local overviewTab = AddTab("Overview")
	overviewTab:SetPoint("TOPLEFT", AdventureGuideInstanceInfo.frame.info, "TOPRIGHT", -12, -35)
	overviewTab.unselected:SetTexCoord(0.85546875, 0.94921875, 0.52441406, 0.56640625)
	overviewTab.selected:SetTexCoord(0.90234375, 0.99609375, 0.26953125, 0.31152344)
	local lootTab = AddTab("Loot")
	lootTab:SetPoint("TOP", overviewTab, "BOTTOM", 0, 2)
	lootTab.unselected:SetTexCoord(0.73046875, 0.82421875, 0.61816406, 0.66015625)
	lootTab.selected:SetTexCoord(0.63281250, 0.72656250, 0.61816406, 0.66015625)
	local abilitiesTab = AddTab("Abilities")
	abilitiesTab:SetPoint("TOP", lootTab, "BOTTOM", 0, 2)
	abilitiesTab.unselected:SetTexCoord(0.904296875, 0.99609375, 0.70703125, 0.748046875)
	abilitiesTab.selected:SetTexCoord(0.806640625, 0.8984375, 0.70703125, 0.748046875)
	local modelTab = AddTab("Model")
	modelTab:SetPoint("TOP", abilitiesTab, "BOTTOM", 0, 2)
	modelTab.unselected:SetTexCoord(0.90234375, 1, 0.662109375, 0.705078125)
	modelTab.selected:SetTexCoord(0.8046875, 0.900390625, 0.662109375, 0.705078125)
end

UI.Add(component)