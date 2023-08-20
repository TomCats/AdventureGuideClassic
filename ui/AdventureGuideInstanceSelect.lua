--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideInstanceSelect")

local scrollbox

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
	scrollbox = CreateFrame("Frame", nil, frame, "WowScrollBoxList")
	scrollbox:SetSize(748, 379)
	scrollbox:SetPoint("TOPLEFT", 14, -47)
	local scrollbar = CreateFrame("EventFrame", nil, frame, "WowTrimScrollBar")
	scrollbar:SetPoint("TOPLEFT", scrollbox, "TOPRIGHT", 2, 0)
	scrollbar:SetPoint("BOTTOMLEFT", scrollbox, "BOTTOMRIGHT", 2, 0)
	local function Initializer(button, elementData)
		if (not button.initialized) then
			button:SetSize(174, 96)
			button.bgImage = button:CreateTexture(nil, "BACKGROUND")
			button.bgImage:SetTexCoord(0, 0.68359375, 0, 0.7421875)
			button.bgImage:SetAllPoints()
			button.name = button:CreateFontString(nil, "OVERLAY", "QuestTitleFontBlackShadow")
			button.name:SetSize(150, 0)
			button.name:SetPoint("TOP", 0, -15)
			button.range = button:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			button.range:SetSize(100, 12)
			button.range:SetPoint("BOTTOMLEFT", 7, 7)
			local normal = button:CreateTexture()
			normal:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			normal:SetTexCoord(0.00195313, 0.34179688, 0.42871094, 0.52246094)
			button:SetNormalTexture(normal)
			local pushed = button:CreateTexture()
			pushed:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			pushed:SetTexCoord(0.00195313, 0.34179688, 0.33300781, 0.42675781)
			button:SetPushedTexture(pushed)
			local highlight = button:CreateTexture()
			highlight:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			highlight:SetTexCoord(0.34570313, 0.68554688, 0.33300781, 0.42675781)
			button:SetHighlightTexture(highlight)
			button.initialized = true
		end
		button.name:SetText(elementData.name);
		button.bgImage:SetTexture(elementData.buttonImage1);
		button:Show()
	end
	local view = CreateScrollBoxListGridView(4, 4, 0, 0, 0, 15, 15);
	if (Compatibility.IsLegacy()) then
		view:SetElementInitializer("Button", nil, Initializer);
	else
		view:SetElementExtent(96)
		view:SetElementInitializer("Button", Initializer);
	end
	ScrollUtil.InitScrollBoxWithScrollBar(scrollbox, scrollbar, view);
end

function component.ShowDungeons()
	local dataProvider = CreateDataProvider();
	for _, dungeon in ipairs(Dungeons) do
		dataProvider:Insert(dungeon)
	end
	scrollbox:SetDataProvider(dataProvider);
	component.frame:Show()
end

function component.ShowRaids()
	local dataProvider = CreateDataProvider();
	for _, dungeon in ipairs(Raids) do
		dataProvider:Insert(dungeon)
	end
	scrollbox:SetDataProvider(dataProvider);
	component.frame:Show()
end

UI.Add(component)
