--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

CollapsibleSectionWidgetTypeMixin = Mixin(WidgetTypeMixin)

function CollapsibleSectionWidgetTypeMixin:Construct(parent)
	local frame = WidgetTypeMixin.ConstructDefault(self, "Frame", nil, parent)
	local button = CreateFrame("Button", nil, frame)
	frame.button = button
	button:SetSize(200,24)
	button:SetPoint("TOPLEFT")
	button:SetPoint("RIGHT")
	button.expandedIcon = button:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	button.expandedIcon:SetSize(12, 12)
	button.expandedIcon:SetPoint("TOPLEFT", 5, 0)
	button.expandedIcon:SetText("-")

	button.abilityIcon = button:CreateTexture(nil, "OVERLAY")
	button.abilityIcon:SetSize(18, 18)
	button.abilityIcon:SetPoint("LEFT", button.expandedIcon, "RIGHT", 5, 0)
	button.abilityIcon:SetColorTexture(0, 0, 0, 1)

	button.title = button:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	button.title:SetSize(5, 10)
	button.title:SetJustifyH("LEFT")
	button.title:SetPoint("RIGHT")
	button.title:SetPoint("LEFT", button.abilityIcon, "RIGHT", 5, -1)

	button.left = button:CreateTexture(nil, "BACKGROUND", "UI-PaperOverlay-PaperHeader-SelectUp-Left")
	button.left:ClearAllPoints()
	button.left:SetPoint("LEFT", -1, -1)
	print("NumPoints", button.left:GetNumPoints())
	_G.DEBUGBUTTON = button

	--frame.text = frame:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	--frame.text:SetJustifyH("LEFT")
	--frame.text:SetPoint("TOPLEFT", 2, -8)
	--frame.text:SetPoint("RIGHT", -12, -8)
	--frame.text:SetTextColor(0.25, 0.1484375, 0.02, 1)
	--frame.text:SetWordWrap(true)

	return frame
end

--[[
<Frame name="EncounterInfoTemplate" virtual="true" inherits="InlineHyperlinkFrameTemplate">
	<Animations>
		<AnimationGroup parentKey="flashAnim">
			<Alpha target="$parentHeaderButtonGlow" fromAlpha="0" toAlpha="1" duration="0.6" order="1"/>
			<Alpha target="$parentHeaderButtonGlow" fromAlpha="1" toAlpha="0"  duration="0.6" order="2"/>
			<Alpha target="$parentHeaderButtonGlow" fromAlpha="0" toAlpha="1" duration="0.6" order="3"/>
			<Alpha target="$parentHeaderButtonGlow" fromAlpha="1" toAlpha="0"  duration="0.9" order="4"/>
		</AnimationGroup>
	</Animations>
	<Size x="5" y="24"/>
	<Frames>
		<Button name="$parentHeaderButton" parentKey="button">
			<Size x="5" y="24"/>
			<Anchors>
				<Anchor point="TOPLEFT" x="0" y="0"/>
				<Anchor point="RIGHT" x="0" y="0"/>
			</Anchors>
			<Layers>
				<Layer level="OVERLAY">
					<FontString name="$parentExpandedIcon" inherits="GameFontNormalLarge" parentKey="expandedIcon">
						<Size x="12" y="12"/>
						<Anchors>
							<Anchor point="LEFT" x="5" y="0"/>
						</Anchors>
					</FontString>
					<Texture name="$parentAbilityIcon" parentKey="abilityIcon">
						<Size x="18" y="18"/>
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentExpandedIcon" relativePoint="RIGHT" x="5" y="0"/>
						</Anchors>
					</Texture>
					<FontString name="$parentTitle" inherits="GameFontNormal" parentKey="title" justifyH="LEFT">
						<Size x="5" y="10"/>
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentAbilityIcon" relativePoint="RIGHT" x="5" y="-1"/>
						</Anchors>
					</FontString>
				</Layer>
				<Layer level="BACKGROUND">
					<Texture name="$parentELeftUp" inherits="UI-PaperOverlay-PaperHeader-SelectUp-Left" parentKey="eLeftUp" hidden="true">
						<Anchors>
							<Anchor point="LEFT" x="-1" y="-1"/>
						</Anchors>
					</Texture>
					<Texture name="$parentERightUp" inherits="UI-PaperOverlay-PaperHeader-SelectUp-Right" parentKey="eRightUp" hidden="true">
						<Anchors>
							<Anchor point="RIGHT" x="3" y="-1"/>
						</Anchors>
					</Texture>
					<Texture name="$parentELeftDown" inherits="UI-EJ-PaperHeader-SelectDown-Left" parentKey="eLeftDown" hidden="true">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftUp" x="0" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentERightDown" inherits="UI-EJ-PaperHeader-SelectDown-Right" parentKey="eRightDown" hidden="true">
						<Anchors>
							<Anchor point="RIGHT" relativeTo="$parentERightUp" x="0" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCLeftUp" inherits="UI-EJ-PaperHeader-UnSelectUp-Left" parentKey="cLeftUp">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftUp" x="0" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCRightUp" inherits="UI-EJ-PaperHeader-UnSelectUp-Right" parentKey="cRightUp">
						<Anchors>
							<Anchor point="RIGHT" relativeTo="$parentERightUp" x="0" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCLeftDown" inherits="UI-EJ-PaperHeader-UnSelectDown-Left" parentKey="cLeftDown" hidden="true">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftUp" x="0" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCRightDown" inherits="UI-EJ-PaperHeader-UnSelectDown-Right" parentKey="cRightDown" hidden="true">
						<Anchors>
							<Anchor point="RIGHT" relativeTo="$parentERightUp" x="0" y="0"/>
						</Anchors>
					</Texture>
				</Layer>
				<Layer level="BACKGROUND" textureSubLevel="-2">
					<Texture name="$parentEMidUp" inherits="UI-PaperOverlay-PaperHeader-SelectUp-Mid" parentKey="eMidUp" hidden="true">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftUp" relativePoint="RIGHT" x="-32" y="0"/>
							<Anchor point="RIGHT" relativeTo="$parentERightUp" relativePoint="LEFT" x="32" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentEMidDown" inherits="_PaperHeader-SelectDown-Mid" parentKey="eMidDown" hidden="true">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftDown" relativePoint="RIGHT" x="-32" y="0"/>
							<Anchor point="RIGHT" relativeTo="$parentERightDown" relativePoint="LEFT" x="32" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCMidUp" inherits="_PaperHeader-UnSelectUp-Mid" parentKey="cMidUp">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftUp" relativePoint="RIGHT" x="-32" y="0"/>
							<Anchor point="RIGHT" relativeTo="$parentERightUp" relativePoint="LEFT" x="32" y="0"/>
						</Anchors>
					</Texture>
					<Texture name="$parentCMidDown" inherits="_PaperHeader-UnSelectDown-Mid" parentKey="cMidDown" hidden="true">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentELeftDown" relativePoint="RIGHT" x="-32" y="0"/>
							<Anchor point="RIGHT" relativeTo="$parentERightDown" relativePoint="LEFT" x="32" y="0"/>
						</Anchors>
					</Texture>
				</Layer>
				<Layer level="HIGHLIGHT">
					<Texture name="$parentHighlightLeft" inherits="UI-EJ-PaperHeader-Highlight-Left">
						<Anchors>
							<Anchor point="LEFT" x="-1" y="-1"/>
						</Anchors>
					</Texture>
					<Texture name="$parentHighlightRight" inherits="UI-EJ-PaperHeader-Highlight-Right">
						<Anchors>
							<Anchor point="RIGHT" x="3" y="-1"/>
						</Anchors>
					</Texture>
					<Texture name="$parentHighlightMid" inherits="_PaperHeader-Highlight-Mid">
						<Anchors>
							<Anchor point="LEFT" relativeTo="$parentHighlightLeft" relativePoint="RIGHT" x="-32" y="0"/>
							<Anchor point="RIGHT" relativeTo="$parentHighlightRight" relativePoint="LEFT" x="32" y="0"/>
						</Anchors>
					</Texture>
				</Layer>
			</Layers>
			<Frames>
				<Frame name="$parentGlow" alpha="0">
					<Anchors>
						<Anchor point="TOPLEFT" x="0" y="0"/>
						<Anchor point="BOTTOMRIGHT" x="0" y="0"/>
					</Anchors>
					<Layers>
						<Layer level="OVERLAY">
							<Texture name="$parentHighlightLeft" inherits="UI-EJ-PaperHeader-Highlight-Left">
								<Anchors>
									<Anchor point="LEFT" x="-1" y="-1"/>
								</Anchors>
							</Texture>
							<Texture name="$parentHighlightRight" inherits="UI-EJ-PaperHeader-Highlight-Right">
								<Anchors>
									<Anchor point="RIGHT" x="3" y="-1"/>
								</Anchors>
							</Texture>
							<Texture name="$parentHighlightMid" inherits="_PaperHeader-Highlight-Mid">
								<Anchors>
									<Anchor point="LEFT" relativeTo="$parentHighlightLeft" relativePoint="RIGHT" x="-32" y="0"/>
									<Anchor point="RIGHT" relativeTo="$parentHighlightRight" relativePoint="LEFT" x="32" y="0"/>
								</Anchors>
							</Texture>
						</Layer>
					</Layers>
				</Frame>
				<Frame name="$parentIcon1" inherits="EncounterSectionIconTemplate" parentKey="icon1" parentArray="icons">
					<Anchors>
						<Anchor point="RIGHT" x="5" y="0"/>
					</Anchors>
				</Frame>
				<Frame name="$parentIcon2" inherits="EncounterSectionIconTemplate" parentKey="icon2" parentArray="icons">
					<Anchors>
						<Anchor point="RIGHT" relativeTo="$parentIcon1" relativePoint="LEFT" x="10" y="0"/>
					</Anchors>
				</Frame>
				<Frame name="$parentIcon3" inherits="EncounterSectionIconTemplate" parentKey="icon3" parentArray="icons">
					<Anchors>
						<Anchor point="RIGHT" relativeTo="$parentIcon2" relativePoint="LEFT" x="10" y="0"/>
					</Anchors>
				</Frame>
				<Frame name="$parentIcon4" inherits="EncounterSectionIconTemplate" parentKey="icon4" parentArray="icons">
					<Anchors>
						<Anchor point="RIGHT" relativeTo="$parentIcon3" relativePoint="LEFT" x="19" y="0"/>
					</Anchors>
				</Frame>
				<Button name="$parentPortrait" parentKey="portrait">
					<Size x="26" y="26"/>
					<Anchors>
						<Anchor point="CENTER" relativeTo="$parentAbilityIcon" x="0" y="0"/>
					</Anchors>
					<Layers>
						<Layer level="OVERLAY">
							<Texture name="$parentIcon" parentKey="icon">
								<Size x="26" y="26"/>
								<Anchors>
									<Anchor point="CENTER" x="0" y="0"/>
								</Anchors>
							</Texture>
						</Layer>
						<Layer level="OVERLAY" textureSubLevel="2">
							<Texture name="$parentFrame" inherits="UI-EJ-CreatureHeaderFrameSm">
								<Anchors>
									<Anchor point="CENTER" relativeTo="$parentIcon" x="0" y="0"/>
								</Anchors>
							</Texture>
						</Layer>
						<Layer level="HIGHLIGHT">
							<Texture name="$parentFrameHighlight" inherits="UI-EJ-CreatureHeaderFrameSm" alphaMode="ADD">
								<Anchors>
									<Anchor point="CENTER" relativeTo="$parentIcon" x="0" y="0"/>
								</Anchors>
							</Texture>
						</Layer>
					</Layers>
					<Scripts>
						<OnClick>
							if self.displayInfo then
								EncounterJournal.encounter.info.modelTab:Click();
								EncounterJournal_DisplayCreature(self);
							end
							self:Enable();
							PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
						</OnClick>
					</Scripts>
				</Button>
			</Frames>
			<Scripts>
				<OnLoad>
					self.textures = {
						expanded = {
							up = {self.eLeftUp, self.eMidUp, self.eRightUp},
							down = {self.eLeftDown, self.eMidDown, self.eRightDown}
						},
						collapsed = {
							up = {self.cLeftUp, self.cMidUp, self.cRightUp},
							down = {self.cLeftDown, self.cMidDown, self.cRightDown}
						},
					}
					self.tex = self.textures.collapsed;
				</OnLoad>
				<OnShow function="EncounterJournal_UpdateButtonState"/>
				<OnClick function="EncounterJournal_OnClick"/>
				<OnMouseDown>
					self.tex.up[1]:Hide();
					self.tex.up[2]:Hide();
					self.tex.up[3]:Hide();

					self.tex.down[1]:Show();
					self.tex.down[2]:Show();
					self.tex.down[3]:Show();
				</OnMouseDown>
				<OnMouseUp>
					self.tex.up[1]:Show();
					self.tex.up[2]:Show();
					self.tex.up[3]:Show();

					self.tex.down[1]:Hide();
					self.tex.down[2]:Hide();
					self.tex.down[3]:Hide();
				</OnMouseUp>
				<OnEnter>
					if ( self.title:IsTruncated() ) then
						GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
						GameTooltip:SetText(self.title:GetText(), nil, nil, nil, nil, true);
					end
				</OnEnter>
				<OnLeave>
					GameTooltip:Hide();
				</OnLeave>
			</Scripts>
		</Button>
		<Frame parentKey="overviewDescription" inherits="EncounterDescriptionTemplate">
			<Size x="95" y="10"/>
			<Anchors>
				<Anchor point="TOP" relativePoint="BOTTOM" relativeTo="$parentHeaderButton" x="0" y="-9"/>
			</Anchors>
		</Frame>
		<Frame inherits="EncounterOverviewBulletTemplate">
			<Anchors>
				<Anchor point="TOPLEFT" relativePoint="BOTTOMLEFT" relativeTo="$parentHeaderButton" x="13" y="-9"/>
			</Anchors>
		</Frame>
	</Frames>
	<Layers>
		<Layer level="ARTWORK">
			<FontString name="$parentDescription" inherits="GameFontBlack" justifyH="LEFT" parentKey="description">
				<Size x="0" y="0"/>
				<Anchors>
					<Anchor point="TOP" relativePoint="BOTTOM" relativeTo="$parentHeaderButton" x="0" y="-9"/>
				</Anchors>
				<Color r="0.25" g="0.1484375" b=".02" a="1"/>
			</FontString>
		</Layer>
		<Layer level="BACKGROUND">
			<Texture name="$parentDescriptionBG" inherits="UI-PaperOverlay-AbilityTextBG" parentKey="descriptionBG">
				<Size x="12" y="12"/>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="$parentDescription" x="-9" y="12"/>
					<Anchor point="BOTTOMRIGHT" relativeTo="$parentDescription" x="9" y="-11"/>
				</Anchors>
			</Texture>
			<Texture inherits="UI-PaperOverlay-AbilityTextBottomBorder" parentKey="descriptionBGBottom">
				<Anchors>
					<Anchor point="LEFT" relativeTo="$parentDescriptionBG" relativePoint="BOTTOMLEFT" x="0" y="0"/>
					<Anchor point="RIGHT" relativeTo="$parentDescriptionBG" relativePoint="BOTTOMRIGHT" x="0" y="0"/>
				</Anchors>
			</Texture>
		</Layer>
	</Layers>
	<Scripts>
		<OnHide>
			self:SetScript("OnUpdate", nil);
		</OnHide>
		<OnHyperlinkEnter function="EncounterJournal_OnHyperlinkEnter"/>
	</Scripts>
</Frame>
]]