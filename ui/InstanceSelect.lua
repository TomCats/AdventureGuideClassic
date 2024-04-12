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
	instanceSelect.tierDropDown = CreateFrame("Frame", "SeasonDropDownMenu", instanceSelect, "UIDropDownMenuTemplate")
	instanceSelect.tierDropDown:SetPoint("TOPRIGHT", 5, -10)
	instanceSelect.tierDropDown:SetSize(176, 32)
	UIDropDownMenu_SetWidth(instanceSelect.tierDropDown, 176)
	function instanceSelect.tierDropDown:SetValue(newValue)
		UIDropDownMenu_SetText(instanceSelect.tierDropDown, newValue)
		UIDropDownMenu_JustifyText(instanceSelect.tierDropDown, "LEFT")
		CloseDropDownMenus()
	end
	UIDropDownMenu_Initialize(instanceSelect.tierDropDown, function(self, level)
		local info = UIDropDownMenu_CreateInfo()
		info.func = self.SetValue
		local seasons = GetSeasons()
		for id, season in pairs(seasons) do
			info.text, info.arg1 = season, season
			UIDropDownMenu_AddButton(info, level)
		end
		if C_Seasons.HasActiveSeason() then
			local activeSeasonID = C_Seasons.GetActiveSeason()
			if activeSeasonID == 3 then
				self:SetValue(seasons[1])
			else
				self:SetValue(seasons[activeSeasonID])
			end
		else
			self:SetValue(seasons[1])
		end
	end)
    UIDropDownMenu_DisableDropDown(instanceSelect.tierDropDown)
	if C_Seasons.HasActiveSeason() then
		local activeSeasonID = C_Seasons.GetActiveSeason()
		if activeSeasonID == 3 then
			instanceSelect.bg = instanceSelect:CreateTexture(nil, "BACKGROUND")
			instanceSelect.bg:SetTexture("Interface/EncounterJournal/UI-EJ-Cataclysm")
		else
			instanceSelect.bg = instanceSelect:CreateTexture(nil, "BACKGROUND")
			instanceSelect.bg:SetTexture("Interface/EncounterJournal/UI-EJ-Classic")
		end
	else
		instanceSelect.bg = instanceSelect:CreateTexture(nil, "BACKGROUND")
		instanceSelect.bg:SetTexture("Interface/EncounterJournal/UI-EJ-Classic")
	end
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
	local function Initializer(button, instance)
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
				AdventureGuideNavigationService.Reset()
				AdventureGuideNavigationService.SetInstance(button.instance)
				components.EncounterFrame.ShowInstanceInfo(button.instance)
			end)
			button.initialized = true
		end
		button.instance = instance
		button.instanceID = instance.instanceID
		button.name:SetText(instance.name);
		button.bgImage:SetTexture(instance.thumbnail);
		button:Show()
	end
	local view = CreateScrollBoxListGridView(4, 4, 0, 0, 0, 15, 15);
	view:SetElementExtent(96)
	view:SetElementInitializer("Button", Initializer);
	ScrollUtil.InitScrollBoxWithScrollBar(scrollbox, scrollbar, view);
	instanceSelect:Hide()
end

function component.SetTitle(title)
	component.frame.title:SetText(title)
end

function component.Show()
	local dataProvider = CreateDataProvider()
	for _, instance in ipairs(AdventureGuideNavigationService.GetInstances()) do
		dataProvider:Insert(instance)
	end
	scrollbox:SetDataProvider(dataProvider)
	components.EncounterJournal.SetCurrentView(component.frame)
	components.NavBar.Reset()
end

UI.Add(component)
