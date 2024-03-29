--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("EncounterFrame")

local components, currentView

function component.Init(components_)
	components = components_
	local encounter = CreateFrame("Frame", nil, EncounterJournal)
	component.frame = encounter
	EncounterJournal.encounter = encounter
	encounter:SetPoint("TOPLEFT", EncounterJournal.inset, "TOPLEFT", 0, 0)
	encounter:SetPoint("BOTTOMRIGHT", EncounterJournal.inset, "BOTTOMRIGHT", -3, 0)
	encounter:Hide()
end

function component.ShowInstanceInfo(instance)
	component.frame.info.instanceTitle:SetText(instance.name)
	component.frame.info.instanceButton.icon:SetMask(I.InstanceButtonIconMask);
	component.frame.info.instanceButton.icon:SetTexture(instance.icon)
	components.InstanceOverview.Show(instance)
	--components.AbilitiesScrollFrame.ShowEncounterOverview()
	components.Encounters.SetInstance(instance)
	components.EncounterJournal.SetCurrentView(component.frame)
	components.NavBar.SetInstance(instance)
	components.NavBar.SetEncounter()
	components.NavBar.Refresh()
	components.InfoTabs.Refresh()
end

function component.SetCurrentView(newView)
	if (currentView) then
		currentView:Hide()
	end

	currentView = newView
	if currentView then
		currentView:Show()
	end
end

UI.Add(component)
