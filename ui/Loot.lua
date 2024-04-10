--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("Loot")
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

-- Move this to a better place, function maybe so it can be reused
local equipLocMapping = {
	INVTYPE_HEAD = "Head",
	INVTYPE_NECK = "Neck",
	INVTYPE_SHOULDER = "Shoulder",
	INVTYPE_BODY = "Shirt",
	INVTYPE_CLOAK = "Back",
	INVTYPE_CHEST = "Chest",
	INVTYPE_WRIST = "Wrist",
	INVTYPE_HAND = "Hands",
	INVTYPE_WAIST = "Waist",
	INVTYPE_LEGS = "Legs",
	INVTYPE_FEET = "Feet",
	INVTYPE_FINGER = "Finger",
	INVTYPE_TRINKET = "Trinket",
	INVTYPE_WEAPON = "One-Hand",
	INVTYPE_SHIELD = "Off Hand",
	INVTYPE_2HWEAPON = "Two-Hand",
	INVTYPE_WEAPONMAINHAND = "Main Hand",
	INVTYPE_WEAPONOFFHAND = "Off Hand",
	INVTYPE_NON_EQUIP_IGNORE = "Unique",
	INVTYPE_HOLDABLE = "Held In Off-hand",
	INVTYPE_RANGED = "Ranged",
	INVTYPE_RANGEDRIGHT = "Ranged",
	INVTYPE_THROWN = "Thrown",
	INVTYPE_RELIC = "Relic",
	INVTYPE_TABARD = "Tabard",
	INVTYPE_ROBE = "Chest",
	INVTYPE_BAG = "Bag",
	INVTYPE_QUIVER = "Quiver",
	INVTYPE_AMMO = "Ammo",
	INVTYPE_GUN = "Gun",
	INVTYPE_CROSSBOW = "Crossbow",
	INVTYPE_WAND = "Wand",
	INVTYPE_FIST = "Fist Weapon",
}

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
		-- Move this to a better place, function maybe so it can be reused
		local colors = {
			[0] = {r = 0.62, g = 0.62, b = 0.62}, -- Poor
			[1] = {r = 1.00, g = 1.00, b = 1.00}, -- Common
			[2] = {r = 0.12, g = 1.00, b = 0.00}, -- Uncommon
			[3] = {r = 0.00, g = 0.44, b = 0.87}, -- Rare
			[4] = {r = 0.64, g = 0.21, b = 0.93}, -- Epic
			[5] = {r = 1.00, g = 0.50, b = 0.00}, -- Legendary
			[6] = {r = 0.90, g = 0.80, b = 0.50}, -- Artifact
			[7] = {r = 1.00, g = 0.00, b = 0.00}, -- Heirloom
		}
		local color = colors[lootItem.rarity] or colors[0]
		button.name:SetVertexColor(color.r, color.g, color.b)
		button.iconBorder:SetVertexColor(color.r, color.g, color.b)
		button.iconOverlay:SetVertexColor(color.r, color.g, color.b)
		-- todo: Require more bgTextures for different loot qualities
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
	local loot = AdventureGuideNavigationService.GetEncounterLoot()
    local dataProvider = CreateDataProvider()
    lootScrollBox:SetDataProvider(dataProvider);
	for _, itemId in ipairs(loot) do
		local itemName, itemLink, itemRarity, _, _, itemType, itemSubType, _, itemEquipLoc, itemIcon =  C_Item.GetItemInfo(itemId)
		if itemName then
		local lootItem = { name = itemName, link = itemLink, rarity = itemRarity, icon = itemIcon, armorType = itemSubType, slot = equipLocMapping[itemEquipLoc] or itemEquipLoc}
		dataProvider:Insert(lootItem)
		else
			C_Item.RequestLoadItemDataByID(itemId)
		end
	end
	components.EncounterFrame.SetCurrentView(lootContainer)
end

UI.Add(component)