--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideEncounters")

local bossesScrollbox

function component.Init(components)
	local info = components.AdventureGuideInstanceInfo.frame.info
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
			button.bgImage = creatureFrame:CreateTexture()
			button.bgImage:SetDrawLayer("OVERLAY", 6)
			button.bgImage:SetTexture("Interface/EncounterJournal/UI-EJ-BOSS-Default")
			button.bgImage:SetSize(128, 64)
			button.bgImage:SetPoint("TOPLEFT")
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
			button.name = button:CreateFontString()
			button.name:SetJustifyH("LEFT")
			button.name:SetJustifyV("MIDDLE")
			button.name:SetTextColor(0.87, 0.659, 0.463)
			button.name:SetSize(160, 40)
			button.name:SetPoint("LEFT", 105, -3)
			button:SetFontString(button.name)
			button:SetNormalFontObject("GameFontNormalMed3")
			button:SetHighlightFontObject("GameFontNormalMed3")
			button:SetDisabledFontObject("GameFontHighlightMedium")
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
		button.name:SetText(elementData.name);
		button.bgImage:SetTexture(elementData.buttonImage1);
		button.DefeatedOverlay:Hide()
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
--	component.LoadExample()
end

function component.SetInstance(instance)
	local dataProvider = CreateDataProvider();
	bossesScrollbox:SetDataProvider(dataProvider);
	for _, encounterID in ipairs(instance.encounters) do
		dataProvider:Insert(EncountersByEncounterID[encounterID])
	end
end

UI.Add(component)
