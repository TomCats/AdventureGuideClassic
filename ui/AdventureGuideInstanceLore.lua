--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideInstanceLore")

local components

function component.Init(components_)
	components = components_
	local frame = CreateFrame("Frame", nil, components.AdventureGuideInstanceInfo.frame)
	component.frame = frame
	frame:SetSize(390, 425)
	frame:SetPoint("BOTTOMRIGHT", -1, 2)
	frame.loreBG = frame:CreateTexture()
	frame.loreBG:SetDrawLayer("BACKGROUND", 4)
	frame.loreBG:SetTexture("Interface/EncounterJournal/UI-EJ-LOREBG-Default")
	frame.loreBG:SetSize(390, 336)
	frame.loreBG:SetPoint("TOP", 3, -9)
	frame.loreBG:SetTexCoord(0, 0.7617187, 0, 0.65625)
	frame.title = frame:CreateFontString(nil, "OVERLAY", "QuestFont_Super_Huge")
	frame.title:SetJustifyH("CENTER")
	frame.title:SetJustifyV("BOTTOM")
	Mixin(frame.title, AutoScalingFontStringMixin)
	frame.title:SetSize(320, 35)
	frame.title:SetPoint("TOP", 0, -48)
	frame.titleBG = frame:CreateTexture(nil, "ARTWORK")
	frame.titleBG:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	frame.titleBG:SetSize(256, 64)
	frame.titleBG:SetTexCoord(0.34570313, 0.84570313, 0.42871094, 0.49121094)
	frame.titleBG:SetPoint("TOP", frame.loreBG, 0, -38)
	frame.loreScrollingFont = CreateFrame("Frame", nil, frame, "AdventureGuideClassic_ScrollingFontTemplate_GameFontBlack")
	frame.loreScrollingFont:SetFrameStrata("HIGH")
	frame.loreScrollingFont:SetSize(315, 100)
	frame.loreScrollingFont:SetPoint("BOTTOMLEFT", 35, 5)
	frame.loreScrollBar = CreateFrame("EventFrame", nil, frame, "AdventureGuideClassic_MinimalScrollBar_NoTrack")
	frame.loreScrollBar:SetFrameStrata("HIGH")
	frame.loreScrollBar:SetPoint("TOPLEFT", frame.loreScrollingFont, "TOPRIGHT", 9, -33)
	frame.loreScrollBar:SetPoint("BOTTOMLEFT", frame.loreScrollingFont, "BOTTOMRIGHT", 9, 33)
	frame.loreScrollingFont:SetTextColor(CreateColor(.13, .07, .01));
	local scrollBox = frame.loreScrollingFont:GetScrollBox();
	ScrollUtil.RegisterScrollBoxWithScrollBar(scrollBox, frame.loreScrollBar);
	frame:Hide()
end

function component.ShowInstanceLore(instanceID)
	local instance = DungeonsByInstanceID[instanceID]
	if (not instance) then
		instance = RaidsByInstanceID[instanceID]
	end
	component.frame.title:SetText(instance.name)
	component.frame.loreBG:SetTexture(instance.loreImage)
	component.frame.loreScrollingFont:SetText(instance.description);
	component.frame.loreScrollBar:SetShown(component.frame.loreScrollingFont:HasScrollableExtent());
	component.frame:Show()
end

UI.Add(component)
