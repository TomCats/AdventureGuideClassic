--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("Loot")

local components

local function CreateEncounterItem()
-- todo: Return a frame that can be added to the scrollframe
-- todo: Create frame pool
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
end

function component.Init(components_)
	components = components_
-- todo: Replace placeholder (from instance overview) with actual loot scroll frame (see xml below function)
	local instance = CreateFrame("Frame", nil, EncounterJournal.encounter)
	component.frame = instance
	EncounterJournal.encounter.instance = instance
	instance:SetSize(390, 425)
	instance:SetPoint("BOTTOMRIGHT", -1, 2)
	instance.loreBG = instance:CreateTexture()
	instance.loreBG:SetDrawLayer("BACKGROUND", 4)
	instance.loreBG:SetTexture("Interface/EncounterJournal/UI-EJ-LOREBG-Default")
	instance.loreBG:SetSize(390, 336)
	instance.loreBG:SetPoint("TOP", 3, -9)
	instance.loreBG:SetTexCoord(0, 0.7617187, 0, 0.65625)
	instance.title = instance:CreateFontString(nil, "OVERLAY", "QuestFont_Super_Huge")
	instance.title:SetJustifyH("CENTER")
	instance.title:SetJustifyV("BOTTOM")
	Mixin(instance.title, AutoScalingFontStringMixin)
	instance.title:SetSize(320, 35)
	instance.title:SetPoint("TOP", 0, -48)
	instance.titleBG = instance:CreateTexture(nil, "ARTWORK")
	instance.titleBG:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	instance.titleBG:SetSize(256, 64)
	instance.titleBG:SetTexCoord(0.34570313, 0.84570313, 0.42871094, 0.49121094)
	instance.titleBG:SetPoint("TOP", instance.loreBG, 0, -38)
	instance.loreScrollingFont = CreateFrame("Frame", nil, instance, "AdventureGuideClassic_ScrollingFontTemplate_GameFontBlack")
	instance.loreScrollingFont:SetFrameStrata("HIGH")
	instance.loreScrollingFont:SetSize(315, 100)
	instance.loreScrollingFont:SetPoint("BOTTOMLEFT", 35, 5)
	instance.loreScrollBar = CreateFrame("EventFrame", nil, instance, "AdventureGuideClassic_MinimalScrollBar_NoTrack")
	instance.loreScrollBar:SetFrameStrata("HIGH")
	instance.loreScrollBar:SetPoint("TOPLEFT", instance.loreScrollingFont, "TOPRIGHT", 9, -33)
	instance.loreScrollBar:SetPoint("BOTTOMLEFT", instance.loreScrollingFont, "BOTTOMRIGHT", 9, 33)
	instance.loreScrollingFont:SetTextColor(CreateColor(.13, .07, .01));
	local scrollBox = instance.loreScrollingFont:GetScrollBox();
	ScrollUtil.RegisterScrollBoxWithScrollBar(scrollBox, instance.loreScrollBar);
	instance:Hide()
end

--[[
<Frame parentKey="LootContainer" frameStrata="HIGH">
								<Size x="345" y="382"/>
								<Anchors>
									<Anchor point="BOTTOMRIGHT" x="-5" y="1"/>
								</Anchors>
								<Frames>
									<Frame name="$parentClassFilterClearFrame" parentKey="classClearFilter" hidden="true" enableMouse="true">
										<Size x="355" y="28"/>
										<Anchors>
											<Anchor point="BOTTOM" relativePoint="TOP" x="-10" y="-27"/>
										</Anchors>
										<Layers>
											<Layer level="BACKGROUND">
												<Texture inherits="UI-EJ-FilterBar">
													<Size x="380" y="28"/>
													<Anchors>
														<Anchor point="CENTER" x="-5" y="0"/>
													</Anchors>
												</Texture>
											</Layer>
											<Layer level="OVERLAY">
												<FontString inherits="GameFontNormalSmall" parentKey="text">
													<Size x="0" y="0"/>
													<Anchors>
														<Anchor point="LEFT" x="25" y="2"/>
													</Anchors>
													<Color r="0.973" g="0.902" b="0.581"/>
												</FontString>
											</Layer>
										</Layers>
										<Frames>
											<Button name="$parentExitButton">
												<Size x="20" y="20"/>
												<Anchors>
													<Anchor point="RIGHT" x="-20" y="2"/>
												</Anchors>
												<Layers>
													<Layer level="ARTWORK">
														<Texture file="Interface\FriendsFrame\ClearBroadcastIcon" alpha="0.8" parentKey="texture">
															<Size x="17" y="17"/>
															<Anchors>
																<Anchor point="TOPLEFT" x="0" y="0"/>
															</Anchors>
														</Texture>
													</Layer>
												</Layers>
												<Scripts>
													<OnEnter>
														self.texture:SetAlpha(1.0);
													</OnEnter>
													<OnLeave>
														self.texture:SetAlpha(0.8);
													</OnLeave>
													<OnMouseDown>
														self.texture:SetPoint("TOPLEFT", 1, -1);
													</OnMouseDown>
													<OnMouseUp>
														self.texture:SetPoint("TOPLEFT", 0, 0);
													</OnMouseUp>
													<OnClick>
														PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
														EJ_ResetLootFilter();
														EncounterJournal_LootUpdate();
														self:GetParent():Hide();
													</OnClick>
												</Scripts>
											</Button>
										</Frames>
									</Frame>
									<Frame parentKey="ScrollBox" inherits="WowScrollBoxList">
										<Size x="345" y="382"/>
										<Anchors>
											<Anchor point="BOTTOMRIGHT" x="-20" y="1"/>
										</Anchors>
									</Frame>
									<EventFrame parentKey="ScrollBar" inherits="MinimalScrollBar">
										<Anchors>
											<Anchor point="TOPLEFT" relativeKey="$parent.ScrollBox" relativePoint="TOPRIGHT" x="5" y="-5"/>
											<Anchor point="BOTTOMLEFT" relativeKey="$parent.ScrollBox" relativePoint="BOTTOMRIGHT" x="5" y="5"/>
										</Anchors>
									</EventFrame>
									<DropDownToggleButton name="$parentFilterToggle" parentKey="filter" text="GEAR_FILTER" inherits="EJButtonTemplate">
										<Scripts>
											<OnMouseDown>
												EJButtonMixin.OnMouseDown(self, button);
												ToggleDropDownMenu(1, nil, self:GetParent().lootFilter, self, 5, 0);
												PlaySound(SOUNDKIT.IG_MAINMENU_OPTION);
											</OnMouseDown>
											<OnLoad inherit="prepend">
												self:SetPoint("TOPLEFT", self:GetParent():GetParent(), "TOPRIGHT", -340, -13);
											</OnLoad>
										</Scripts>
									</DropDownToggleButton>
									<DropDownToggleButton name="$parentSlotFilterToggle" parentKey="slotFilter" text="ALL_INVENTORY_SLOTS" inherits="EJButtonTemplate">
										<Anchors>
											<Anchor point="LEFT" relativeKey="$parent.filter" relativePoint="RIGHT" x="10" y="0"/>
										</Anchors>
										<Scripts>
											<OnMouseDown>
												EJButtonMixin.OnMouseDown(self, button);
												ToggleDropDownMenu(1, nil, self:GetParent().lootSlotFilter, self, 5, 0);
												PlaySound(SOUNDKIT.IG_MAINMENU_OPTION);
											</OnMouseDown>
											<OnLoad inherit="prepend">
												self:SetPoint("TOPLEFT", self:GetParent():GetParent(), "TOPRIGHT", -230, -13);
											</OnLoad>
										</Scripts>
									</DropDownToggleButton>
									<Frame name="$parentLootFilter" inherits="UIDropDownMenuTemplate" parentKey="lootFilter" hidden="true"/>
									<Frame name="$parentLootSlotFilter" inherits="UIDropDownMenuTemplate" parentKey="lootSlotFilter" hidden="true"/>
								</Frames>
								<Scripts>
									<OnShow>
										EncounterJournal_HideCreatures();
										EncounterJournal.encounter.instance:Hide();
										EncounterJournal.encounter.info.rightShadow:Show()
										EncounterJournal_LootUpdate();
										EncounterJournal.encounter.info.encounterTitle:Hide();
									</OnShow>
								</Scripts>
							</Frame>
]]

function component.Show()
	local instance = AdventureGuideNavigationService.GetInstance()
	EncounterJournal.encounter.info.encounterTitle:SetText("")
	component.frame.title:SetText("Loot Placeholder")
	component.frame.loreBG:SetTexture(instance.splash)
	-- component.frame.infoButton:SetText(instance.info)
	component.frame.loreScrollingFont:SetText(instance.overview);
	component.frame.loreScrollBar:SetShown(component.frame.loreScrollingFont:HasScrollableExtent());
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)