--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("Instance")

local components

function component.Init(components_)
	components = components_
	local instance = CreateFrame("Frame", nil, EncounterJournal.encounter)
	component.frame = instance
	EncounterJournal.encounter.instance = instance
	instance:SetSize(390, 425)
	instance:SetPoint("BOTTOMRIGHT", -1, 2)
	instance.loreBG = instance:CreateTexture()
	instance.loreBG:SetDrawLayer("BACKGROUND", 4)
	instance.loreBG:SetTexture("Interface/EncounterJournal/UI-EJ-LOREBG-Default")
	instance.loreBG:SetSize(390, 336)
	instance.loreBG:SetPoint("TOP", 3, -9)
	instance.loreBG:SetTexCoord(0, 0.7617187, 0, 0.65625)
	instance.title = instance:CreateFontString(nil, "OVERLAY", "QuestFont_Super_Huge")
	instance.title:SetJustifyH("CENTER")
	instance.title:SetJustifyV("BOTTOM")
	Mixin(instance.title, AutoScalingFontStringMixin)
	instance.title:SetSize(320, 35)
	instance.title:SetPoint("TOP", 0, -48)
	instance.titleBG = instance:CreateTexture(nil, "ARTWORK")
	instance.titleBG:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	instance.titleBG:SetSize(256, 64)
	instance.titleBG:SetTexCoord(0.34570313, 0.84570313, 0.42871094, 0.49121094)
	instance.titleBG:SetPoint("TOP", instance.loreBG, 0, -38)
	instance.loreScrollingFont = CreateFrame("Frame", nil, instance, "AdventureGuideClassic_ScrollingFontTemplate_GameFontBlack")
	instance.loreScrollingFont:SetFrameStrata("HIGH")
	instance.loreScrollingFont:SetSize(315, 100)
	instance.loreScrollingFont:SetPoint("BOTTOMLEFT", 35, 5)
	instance.loreScrollBar = CreateFrame("EventFrame", nil, instance, "AdventureGuideClassic_MinimalScrollBar_NoTrack")
	instance.loreScrollBar:SetFrameStrata("HIGH")
	instance.loreScrollBar:SetPoint("TOPLEFT", instance.loreScrollingFont, "TOPRIGHT", 9, -33)
	instance.loreScrollBar:SetPoint("BOTTOMLEFT", instance.loreScrollingFont, "BOTTOMRIGHT", 9, 33)
	instance.loreScrollingFont:SetTextColor(CreateColor(.13, .07, .01));
	local scrollBox = instance.loreScrollingFont:GetScrollBox();
	ScrollUtil.RegisterScrollBoxWithScrollBar(scrollBox, instance.loreScrollBar);
	instance:Hide()
end

function component.ShowInstanceLore(instance)
	component.frame.title:SetText(instance.name)
	component.frame.loreBG:SetTexture(instance.splash)
	component.frame.loreScrollingFont:SetText(instance.overview);
	component.frame.loreScrollBar:SetShown(component.frame.loreScrollingFont:HasScrollableExtent());
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)
