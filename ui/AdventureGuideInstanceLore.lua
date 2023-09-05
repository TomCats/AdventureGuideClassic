--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideInstanceLore")

local components

function component.Init(components_)
	components = components_
	local frame = CreateFrame("Frame", nil, components.AdventureGuideInstanceInfo.frame)
	component.frame = frame
	frame:SetSize(390, 425)
	frame:SetPoint("BOTTOMRIGHT", -1, 2)
	frame.loreBG = frame:CreateTexture()
	frame.loreBG:SetDrawLayer("BACKGROUND", 4)
	frame.loreBG:SetTexture("Interface/EncounterJournal/UI-EJ-LOREBG-Default")
	frame.loreBG:SetSize(390, 336)
	frame.loreBG:SetPoint("TOP", 3, -9)
	frame.loreBG:SetTexCoord(0, 0.7617187, 0, 0.65625)
	frame.title = frame:CreateFontString(nil, "OVERLAY", "QuestFont_Super_Huge")
	frame.title:SetJustifyH("CENTER")
	frame.title:SetJustifyV("BOTTOM")
	Mixin(frame.title, AutoScalingFontStringMixin)
	frame.title:SetSize(320, 35)
	frame.title:SetPoint("TOP", 0, -48)
	frame.titleBG = frame:CreateTexture(nil, "ARTWORK")
	frame.titleBG:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	frame.titleBG:SetSize(256, 64)
	frame.titleBG:SetTexCoord(0.34570313, 0.84570313, 0.42871094, 0.49121094)
	frame.titleBG:SetPoint("TOP", frame.loreBG, 0, -38)
	frame.loreScrollingFont = CreateFrame("Frame", nil, frame, "AdventureGuideClassic_ScrollingFontTemplate_GameFontBlack")
	frame.loreScrollingFont:SetFrameStrata("HIGH")
	frame.loreScrollingFont:SetSize(315, 100)
	frame.loreScrollingFont:SetPoint("BOTTOMLEFT", 35, 5)
	frame.loreScrollBar = CreateFrame("EventFrame", nil, frame, "AdventureGuideClassic_MinimalScrollBar_NoTrack")
	frame.loreScrollBar:SetFrameStrata("HIGH")
	frame.loreScrollBar:SetPoint("TOPLEFT", frame.loreScrollingFont, "TOPRIGHT", 9, -33)
	frame.loreScrollBar:SetPoint("BOTTOMLEFT", frame.loreScrollingFont, "BOTTOMRIGHT", 9, 33)
	frame.loreScrollingFont:SetTextColor(CreateColor(.13, .07, .01));
	local scrollBox = frame.loreScrollingFont:GetScrollBox();
	ScrollUtil.RegisterScrollBoxWithScrollBar(scrollBox, frame.loreScrollBar);
	frame:Hide()
end

function component.ShowInstanceLore(instanceID)
	local instance = DungeonsByInstanceID[instanceID]
	if (not instance) then
		instance = RaidsByInstanceID[instanceID]
	end
	component.frame.title:SetText(instance.name)
	component.frame.loreBG:SetTexture(instance.loreImage)
	component.frame.loreScrollingFont:SetText(instance.description);
	component.frame.loreScrollBar:SetShown(component.frame.loreScrollingFont:HasScrollableExtent());
	component.frame:Show()
end

UI.Add(component)


--[[
                <Frame name="$parentInstanceFrame" parentKey="instance">
                     <Frames>
                        <Button name="$parentMapButton" parentKey="mapButton">
                            <Size x="48" y="32"/>
                            <Anchors>
                                <Anchor point="BOTTOMLEFT" x="33" y="126"/>
                            </Anchors>
                            <Layers>
                                <Layer level="BACKGROUND">
                                    <Texture name="$parentShadow" inherits="UI-EJ-ShowMapBG">
                                        <Anchors>
                                            <Anchor point="LEFT" x="-3" y="5"/>
                                        </Anchors>
                                    </Texture>
                                </Layer>
                                <Layer level="ARTWORK">
                                    <FontString name="$parentText" font="GameFontNormal" justifyH="LEFT" text="ENCOUNTER_JOURNAL_SHOW_MAP">
                                        <Size x="0" y="0"/>
                                        <Anchors>
                                            <Anchor point="LEFT" relativePoint="RIGHT" x="2" y="0"/>
                                        </Anchors>
                                    </FontString>
                                    <Texture name="$parentTexture" file="Interface\QuestFrame\UI-QuestMap_Button" parentKey="texture">
                                        <Size x="48" y="32"/>
                                        <Anchors>
                                            <Anchor point="RIGHT"/>
                                        </Anchors>
                                        <TexCoords left="0.125" right="0.875" top="0.0" bottom="0.5"/>
                                    </Texture>
                                </Layer>
                                <Layer level="HIGHLIGHT">
                                    <Texture name="$parentHighlight" file="Interface\BUTTONS\ButtonHilight-Square" alphaMode="ADD">
                                        <Size x="36" y="25"/>
                                        <Anchors>
                                            <Anchor point="RIGHT" x="-7" y="0"/>
                                        </Anchors>
                                    </Texture>
                                </Layer>
                            </Layers>
                            <Scripts>
                                <OnClick>
                                    local _, _, _, _, _, _, mapID = EJ_GetInstanceInfo();
                                    if mapID and mapID > 0 then
                                    OpenWorldMap(mapID);
                                    end
                                </OnClick>
                                <OnMouseDown>
                                    self.texture:SetTexCoord(0.125, 0.875, 0.5, 1.0);
                                </OnMouseDown>
                                <OnMouseUp>
                                    self.texture:SetTexCoord(0.125, 0.875, 0.0, 0.5);
                                </OnMouseUp>
                            </Scripts>
                        </Button>
                        <Frame parentKey="LoreScrollingFont" inherits="ScrollingFontTemplate" frameStrata="HIGH">
                            <Size x="315" y="100"/>
                            <Anchors>
                                <Anchor point="BOTTOMLEFT" x="35" y="5"/>
                            </Anchors>
                            <KeyValues>
                                <KeyValue key="fontName" value="GameFontBlack" type="string"/>
                            </KeyValues>
                        </Frame>
                        <EventFrame parentKey="LoreScrollBar" inherits="MinimalScrollBar" frameStrata="HIGH">
                            <KeyValues>
                                <KeyValue key="hideTrack" value="true" type="boolean"/>
                            </KeyValues>
                            <Anchors>
                                <Anchor point="TOPLEFT" relativeKey="$parent.LoreScrollingFont" relativePoint="TOPRIGHT" x="9" y="-33"/>
                                <Anchor point="BOTTOMLEFT" relativeKey="$parent.LoreScrollingFont" relativePoint="BOTTOMRIGHT" x="9" y="33"/>
                            </Anchors>
                        </EventFrame>
                    </Frames>
                </Frame>
]]