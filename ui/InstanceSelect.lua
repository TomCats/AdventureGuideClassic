--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("InstanceSelect")

local components
local scrollbox

function component.Init(components_)
	components = components_
	local instanceSelect = CreateFrame("Frame", EncounterJournal:GetName() .. "InstanceSelect", EncounterJournal)
	component.frame = instanceSelect
	EncounterJournal.instanceSelect = instanceSelect
	instanceSelect:SetPoint("TOPLEFT", EncounterJournal.inset, 0, -2)
	instanceSelect:SetPoint("BOTTOMRIGHT", EncounterJournal.inset, -3, 0)
	instanceSelect.bg = instanceSelect:CreateTexture(nil, "BACKGROUND")
	instanceSelect.bg:SetTexture("Interface/EncounterJournal/UI-EJ-Classic")
	instanceSelect.bg:SetAllPoints()
	instanceSelect.bg:SetPoint("TOPLEFT", 3, -1)
	instanceSelect.title = instanceSelect:CreateFontString(nil, "BACKGROUND", "GameFontNormalLarge2")
	instanceSelect.title:SetJustifyH("LEFT")
	instanceSelect.title:SetPoint("TOPLEFT", 20, -15)
	scrollbox = CreateFrame("Frame", nil, instanceSelect, "WowScrollBoxList")
	scrollbox:SetSize(748, 379)
	scrollbox:SetPoint("TOPLEFT", 14, -47)
	local scrollbar = CreateFrame("EventFrame", nil, instanceSelect, "MinimalScrollBar")
	scrollbar:SetPoint("TOPLEFT", scrollbox, "TOPRIGHT", 12, -6)
	scrollbar:SetPoint("BOTTOMLEFT", scrollbox, "BOTTOMRIGHT", 12, 4)
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
			button:SetScript("OnClick", function()
				instanceSelect:Hide()
				components.EncounterFrame.ShowInstanceInfo(button.instanceID)
			end)
			button.initialized = true
		end
		button.instanceID = elementData.instanceID
		button.name:SetText(elementData.name);
		button.bgImage:SetTexture(elementData.buttonImage1);
		button:Show()
	end
	local view = CreateScrollBoxListGridView(4, 4, 0, 0, 0, 15, 15);
	view:SetElementExtent(96)
	view:SetElementInitializer("Button", Initializer);
	ScrollUtil.InitScrollBoxWithScrollBar(scrollbox, scrollbar, view);
	instanceSelect:Hide()
end

local function ShowInstances(instances)
	local dataProvider = CreateDataProvider()
	for _, instance in ipairs(instances) do
		dataProvider:Insert(instance)
	end
	scrollbox:SetDataProvider(dataProvider)
	components.EncounterJournal.SetCurrentView(component.frame)
	components.NavBar.Reset()
end

function component.ShowDungeons()
	component.frame.title:SetText(DUNGEONS)
	ShowInstances(Dungeons)
end

function component.ShowRaids()
	component.frame.title:SetText(RAIDS)
	ShowInstances(Raids)
end

UI.Add(component)
