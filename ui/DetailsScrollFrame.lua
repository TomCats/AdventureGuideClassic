--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("DetailsScrollFrame")

local components

function component.Init(components_)
	components = components_
	local detailsScroll = CreateFrame("ScrollFrame", nil, EncounterJournal.encounter.info)
	component.frame = detailsScroll
	detailsScroll:SetSize(350, 383)
	detailsScroll.scrollBarX = -15
	detailsScroll.scrollBarTopY = -6
	detailsScroll.scrollBarBottomY = 6
	detailsScroll:SetPoint("BOTTOMRIGHT", -5, 1)
	detailsScroll.child = CreateFrame("Frame", nil, detailsScroll)
	detailsScroll.child:SetSize(320, 372)
	detailsScroll.child:SetPoint("TOPLEFT")
	detailsScroll.child.description = detailsScroll.child:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	detailsScroll.child.description:SetJustifyH("LEFT")
	detailsScroll.child.description:SetSize(0, 0)
	detailsScroll.child.description:SetPoint("TOPLEFT", 2, -8)
	detailsScroll.child.description:SetTextColor(0.25, 0.1484375, 0.02, 1)
	EncounterJournal.encounter.info.detailsScroll = detailsScroll
	EncounterJournal.encounter.infoFrame = detailsScroll.child
	ScrollFrame_OnLoad(detailsScroll)
	detailsScroll:Hide()
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
