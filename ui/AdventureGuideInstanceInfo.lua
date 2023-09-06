--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideInstanceInfo")

local components, currentView

function component.Init(components_)
	components = components_
	local encounter = CreateFrame("Frame", nil, EncounterJournal)
	component.frame = encounter
	EncounterJournal.encounter = encounter
	encounter:SetPoint("TOPLEFT", EncounterJournal.inset, "TOPLEFT", 0, 0)
	encounter:SetPoint("BOTTOMRIGHT", EncounterJournal.inset, "BOTTOMRIGHT", -3, 0)
	local info = CreateFrame("Frame", nil, encounter)
	encounter.info = info
	info:SetSize(785, 425)
	info:SetPoint("BOTTOMRIGHT", -1, 2)
	info.bg = info:CreateTexture()
	info.bg:SetDrawLayer("BACKGROUND", 1)
	info.bg:SetTexture("Interface/EncounterJournal/UI-EJ-JournalBG")
	info.bg:SetTexCoord(0, 0.766601562, 0, 0.830078125)
	info.bg:SetAllPoints()
	info.leftShadow = info:CreateTexture()
	info.leftShadow:SetDrawLayer("BACKGROUND", 3)
	info.leftShadow:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	info.leftShadow:SetTexCoord(0, 0.755859375, 0.9599609375, 1)
	info.leftShadow:SetSize(386, 39)
	info.leftShadow:SetPoint("TOPLEFT", 0, -11)
	info.rightShadow = info:CreateTexture()
	info.rightShadow:SetDrawLayer("BACKGROUND", 3)
	info.rightShadow:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	info.rightShadow:SetTexCoord(0.755859375, 0, 0.9599609375, 1)
	info.rightShadow:SetSize(386, 39)
	info.rightShadow:SetPoint("TOPRIGHT", 0, -11)
	info.encounterTitle = info:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	Mixin(info.encounterTitle, AutoScalingFontStringMixin)
	info.encounterTitle:SetJustifyH("LEFT")
	info.encounterTitle:SetSize(220, 12)
	info.encounterTitle:SetMinLineHeight(9)
	info.encounterTitle:SetPoint("BOTTOMLEFT", info, "TOPRIGHT", -350, -36)
	info.encounterTitle:SetTextColor(0.902, 0.788, 0.671)
	info.instanceTitle = info:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	info.instanceTitle:SetJustifyH("LEFT")
	info.instanceTitle:SetSize(290, 12)
	info.instanceTitle:SetPoint("TOPLEFT", 65, -20);
	info.instanceTitle:SetTextColor(0.902, 0.788, 0.671)
	info.instanceButton = CreateFrame("Button", nil, info)
	info.instanceButton:SetMotionScriptsWhileDisabled(true)
	info.instanceButton:SetSize(64, 61)
	info.instanceButton:SetPoint("TOPLEFT", 0, -3)
	info.instanceButton.icon = info.instanceButton:CreateTexture()
	info.instanceButton.icon:SetDrawLayer("BACKGROUND", 6)
	info.instanceButton.icon:SetSize(64, 64)
	info.instanceButton.icon:SetPoint("TOPLEFT", 6.5, -7)
	local instanceButtonBorder = info.instanceButton:CreateTexture()
	instanceButtonBorder:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	instanceButtonBorder:SetTexCoord(0.50585938, 0.63085938, 0.02246094, 0.08203125)
	info.instanceButton:SetNormalTexture(instanceButtonBorder)
	local instanceButtonBorderHighlight = info.instanceButton:CreateTexture()
	instanceButtonBorderHighlight:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	instanceButtonBorderHighlight:SetTexCoord(0.50585938, 0.63085938, 0.02246094, 0.08203125)
	info.instanceButton:SetHighlightTexture(instanceButtonBorderHighlight, "ADD")
	--todo: set OnClick
	encounter:Hide()
end

function component.ShowInstanceInfo(instanceID)
	local instance = DungeonsByInstanceID[instanceID]
	if (not instance) then
		instance = RaidsByInstanceID[instanceID]
	end
	component.frame.info.instanceTitle:SetText(instance.name)
	component.frame.info.instanceButton.icon:SetMask(I.InstanceButtonIconMask);
	component.frame.info.instanceButton.icon:SetTexture(instance.buttonImage2)
	components.AdventureGuideInstanceLore.ShowInstanceLore(instanceID)
	--components.AdventureGuideEncounterOverview.ShowEncounterOverview()
	components.AdventureGuideEncounters.SetInstance(instance)
	components.AdventureGuideContainer.SetCurrentView(component.frame)
	components.AdventureGuideNavBar.SetInstance(instance.instanceID)
	components.AdventureGuideNavBar.SetEncounter()
	components.AdventureGuideNavBar.Refresh()
end

function component.SetCurrentView(newView)
	if (currentView and currentView ~= newView) then
		currentView:Hide()
		currentView = newView
		currentView:Show()
	else
		currentView = newView
		currentView:Show()
	end
end

UI.Add(component)
