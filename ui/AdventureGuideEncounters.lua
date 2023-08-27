--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideEncounters")

local bossesScrollbox

function component.Init(components)
	local frame = CreateFrame("Frame", nil, components.AdventureGuideContainer.frame)
	component.frame = frame
	frame:SetPoint("TOPLEFT", components.AdventureGuideContainer.frame.inset, "TOPLEFT", 0, 0)
	frame:SetPoint("BOTTOMRIGHT", components.AdventureGuideContainer.frame.inset, "BOTTOMRIGHT", -3, 0)

	local info = CreateFrame("Frame", nil, frame)
	frame.info = info
	info:SetSize(785, 425)
	info:SetPoint("BOTTOMRIGHT", -1, 2)
	info.bg = info:CreateTexture(nil, "BACKGROUND")
	info.bg:SetTexture("Interface/EncounterJournal/UI-EJ-JournalBG")
	info.bg:SetTexCoord(0, 0.766601562, 0, 0.830078125)
	info.bg:SetAllPoints()
	info.leftShadow = info:CreateTexture()
	info.leftShadow:SetDrawLayer("BACKGROUND", 3)
	info.leftShadow:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	info.leftShadow:SetTexCoord(0, 0.755859375, 0.9599609375, 1)
	info.leftShadow:SetSize(386, 39)
	info.leftShadow:SetPoint("TOPLEFT", 0, -11)
	info.rightShadow = info:CreateTexture()
	info.rightShadow:SetDrawLayer("BACKGROUND", 3)
	info.rightShadow:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	info.rightShadow:SetTexCoord(0.755859375, 0, 0.9599609375, 1)
	info.rightShadow:SetSize(386, 39)
	info.rightShadow:SetPoint("TOPRIGHT", 0, -11)
	info.encounterTitle = info:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	Mixin(info.encounterTitle, AutoScalingFontStringMixin)
	info.encounterTitle:SetJustifyH("LEFT")
	info.encounterTitle:SetSize(220, 12)
	info.encounterTitle:SetMinLineHeight(9)
	info.encounterTitle:SetPoint("BOTTOMLEFT", info, "TOPRIGHT", -350, -36)
	info.encounterTitle:SetTextColor(0.902, 0.788, 0.671)
	info.difficultyIcon = info:CreateTexture(nil, "OVERLAY")
	info.difficultyIcon:SetTexture("Interface/EncounterJournal/UI-EJ-Icons")
	info.difficultyIcon:SetSize(32, 32)
	info.difficultyIcon:SetPoint("TOPLEFT", 55, -10)
	info.difficultyIcon:Hide()
	info.instanceTitle = info:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	info.instanceTitle:SetJustifyH("LEFT")
	info.instanceTitle:SetSize(290, 12)
	info.instanceTitle:SetPoint("LEFT", info.difficultyIcon, "RIGHT", -4, 0)
	info.instanceTitle:SetTextColor(0.902, 0.788, 0.671)
	bossesScrollbox = CreateFrame("Frame", nil, info, "WowScrollBoxList")
	bossesScrollbox:SetSize(338, 382)
	bossesScrollbox:SetPoint("BOTTOMLEFT", 25, 1)
	local bossesScrollbar = CreateFrame("EventFrame", nil, info, "MinimalScrollBar")
	bossesScrollbar:SetPoint("TOPLEFT", bossesScrollbox, "TOPRIGHT", 5, -5)
	bossesScrollbar:SetPoint("BOTTOMLEFT", bossesScrollbox, "BOTTOMRIGHT", 5, 5)
	local function BossButtonInitializer(button, elementData)
		if (not button.initialized) then
			button:SetSize(325, 55)
			button.DefeatedOverlay = CreateFrame("Button", nil, button)
			button.DefeatedOverlay:SetSize(16, 16)
			button.DefeatedOverlay:SetFrameLevel(150)
			button.DefeatedOverlay:SetPoint("BOTTOMLEFT", 4, 0)
			button.DefeatedOverlay.Icon = button.DefeatedOverlay:CreateTexture(nil, "BACKGROUND")
			Atlas.SetAtlas(button.DefeatedOverlay.Icon, "Map-MarkedDefeated", true)
			button.DefeatedOverlay.Icon:SetPoint("CENTER")
			--[[
				for button.DefeatedOverlay
				<Scripts>
					<OnEnter function="EncounterJournalBossButtonDefeatedOverlay_OnEnter"/>
					<OnLeave function="GameTooltip_Hide"/>
				</Scripts>
			]]
			-- anonymous frame
			local creatureFrame = CreateFrame("Frame", nil, button)
			creatureFrame:SetSize(1, 1)
			creatureFrame:SetPoint("TOPLEFT", -4, 13)
			button.creature = creatureFrame:CreateTexture()
			button.creature:SetDrawLayer("OVERLAY", 6)
			button.creature:SetTexture("Interface/EncounterJournal/UI-EJ-BOSS-Default")
			button.creature:SetSize(128, 64)
			button.creature:SetPoint("TOPLEFT")
			local normal = button:CreateTexture()
			normal:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			normal:SetTexCoord(0.00195313, 0.63671875, 0.21386719, 0.26757813)
			button:SetNormalTexture(normal)
			local pushed = button:CreateTexture()
			pushed:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			pushed:SetTexCoord(0.00195313, 0.63671875, 0.10253906, 0.15625000)
			button:SetPushedTexture(pushed)
			local highlight = button:CreateTexture()
			highlight:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
			highlight:SetTexCoord(0.00195313, 0.63671875, 0.15820313, 0.21191406)
			button:SetHighlightTexture(highlight)
			button.text = button:CreateFontString()
			button.text:SetJustifyH("LEFT")
			button.text:SetJustifyV("MIDDLE")
			button.text:SetTextColor(0.87, 0.659, 0.463)
			button.text:SetSize(160, 40)
			button.text:SetPoint("LEFT", 105, -3)
			button:SetFontString(button.text)
			button:SetNormalFontObject("GameFontNormalMed3")
			button:SetHighlightFontObject("GameFontNormalMed3")
			button:SetDisabledFontObject("GameFontHighlightMedium")
			button:SetText("Monster name goes here")
			--[[
				<Scripts>
					<OnShow function="EncounterJournalBossButton_OnShow"/>
					<OnHide function="EncounterJournalBossButton_OnHide"/>
					<OnEvent function="EncounterJournalBossButton_OnEvent"/>
					<OnClick function="EncounterJournalBossButton_OnClick"/>
				</Scripts>
			]]
			button.initialized = true
		end
		--button.name:SetText(elementData.name);
		--button.bgImage:SetTexture(elementData.buttonImage1);
		--button:Show()
	end
	local bossView = CreateScrollBoxListLinearView();
	if (Compatibility.IsLegacy()) then
		bossView:SetElementInitializer("Button", nil, BossButtonInitializer);
	else
		bossView:SetElementExtent(55)
		bossView:SetElementInitializer("Button", BossButtonInitializer);
	end
	bossView:SetPadding(10,0,0,20,15);
	ScrollUtil.InitScrollBoxListWithScrollBar(bossesScrollbox, bossesScrollbar, bossView);
	--[[
<Button name="EncounterBossButtonTemplate" virtual="true" mixin="EncounterBossButtonMixin" hidden="true">
		<Size x="325" y="55"/>
		<ButtonText name="$parentText" parentKey="text" justifyH="LEFT"  justifyV="MIDDLE">
			<Size x="160" y="40"/>
			<Anchors>
				<Anchor point="LEFT" x="105" y="-3"/>
			</Anchors>
			<Color r="0.827" g="0.659" b="0.463"/>
		</ButtonText>
		<NormalFont style="GameFontNormalMed3"/>
		<HighlightFont style="GameFontNormalMed3"/>
		<DisabledFont style="GameFontHighlightMedium"/>

	</Button>
	]]
	component.LoadExample()
end

function component.LoadExample()
	local dataProvider = CreateDataProvider();
	bossesScrollbox:SetDataProvider(dataProvider);
	for i = 1, 10 do
		dataProvider:Insert({ })
	end
	--	component.frame:Show()
end

UI.Add(component)
