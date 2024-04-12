--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("Loot")
local EquipMapping = GetEquipMapping()
local Colors = GetColorMapping()
local components
local lootContainer
local lootScrollBox

-- local function LootButton_OnClick(self)
-- 	AdventureGuideNavigationService.SetEncounter(self.encounter)
-- 	EncounterJournal.encounter.info.encounterTitle:SetText("")
-- 	if self.encounter then
-- 		local encounterName = AdventureGuideNavigationService.GetEncounterName()
-- 		EncounterJournal.encounter.info.encounterTitle:SetText(encounterName .. "Loot")
-- 		components.NavBar.Refresh(encounterName)
-- 	end
-- end

function component.Init(components_)
	components = components_
    lootContainer = CreateFrame("Frame", nil, EncounterJournal.encounter.info)
	-- component.frame = lootContainer
	lootContainer:SetSize(345, 382)
	lootContainer:SetPoint("BOTTOMRIGHT", -5, 1)
	EncounterJournal.encounter.LootContainer = lootContainer
	lootScrollBox = CreateFrame("Frame", nil, lootContainer, "WowScrollBoxList")
	EncounterJournal.encounter.LootScrollBox = lootScrollBox
	lootScrollBox:SetSize(345, 382)
	lootScrollBox:SetPoint("BOTTOMRIGHT", -20, 1)
	local lootScrollBar = CreateFrame("EventFrame", nil, lootContainer, "MinimalScrollBar")
	EncounterJournal.encounter.LootScrollBar = lootScrollBar
	lootScrollBar:SetPoint("TOPLEFT", lootScrollBox, "TOPRIGHT", 5, -5)
	lootScrollBar:SetPoint("BOTTOMLEFT", lootScrollBox, "BOTTOMRIGHT", 5, 5)
	-- lootScrollBar:Hide()
	local function LootButtonInitalizer(button, lootItem)
		button.lootItem = lootItem
		if (not button.initialized) then
			local lootFrame = CreateFrame("Frame", nil, button)
			lootFrame:SetSize(1, 1)
			lootFrame:SetPoint("TOPLEFT", 0, 0)
			button.icon = button:CreateTexture()
			button.icon:SetSize(45, 45)
			button.icon:SetPoint("LEFT", 0, -5)
			button.icon:SetDrawLayer("BACKGROUND")
			button.iconBorder = button:CreateTexture()
			button.iconBorder:SetTexture("Interface/Common/WhiteIconFrame")
			button.iconBorder:SetSize(45, 45)
			button.iconBorder:SetDrawLayer("OVERLAY")
			button.iconBorder:SetPoint("TOPLEFT", button.icon, "BOTTOMRIGHT", -45, 45)
			button.iconOverlay = button:CreateTexture()
			button.iconOverlay:SetTexture("Interface/Common/WhiteIconFrame")
			button.iconOverlay:SetSize(45, 45)
			button.iconOverlay:SetDrawLayer("OVERLAY")
			button.iconOverlay:SetPoint("TOPLEFT", button.icon, "BOTTOMRIGHT", -45, 45)
			local bosslessTexture = button:CreateTexture()
			bosslessTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			bosslessTexture:SetTexCoord(0.00195313, 0.62890625, 0.61816406, 0.66210938)
			bosslessTexture:SetSize(321, 45)
			bosslessTexture:SetPoint("LEFT", 0, -5)
			bosslessTexture:SetDrawLayer("BORDER")
			button.armorType = button:CreateFontString()
			button.armorType:SetJustifyH("LEFT")
			button.armorType:SetTextColor(0, 0, 0)
			button.armorType:SetSize(0, 12)
			button.armorType:SetPoint("BOTTOMRIGHT", -25, 5)
			button.armorType:SetFont("Fonts\\FRIZQT__.TTF", 10)
			button.slot = button:CreateFontString()
			button.slot:SetJustifyH("LEFT")
			button.slot:SetTextColor(0, 0, 0)
			button.slot:SetSize(0, 12)
			button.slot:SetPoint("BOTTOMLEFT", 55, 5)
			button.slot:SetFont("Fonts\\FRIZQT__.TTF", 10)
			button.name = button:CreateFontString()
			button.name:SetJustifyH("LEFT")
			button.name:SetJustifyV("MIDDLE")
			button.name:SetTextColor(0.87, 0.659, 0.463)
			button.name:SetSize(250, 45)
			button.name:SetPoint("TOPLEFT", 55, -3)
			button:SetFontString(button.name)
			button:SetNormalFontObject("GameFontNormalMed3")
			button.initialized = true
		end
		button.name:SetText(lootItem.name)
		button.icon:SetTexture(lootItem.icon)
		button.armorType:SetText(lootItem.armorType or "Unknown")
		button.slot:SetText(lootItem.slot or "Unknown")
		button:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:SetHyperlink(lootItem.link)
			GameTooltip:Show()
		end)
		button:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)
		button:SetScript("OnClick", function(self, mouseButton)
			if mouseButton == "LeftButton" and IsControlKeyDown() then
				if self.lootItem and self.lootItem.link then
					DressUpItemLink(self.lootItem.link)
				end
			end
		end)
		local color = Colors[lootItem.rarity] or Colors[0]
		button.name:SetVertexColor(color.r, color.g, color.b)
		button.iconBorder:SetVertexColor(color.r, color.g, color.b)
		button.iconOverlay:SetVertexColor(color.r, color.g, color.b)
	end
	local lootView = CreateScrollBoxListLinearView()
	lootView:SetElementExtent(55)
	lootView:SetElementInitializer("Button", LootButtonInitalizer)
	ScrollUtil.InitScrollBoxListWithScrollBar(lootScrollBox, lootScrollBar, lootView)
end

local function OnItemDataLoadResult(event, itemId, success)
	if success then
		component.Show()
	end
end

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ITEM_DATA_LOAD_RESULT")
eventFrame:SetScript("OnEvent", function(self, event, ...)
	OnItemDataLoadResult(event, ...)
end)

function component.Show()
	if lootScrollBox then
		local loot = AdventureGuideNavigationService.GetEncounterLoot()
		local dataProvider = CreateDataProvider()
		lootScrollBox:SetDataProvider(dataProvider);
		for _, itemId in ipairs(loot) do
			local itemName, itemLink, itemRarity, _, _, itemType, itemSubType, _, itemEquipLoc, itemIcon =  C_Item.GetItemInfo(itemId)
			if itemName then
			local lootItem = { name = itemName, link = itemLink, rarity = itemRarity, icon = itemIcon, armorType = itemSubType, slot = EquipMapping[itemEquipLoc] or itemEquipLoc}
			dataProvider:Insert(lootItem)
			else
				C_Item.RequestLoadItemDataByID(itemId)
			end
		end
		components.EncounterFrame.SetCurrentView(lootContainer)
	end
end

UI.Add(component)