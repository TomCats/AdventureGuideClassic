--[[
todo
DEPRECATED - TO BE REMOVED

Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AbilitiesScrollFrame")

local components

function component.Init(components_)
	components = components_
	local abilitiesScroll = CreateFrame("ScrollFrame", nil, EncounterJournal.encounter.info)
	component.frame = abilitiesScroll
	abilitiesScroll:SetSize(350, 383)
	abilitiesScroll.scrollBarX = -15
	abilitiesScroll.scrollBarTopY = -6
	abilitiesScroll.scrollBarBottomY = 6
	abilitiesScroll:SetPoint("BOTTOMRIGHT", -5, 1)
	abilitiesScroll.child = CreateFrame("Frame", nil, abilitiesScroll)
	abilitiesScroll.child:SetSize(320, 372)
	abilitiesScroll.child:SetPoint("TOPLEFT")
	abilitiesScroll.child.description = abilitiesScroll.child:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	abilitiesScroll.child.description:SetJustifyH("LEFT")
	abilitiesScroll.child.description:SetSize(0, 0)
	abilitiesScroll.child.description:SetPoint("TOPLEFT", 2, -8)
	abilitiesScroll.child.description:SetTextColor(0.25, 0.1484375, 0.02, 1)
	EncounterJournal.encounter.info.detailsScroll = abilitiesScroll
	EncounterJournal.encounter.infoFrame = abilitiesScroll.child
	ScrollFrame_OnLoad(abilitiesScroll)
	abilitiesScroll:Hide()
--[[
		<OnShow>
			EncounterJournal_HideCreatures();
			EncounterJournal.encounter.info.reset:Show()
			EncounterJournal.encounter.info.LootContainer:Hide()
			EncounterJournal.encounter.info.rightShadow:Show()
			EncounterJournal.encounter.info.encounterTitle:Show();
		</OnShow>
		<OnHide>
			if (not self:GetParent().overviewScroll:IsShown()) then
				EncounterJournal.encounter.info.reset:Hide();
			end
		</OnHide>
]]
	--EncounterJournal_DisplayEncounter(2473)
	-- populated via EncounterJournal_DisplayEncounter()
end

function component.ShowEncounterOverview(encounterID)
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)
