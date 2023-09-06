--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("DetailsScrollFrame")

local components

function component.Init(components_)
	components = components_
	local detailsScroll = CreateFrame("ScrollFrame", nil, EncounterJournal.encounter.info)
	component.frame = detailsScroll
	EncounterJournal.encounter.info.detailsScroll = detailsScroll
	EncounterJournal.encounter.infoFrame = detailsScroll
	detailsScroll:SetSize(350, 383)
	detailsScroll.scrollBarX = -15
	detailsScroll.scrollBarTopY = -6
	detailsScroll.scrollBarBottomY = 6
	detailsScroll:SetPoint("BOTTOMRIGHT", -5, 1)
	detailsScroll.child = CreateFrame("Frame", nil, detailsScroll)
	detailsScroll.child:SetSize(320, 372)
	detailsScroll.child:SetPoint("TOPLEFT")
	detailsScroll.child.loreDescription = detailsScroll.child:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	detailsScroll.child.loreDescription:SetJustifyH("LEFT")
	detailsScroll.child.loreDescription:SetSize(0, 0)
	detailsScroll.child.loreDescription:SetPoint("TOPLEFT", 2, -8)
	detailsScroll.child.loreDescription:SetTextColor(0.25, 0.1484375, 0.02, 1)
	detailsScroll.child.header = detailsScroll.child:CreateTexture(nil, "ARTWORK")
	detailsScroll.child.header:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	detailsScroll.child.header:SetSize(327, 30)
	detailsScroll.child.header:SetTexCoord(0.359375, 0.99609375, 0.8525390625, 0.880859375)
	detailsScroll.child.header:SetPoint("TOP", detailsScroll.child.loreDescription, "BOTTOM", 0, -6)
	detailsScroll.child.title = detailsScroll.child:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	detailsScroll.child.title:SetSize(200, 10)
	detailsScroll.child.title:SetPoint("BOTTOMLEFT", detailsScroll.child.header, "BOTTOMLEFT", 8, 6)
	detailsScroll.child.overviewDescription = CreateFrame("Frame", nil, detailsScroll.child)
	detailsScroll.child.overviewDescription:SetSize(95, 10)
	detailsScroll.child.overviewDescription:SetPoint("TOP", detailsScroll.child.header, "BOTTOM", 0, -6)
	--frame.child.overviewDescription.Text = CreateFrame("SimpleHTML", nil, frame.child.overviewDescription,
	--		"AdventureGuideClassic_SampleEncounterDescription")
	--frame.child.overviewDescription.Text:SetAllPoints()
	detailsScroll.child.overviewDescription.Text = CreateFrame(
			"SimpleHTML", nil, detailsScroll.child.overviewDescription, "InlineHyperlinkFrameTemplate")
	detailsScroll.child.overviewDescription.Text:SetAllPoints()
	detailsScroll.child.overviewDescription.Text:SetFontObject("p", "GameFontBlack")
	detailsScroll.child.overviewDescription.Text:SetTextColor("p", 0.25, 0.1484375, 0.02, 1)
	detailsScroll.child.overviewDescription.Text:SetJustifyH("p", "LEFT")
	detailsScroll.child.overviewDescription.Text:SetJustifyV("p", "TOP")
	detailsScroll.child.overviewDescription.Text:SetScript("OnHyperlinkEnter", nop) -- EncounterJournal_OnHyperlinkEnter
	detailsScroll:SetScrollChild(detailsScroll.child)
	ScrollFrame_OnLoad(detailsScroll)
	detailsScroll:Hide()
	--EncounterJournal_DisplayEncounter(2473)
	-- populated via EncounterJournal_DisplayEncounter()
end

--[[

	<Frame name="EncounterDescriptionTemplate" virtual="true">
		<Frames>
			<SimpleHTML parentKey="Text" setAllPoints="true" inherits="InlineHyperlinkFrameTemplate">
				<FontString inherits="GameFontBlack" justifyH="LEFT" justifyV="TOP">
					<Color r="0.25" g="0.1484375" b=".02" a="1"/>
				</FontString>
				<Scripts>
					<OnHyperlinkEnter function="EncounterJournal_OnHyperlinkEnter"/>
				</Scripts>
			</SimpleHTML>
		</Frames>
	</Frame>

<ScrollFrame name="$parentOverviewScrollFrame" parentKey="overviewScroll" inherits="ScrollFrameTemplate"> -- just use ScrollFrame_OnLoad
	<Size x="350" y="383"/>
	<KeyValues>
		<KeyValue key="scrollBarX" value="-15" type="number"/>
		<KeyValue key="scrollBarTopY" value="-6" type="number"/>
		<KeyValue key="scrollBarBottomY" value="6" type="number"/>
	</KeyValues>
	<Anchors>
		<Anchor point="BOTTOMRIGHT" x="-5" y="1"/>
	</Anchors>
	<ScrollChild>
		<Frame name="$parentScrollChild" parentKey="child">
			<Size x="320" y="372"/>
			<Anchors>
				<Anchor point="TOPLEFT" x="0" y="0"/>
			</Anchors>
			<Layers>
				<Layer level="ARTWORK">
					<FontString name="$parentLoreDescription" inherits="GameFontBlack" justifyH="LEFT" parentKey="loreDescription">
						<Size x="0" y="0"/>
						<Anchors>
							<Anchor point="TOPLEFT" x="2" y="-8"/>
						</Anchors>
						<Color r="0.25" g="0.1484375" b=".02" a="1"/>
					</FontString>
					<Texture name="$parentHeader" inherits="UI-EJ-Header-Overview" parentKey="header">
						<Anchors>
							<Anchor point="TOP" relativeKey="$parent.loreDescription" relativePoint="BOTTOM" x="0" y="-6"/>
						</Anchors>
					</Texture>
					<FontString name="$parentTitle" inherits="GameFontNormal" justifyH="LEFT" text="OVERVIEW">
						<Size x="200" y="10"/>
						<Anchors>
							<Anchor point="BOTTOMLEFT" relativeKey="$parent.header" relativePoint="BOTTOMLEFT" x="8" y="6"/>
						</Anchors>
						<Color r="0.929" g="0.788" b="0.620"/>
					</FontString>
				</Layer>
			</Layers>
			<Frames>
				<Frame parentKey="overviewDescription" inherits="EncounterDescriptionTemplate">
					<Size x="95" y="10"/>
					<Anchors>
						<Anchor point="TOP" relativeKey="$parent.header" relativePoint="BOTTOM" x="0" y="-6"/>
					</Anchors>
				</Frame>
			</Frames>
		</Frame>
	</ScrollChild>
	<Scripts>
		<OnShow>
			EncounterJournal_HideCreatures();
			EncounterJournal.encounter.info.reset:Show()
			EncounterJournal.encounter.info.LootContainer:Hide()
			EncounterJournal.encounter.info.rightShadow:Show()
			EncounterJournal.encounter.info.encounterTitle:Show();
		</OnShow>
		<OnHide>
			if (not self:GetParent().detailsScroll:IsShown()) then
			EncounterJournal.encounter.info.reset:Hide()
			end
		</OnHide>
	</Scripts>
</ScrollFrame>

]]

function component.ShowEncounterOverview(encounterID)
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)