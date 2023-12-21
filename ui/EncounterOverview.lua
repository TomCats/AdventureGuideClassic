--[[
todo
DEPRECATED - TO BE REMOVED

Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("EncounterOverview")

local components

function component.Init(components_)
	components = components_
	local overviewScroll = CreateFrame("ScrollFrame", nil, EncounterJournal.encounter.info)
	component.frame = overviewScroll
	EncounterJournal.encounter.info.overviewScroll = overviewScroll
	overviewScroll:SetSize(350, 383)
	overviewScroll.scrollBarX = -15
	overviewScroll.scrollBarTopY = -6
	overviewScroll.scrollBarBottomY = 6
	overviewScroll:SetPoint("BOTTOMRIGHT", -5, 1)
	overviewScroll.child = CreateFrame("Frame", nil, overviewScroll)
	overviewScroll.child:SetSize(320, 372)
	overviewScroll.child:SetPoint("TOPLEFT")
	overviewScroll.child.loreDescription = overviewScroll.child:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	overviewScroll.child.loreDescription:SetJustifyH("LEFT")
	overviewScroll.child.loreDescription:SetSize(0, 0)
	overviewScroll.child.loreDescription:SetPoint("TOPLEFT", 2, -8)
	overviewScroll.child.loreDescription:SetTextColor(0.25, 0.1484375, 0.02, 1)
	overviewScroll.child.header = overviewScroll.child:CreateTexture(nil, "ARTWORK")
	overviewScroll.child.header:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	overviewScroll.child.header:SetSize(327, 30)
	overviewScroll.child.header:SetTexCoord(0.359375, 0.99609375, 0.8525390625, 0.880859375)
	overviewScroll.child.header:SetPoint("TOP", overviewScroll.child.loreDescription, "BOTTOM", 0, -6)
	overviewScroll.child.title = overviewScroll.child:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	overviewScroll.child.title:SetSize(200, 10)
	overviewScroll.child.title:SetPoint("BOTTOMLEFT", overviewScroll.child.header, "BOTTOMLEFT", 8, 6)
	overviewScroll.child.overviewDescription = CreateFrame("Frame", nil, overviewScroll.child)
	overviewScroll.child.overviewDescription:SetSize(95, 10)
	overviewScroll.child.overviewDescription:SetPoint("TOP", overviewScroll.child.header, "BOTTOM", 0, -6)
	--frame.child.overviewDescription.Text = CreateFrame("SimpleHTML", nil, frame.child.overviewDescription,
	--		"AdventureGuideClassic_SampleEncounterDescription")
	--frame.child.overviewDescription.Text:SetAllPoints()
	overviewScroll.child.overviewDescription.Text = CreateFrame(
			"SimpleHTML", nil, overviewScroll.child.overviewDescription, "InlineHyperlinkFrameTemplate")
	overviewScroll.child.overviewDescription.Text:SetAllPoints()
	overviewScroll.child.overviewDescription.Text:SetFontObject("p", "GameFontBlack")
	overviewScroll.child.overviewDescription.Text:SetTextColor("p", 0.25, 0.1484375, 0.02, 1)
	overviewScroll.child.overviewDescription.Text:SetJustifyH("p", "LEFT")
	overviewScroll.child.overviewDescription.Text:SetJustifyV("p", "TOP")
	overviewScroll.child.overviewDescription.Text:SetScript("OnHyperlinkEnter", function() print(time())  end) -- EncounterJournal_OnHyperlinkEnter
	overviewScroll:SetScrollChild(overviewScroll.child)
	ScrollFrame_OnLoad(overviewScroll)
	overviewScroll:Hide()
	--[[
	<Scripts>
		<OnShow>
			EncounterJournal_HideCreatures();
			EncounterJournal.encounter.info.reset:Show()
			EncounterJournal.encounter.info.LootContainer:Hide()
			EncounterJournal.encounter.info.rightShadow:Show()
			EncounterJournal.encounter.info.encounterTitle:Show();
		</OnShow>
		<OnHide>
			if (not self:GetParent().detailsScroll:IsShown()) then
				EncounterJournal.encounter.info.reset:Hide()
			end
		</OnHide>
	</Scripts>
	]]
	component.frame = overviewScroll
end

function component.Show()
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)
