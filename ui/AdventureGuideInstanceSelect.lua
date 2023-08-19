--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideInstanceSelect")

function component.Init(components)
	local parent = components.AdventureGuideContainer.frame
	local frame = CreateFrame("Frame", parent:GetName() .. "InstanceSelect", parent)
	component.frame = frame
	frame:SetPoint("TOPLEFT", parent.inset, 0, -2)
	frame:SetPoint("BOTTOMRIGHT", parent.inset, -3, 0)
	frame.bg = frame:CreateTexture(nil, "BACKGROUND")
	frame.bg:SetTexture("Interface/EncounterJournal/UI-EJ-Classic")
	frame.bg:SetAllPoints()
	frame.bg:SetPoint("TOPLEFT", 3, -1)
	frame.title = frame:CreateFontString(nil, "BACKGROUND", "GameFontNormalLarge2")
	frame.title:SetJustifyH("LEFT")
	frame.title:SetPoint("TOPLEFT", 20, -15)
	frame.title:SetText("Dungeons")
	local scrollbox = CreateFrame("Frame", nil, frame, "WowScrollBoxList")
	scrollbox:SetSize(748, 367)
	scrollbox:SetPoint("TOPLEFT", 14, -50)
	local scrollbar = CreateFrame("EventFrame", nil, frame, "WowTrimScrollBar")
	scrollbar:SetPoint("TOPLEFT", scrollbox, "TOPRIGHT", 2, 4)
	scrollbar:SetPoint("BOTTOMLEFT", scrollbox, "BOTTOMRIGHT", 2, -10)
end

UI.Add(component)
