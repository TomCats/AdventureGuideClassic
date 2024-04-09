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

--[[
	<Button name="EncounterItemTemplate" registerForClicks="LeftButtonUp, RightButtonUp" mixin="EncounterJournalItemMixin" virtual="true">
		<Size x="321" y="45"/>
		<Layers>
			<Layer level="BACKGROUND">
				<Texture name="$parentIcon" parentKey="icon">
					<Size x="42" y="42"/>
					<Anchors>
						<Anchor point="TOPLEFT" x="2" y="-2"/>
					</Anchors>
				</Texture>
			</Layer>
			<Layer level="BORDER">
				<Texture inherits="UI-EJ-DungeonLootFrame" parentKey="bossTexture">
					<Anchors>
						<Anchor point="LEFT" x="0" y="0"/>
					</Anchors>
				</Texture>
				<Texture inherits="UI-EJ-LootFrame" parentKey="bosslessTexture">
					<Anchors>
						<Anchor point="LEFT" x="0" y="0"/>
					</Anchors>
				</Texture>
			</Layer>
			<Layer level="OVERLAY">
				<FontString name="$parentName" inherits="GameFontNormalMed3" justifyH="LEFT" parentKey="name">
					<Size x="250" y="12"/>
					<Anchors>
						<Anchor point="TOPLEFT" relativePoint="TOPRIGHT" relativeKey="$parent.icon" x="7" y="-7"/>
					</Anchors>
				</FontString>
				<FontString name="$parentArmorClass" inherits="GameFontBlack" justifyH="RIGHT" parentKey="armorType">
					<Size x="0" y="12"/>
					<Anchors>
						<Anchor point="BOTTOMRIGHT" relativeKey="$parent.name" relativePoint="TOPLEFT" x="264" y="-30"/>
					</Anchors>
					<Color r="0.25" g="0.1484375" b=".02" a="1"/>
				</FontString>
				<FontString name="$parentSlot" inherits="GameFontBlack" justifyH="LEFT" parentKey="slot">
					<Size x="0" y="12"/>
					<Anchors>
						<Anchor point="BOTTOMLEFT" relativePoint="BOTTOMRIGHT" relativeKey="$parent.icon" x="7" y="5"/>
						<Anchor point="BOTTOMRIGHT" relativePoint="BOTTOMLEFT" relativeKey="$parent.armorType" x="-15" y="0"/>
					</Anchors>
					<Color r="0.25" g="0.1484375" b=".02" a="1"/>
				</FontString>
				<FontString name="$parentBoss" inherits="GameFontBlack" justifyH="LEFT" parentKey="boss">
					<Size x="0" y="12"/>
					<Anchors>
						<Anchor point="TOPLEFT" relativeKey="$parent.icon" relativePoint="BOTTOMLEFT" y="-3"/>
					</Anchors>
					<Color r="0.25" g="0.1484375" b=".02" a="1"/>
				</FontString>
			</Layer>
			<Layer level="OVERLAY" textureSubLevel="1">
				<Texture parentKey="IconBorder" file="Interface\Common\WhiteIconFrame" hidden="true">
					<Size x="37" y="37"/>
					<Anchors>
						<Anchor point="TOPLEFT" relativeKey="$parent.icon"/>
						<Anchor point="BOTTOMRIGHT" relativeKey="$parent.icon"/>
					</Anchors>
				</Texture>
			</Layer>
			<Layer level="OVERLAY" textureSubLevel="2">
				<Texture parentKey="IconOverlay" hidden="true">
					<Size x="37" y="37"/>
					<Anchors>
						<Anchor point="TOPLEFT" relativeKey="$parent.icon"/>
						<Anchor point="BOTTOMRIGHT" relativeKey="$parent.icon"/>
					</Anchors>
				</Texture>
			</Layer>
			<Layer level="OVERLAY" textureSubLevel="2">
				<Texture parentKey="IconOverlay2" hidden="true">
					<Size x="37" y="37"/>
					<Anchors>
						<Anchor point="TOPLEFT" relativeKey="$parent.icon"/>
						<Anchor point="BOTTOMRIGHT" relativeKey="$parent.icon"/>
					</Anchors>
				</Texture>
			</Layer>
		</Layers>
		<Scripts>
			<OnClick>
				if (not HandleModifiedItemClick(self.link)) then
					EncounterJournal_Loot_OnClick(self);
				else
					PlaySound(SOUNDKIT.IG_MAINMENU_OPTION);
				end
			</OnClick>
			<OnEnter>
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
				local useSpec = true;
				EncounterJournal_SetTooltipWithCompare(GameTooltip, self.link, useSpec);
				self.showingTooltip = true;
				self:SetScript("OnUpdate", EncounterJournal_Loot_OnUpdate);
			</OnEnter>
			<OnLeave>
				GameTooltip:Hide();
				self.showingTooltip = false;
				self:SetScript("OnUpdate", nil);
				ResetCursor();
			</OnLeave>
		</Scripts>
	</Button>
]]

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
			button.icon:SetSize(45, 45)
			button.icon:SetPoint("LEFT", 0, -5)
			button.icon:SetDrawLayer("BACKGROUND")
			local bosslessTexture = button:CreateTexture()
			bosslessTexture:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			bosslessTexture:SetTexCoord(0.00195313, 0.62890625, 0.61816406, 0.66210938)
			bosslessTexture:SetSize(321, 45)
			bosslessTexture:SetPoint("LEFT", 0, -5)
			bosslessTexture:SetDrawLayer("BORDER")
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
		button:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:SetHyperlink(lootItem.link)
			GameTooltip:Show()
		end)
		button:SetScript("OnLeave", function(self)
			GameTooltip:Hide()
		end)
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
		-- todo: Require more bgTextures for different loot qualities
	end
	local lootView = CreateScrollBoxListLinearView()
	lootView:SetElementExtent(55)
	lootView:SetElementInitializer("Button", LootButtonInitalizer)
	ScrollUtil.InitScrollBoxListWithScrollBar(lootScrollBox, lootScrollBar, lootView)
end

function component.Show()
	local loot = AdventureGuideNavigationService.GetEncounterLoot()
    local dataProvider = CreateDataProvider()
    lootScrollBox:SetDataProvider(dataProvider);
	for _, itemId in ipairs(loot) do
		local itemName, itemLink, itemRarity, _, _, _, _, _, _, itemIcon =  C_Item.GetItemInfo(itemId)
		local lootItem = { name = itemName, link = itemLink, rarity = itemRarity, icon = itemIcon }
		dataProvider:Insert(lootItem)
	end
	components.EncounterFrame.SetCurrentView(lootContainer)
end

UI.Add(component)