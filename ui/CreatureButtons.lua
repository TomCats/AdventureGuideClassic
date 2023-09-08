--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("DetailsScrollFrame")

local components
local creatureButtons

local function CreateCreatureButton()
	local button = CreateFrame("BUTTON", nil, EncounterJournal.encounter.info)
	button:SetSize(64, 61)
	button.creature = button:CreateTexture()
	button.creature:SetDrawLayer("BACKGROUND", 6)
	button.creature:SetSize(40, 40)
	button.creature:SetPoint("CENTER")

	local creatureButtonBorder = button:CreateTexture()
	creatureButtonBorder:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	creatureButtonBorder:SetTexCoord(0.50585938, 0.63085938, 0.02246094, 0.08203125)
	button:SetNormalTexture(creatureButtonBorder)
	local creatureButtonBorderHighlight = button:CreateTexture()
	creatureButtonBorderHighlight:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	creatureButtonBorderHighlight:SetTexCoord(0.50585938, 0.63085938, 0.02246094, 0.08203125)
	button:SetHighlightTexture(creatureButtonBorderHighlight, "ADD")
	local lastIndex = #creatureButtons
	if (lastIndex == 0) then
		button.creature:SetPoint("TOPLEFT", EncounterJournal.encounter.info.model, 3, -35)
	else
		button:SetPoint("TOPLEFT", creatureButtons[lastIndex], "BOTTOMLEFT", 0, 8)
	end
	creatureButtons[lastIndex + 1] = button
--[[
	<Scripts>
		<OnShow>
			self:SetFrameLevel(self:GetParent():GetFrameLevel()+2);
			self:Disable();
			self:Enable();
		</OnShow>
		<OnDisable>
			self:SetSize(64, 61);
			self.creature:SetSize(40, 40);
		</OnDisable>
		<OnEnable>
			self:SetSize(50, 49);
			self.creature:SetSize(30, 30);
		</OnEnable>
		<OnClick>
			EncounterJournal_DisplayCreature(self);
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION);
		</OnClick>
		<OnEnter>

			if self.name then
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
				GameTooltip:SetText(self.name,1,1,1);
				if self.description then
					GameTooltip:AddLine(self.description, nil, nil, nil, true);
				end
				GameTooltip:Show();
			end
		</OnEnter>
		<OnLeave>
			GameTooltip:Hide();
		</OnLeave>
	</Scripts>
]]
end

function component.Init(components_)
	components = components_
	creatureButtons = { }
	setmetatable(creatureButtons, {
		__index = function(t, k)
			for _ = #creatureButtons + 1, k do
				CreateCreatureButton()
			end
			return rawget(t, k)
		end
	})
	EncounterJournal.encounter.info.creatureButtons = creatureButtons
end

--[[
<Button name="$parentCreatureButton1" inherits="EncounterCreatureButtonTemplate" parentArray="creatureButtons">
	<Anchors>
		<Anchor point="TOPLEFT" relativeTo="$parentModelFrame" x="3" y="-35"/>
	</Anchors>
</Button>
<Button name="EncounterCreatureButtonTemplate" motionScriptsWhileDisabled="true" virtual="true" hidden="true">
	<Size x="64" y="61"/>
	<Layers>
		<Layer level="BACKGROUND" textureSubLevel="6">
			<Texture name="$parentCreature" parentKey="creature">
				<Size x="40" y="40"/>
				<Anchors>
					<Anchor point="CENTER" x="0" y="0"/>
				</Anchors>
			</Texture>
		</Layer>
	</Layers>
	<NormalTexture inherits="UI-EJ-BossModelButton"/>
	<HighlightTexture inherits="UI-EJ-BossModelButton" alphaMode="ADD"/>
	<Scripts>
		<OnShow>
			self:SetFrameLevel(self:GetParent():GetFrameLevel()+2);
			self:Disable();
			self:Enable();
		</OnShow>
		<OnDisable>
			self:SetSize(64, 61);
			self.creature:SetSize(40, 40);
		</OnDisable>
		<OnEnable>
			self:SetSize(50, 49);
			self.creature:SetSize(30, 30);
		</OnEnable>
		<OnClick>
			EncounterJournal_DisplayCreature(self);
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION);
		</OnClick>
		<OnEnter>

			if self.name then
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
				GameTooltip:SetText(self.name,1,1,1);
				if self.description then
					GameTooltip:AddLine(self.description, nil, nil, nil, true);
				end
				GameTooltip:Show();
			end
		</OnEnter>
		<OnLeave>
			GameTooltip:Hide();
		</OnLeave>
	</Scripts>
</Button>

]]

UI.Add(component)
