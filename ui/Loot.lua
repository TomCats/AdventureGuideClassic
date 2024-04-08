--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("Loot")
local components
local lootScrollBox

local function LootButton_OnClick(self)
	AdventureGuideNavigationService.SetEncounter(self.encounter)
	EncounterJournal.encounter.info.encounterTitle:SetText("")
	if self.encounter then
		local encounterName = AdventureGuideNavigationService.GetEncounterName()
		EncounterJournal.encounter.info.encounterTitle:SetText(encounterName .. "Loot")
		components.NavBar.Refresh(encounterName)
	end
end

function component.Init(components_)
	components = components_
	local info = EncounterJournal.encounter.info
	lootScrollBox = CreateFrame("Frame", nil, info, "WowScrollBoxList")
	EncounterJournal.encounter.info.LootScrollBox = lootScrollBox
	lootScrollBox:SetSize(345, 382)
	lootScrollBox:SetPoint("BOTTOMRIGHT", -5, 1)
	local lootScrollBar = CreateFrame("EventFrame", nil, info, "MinimalScrollBar")
	EncounterJournal.encounter.info.LootScrollBar = lootScrollBar
	lootScrollBar:SetPoint("TOPLEFT", lootScrollBox, "TOPRIGHT", 5, -5)
	lootScrollBar:SetPoint("BOTTOMLEFT", lootScrollBox, "BOTTOMRIGHT", 5, 5)
	lootScrollBar:Hide()
	local function LootButtonInitalizer(button, lootItem)
		button.lootItem = lootItem
		if (not button.initialized) then
			local lootFrame = CreateFrame("Frame", nil, button)
			lootFrame:SetSize(1, 1)
			lootFrame:SetPoint("TOPLEFT", 0, 0)
			button.iconBorder = lootFrame:CreateTexture()
			button.iconBorder:SetDrawLayer("OVERLAY", 1)
			button.iconBorder:SetTexture("Interface/Common/WhiteIconFrame")
			button.iconBorder:SetSize(45, 47)
			button.iconBorder:SetPoint("TOPLEFT", 2, -2)
			button.iconBorder:SetVertexColor(0, 2, 0)
			button.iconOverlay = lootFrame:CreateTexture()
			button.iconOverlay:SetDrawLayer("OVERLAY", 2)
			button.iconOverlay:SetTexture("Interface/Common/WhiteIconFrame")
			button.iconOverlay:SetSize(45, 47)
			button.iconOverlay:SetPoint("TOPLEFT", 2, -2)
			button.iconOverlay:SetVertexColor(0, 1, 0)
			button.icon = lootFrame:CreateTexture()
			button.icon:SetDrawLayer("ARTWORK", 1)
			button.icon:SetTexture("Interface/Icons/INV_Misc_QuestionMark")
			button.icon:SetSize(45, 47)
			button.icon:SetPoint("TOPLEFT", 2, -2)
			local normal = button:CreateTexture()
			normal:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			normal:SetTexCoord(0.00195313, 0.62890625, 0.61816406, 0.66210938)
			normal:SetSize(321, 17)
			button:SetNormalTexture(normal)
			button.name = button:CreateFontString()
			button.name:SetJustifyH("LEFT")
			button.name:SetJustifyV("MIDDLE")
			button.name:SetTextColor(0.87, 0.659, 0.463)
			button.name:SetSize(250, 12)
			button.name:SetPoint("TOPLEFT", 55, -9)
			button:SetFontString(button.name)
			button:SetNormalFontObject("GameFontNormalMed3")
			button:SetScript("OnClick", LootButton_OnClick)
			button.initialized = true
		end
		button.name:SetText(lootItem.name)
		-- todo: Require more bgTextures for different loot qualities
	end
	local lootView = CreateScrollBoxListLinearView()
	lootView:SetElementExtent(55)
	lootView:SetElementInitializer("Button", LootButtonInitalizer)
	-- lootView:SetPadding(10,0,0,20,15)
	ScrollUtil.InitScrollBoxListWithScrollBar(lootScrollBox, lootScrollBar, lootView)

	function component.AggregateLoot(instance)
		local loot = {}
		for _, encounter in ipairs(instance.encounter) do
			for _, lootItem in ipairs(encounter.loot) do
				table.insert(loot, lootItem)
			end
		end
		return loot
	end
end

function component.SetInstance(encounter)
	local loot = AdventureGuideNavigationService.GetEncounterLoot()
    local dataProvider = CreateDataProvider()
    lootScrollBox:SetDataProvider(dataProvider);
	for _, itemId in ipairs(encounter.loot) do
		local itemName = GetItemInfo(itemId)
		local lootItem = { name = itemName }
		dataProvider:Insert(lootItem)
	end
end

UI.Add(component)