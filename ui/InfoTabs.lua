--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("InfoTabs")
local overviewTab, lootTab, questTab, abilitiesTab, modelTab
local selectedTab

local function AddTab(label)
	local tab = CreateFrame("Button", nil, EncounterJournal.encounter.info)
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
	disabledTexture:SetDesaturated(true)
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
	tab.selected:Hide()
	return tab
end

local function extractVersion(versionString)
	local major, minor, patch = string.match(versionString, "(%d+)%.(%d+)%.(%d+)")
	return tonumber(major), tonumber(minor), tonumber(patch)
end

local function validateVersion(versionString)
	local major, minor, _ = extractVersion(versionString)
	return major == 1 and minor == 15
end

function component.Init(components_)
	overviewTab = AddTab("Overview")
	selectedTab = overviewTab
	EncounterJournal.encounter.info.overviewTab = overviewTab
	overviewTab:SetPoint("TOPLEFT", EncounterJournal.encounter.info, "TOPRIGHT", -12, -35)
	overviewTab.unselected:SetTexCoord(0.85546875, 0.94921875, 0.52441406, 0.56640625)
	overviewTab.selected:SetTexCoord(0.90234375, 0.99609375, 0.26953125, 0.31152344)
	overviewTab:SetScript("OnEnter", function (self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR", 0, 0)
		GameTooltip:AddLine("Overview")
		GameTooltip:Show()
	end)
	overviewTab:SetScript("OnLeave", function (self)
		GameTooltip:Hide()
	end)
	overviewTab:SetScript("OnClick", function()
		--tab.onclickFunc()
		--PanelTemplates_Tab_OnClick(tab, EncounterJournal.encounter.info)
		--PanelTemplates_SetTab(EncounterJournal.encounter.info, tabIdx)
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
	end)
	lootTab = AddTab("Loot")
	EncounterJournal.encounter.info.lootTab = lootTab
	lootTab:SetPoint("TOP", overviewTab, "BOTTOM", 0, 2)
	lootTab.unselected:SetTexCoord(0.73046875, 0.82421875, 0.61816406, 0.66015625)
	lootTab.selected:SetTexCoord(0.63281250, 0.72656250, 0.61816406, 0.66015625)
	lootTab:SetScript("OnEnter", function (self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR", 0, 0)
		GameTooltip:AddLine("Loot")
		GameTooltip:Show()
	end)
	lootTab:SetScript("OnLeave", function (self)
		GameTooltip:Hide()
	end)
	lootTab:SetScript("OnClick", function()
		--tab.onclickFunc()
		--PanelTemplates_Tab_OnClick(tab, EncounterJournal.encounter.info)
		--PanelTemplates_SetTab(EncounterJournal.encounter.info, tabIdx)
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
	end)
	questTab = AddTab("Quests")
    EncounterJournal.encounter.info.questTab = questTab
    questTab:SetPoint("TOP", lootTab, "BOTTOM", 0, 2)
	questTab.selected:ClearAllPoints()
	questTab.unselected:ClearAllPoints()
    questTab.selected:SetTexture("interface/gossipframe/AvailableQuestIcon")
	questTab.selected:SetSize(25, 25)
    questTab.unselected:SetTexture("interface/gossipframe/AvailableQuestIcon")
	questTab.unselected:SetSize(25, 25)
	questTab.selected:SetPoint("CENTER", questTab, "CENTER")
    questTab.unselected:SetPoint("CENTER", questTab, "CENTER")
    questTab.selected:SetDrawLayer("OVERLAY")
    questTab.unselected:SetDrawLayer("OVERLAY")
	questTab:SetScript("OnEnter", function (self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR", 0, 0)
		GameTooltip:AddLine("Quest")
		GameTooltip:Show()
	end)
	questTab:SetScript("OnLeave", function (self)
		GameTooltip:Hide()
	end)
	questTab:SetScript("OnClick", function()
		--tab.onclickFunc()
		--PanelTemplates_Tab_OnClick(tab, EncounterJournal.encounter.info)
		--PanelTemplates_SetTab(EncounterJournal.encounter.info, tabIdx)
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
	end)
	abilitiesTab = AddTab("Abilities")
	EncounterJournal.encounter.info.abilitiesTab = abilitiesTab
	abilitiesTab:SetPoint("TOP", questTab, "BOTTOM", 0, 2)
	abilitiesTab.unselected:SetTexCoord(0.904296875, 0.99609375, 0.70703125, 0.748046875)
	abilitiesTab.selected:SetTexCoord(0.806640625, 0.8984375, 0.70703125, 0.748046875)
	abilitiesTab:SetScript("OnEnter", function (self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR", 0, 0)
		GameTooltip:AddLine("Abilities")
		GameTooltip:Show()
	end)
	abilitiesTab:SetScript("OnLeave", function (self)
		GameTooltip:Hide()
	end)
	abilitiesTab:SetScript("OnClick", function()
		--tab.onclickFunc()
		--PanelTemplates_Tab_OnClick(tab, EncounterJournal.encounter.info)
		--PanelTemplates_SetTab(EncounterJournal.encounter.info, tabIdx)
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
	end)
	modelTab = AddTab("Model")
	EncounterJournal.encounter.info.modelTab = modelTab
	modelTab:SetPoint("TOP", abilitiesTab, "BOTTOM", 0, 2)
	modelTab.unselected:SetTexCoord(0.90234375, 1, 0.662109375, 0.705078125)
	modelTab.selected:SetTexCoord(0.8046875, 0.900390625, 0.662109375, 0.705078125)
	modelTab:SetScript("OnEnter", function (self)
		GameTooltip:SetOwner(self, "ANCHOR_CURSOR", 0, 0)
		GameTooltip:AddLine("Model")
		GameTooltip:Show()
	end)
	modelTab:SetScript("OnLeave", function (self)
		GameTooltip:Hide()
	end)
end

local function selectTab(tab)
	tab.selected:Show()
	tab.unselected:Hide()
	tab:SetHighlightLocked(true)
	tab:SetEnabled(true)
end

local function unselectTab(tab)
	tab.selected:Hide()
	tab.unselected:Show()
	tab:SetHighlightLocked(false)
	tab:SetEnabled(true)
	tab.unselected:SetDesaturated(false)
end

local function disableTab(tab)
	tab.selected:Hide()
	tab.unselected:Show()
	tab:SetHighlightLocked(false)
	tab:SetEnabled(false)
	tab.unselected:SetDesaturated(true)
end

function component.Refresh()
	selectTab(selectedTab)
	if (selectedTab ~= overviewTab) then
		unselectTab(overviewTab)
	end
	if (selectedTab ~= lootTab) then
		unselectTab(lootTab)
	end
	disableTab(questTab)
	if (selectedTab ~= abilitiesTab) then
		if (AdventureGuideNavigationService.GetEncounter()) then
			unselectTab(abilitiesTab)
		else
			disableTab(abilitiesTab)
		end
	end
	if (selectedTab ~= modelTab) then
		if (AdventureGuideNavigationService.GetEncounter()) then
			unselectTab(modelTab)
		else
			disableTab(modelTab)
		end
	end
end


UI.Add(component)
