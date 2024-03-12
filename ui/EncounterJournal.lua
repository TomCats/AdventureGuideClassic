--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("EncounterJournal")
local components

local currentView

local version = C_AddOns.GetAddOnMetadata(addonName, "Version")

function component.Init(components_)
    components = components_
    -- Create the base window and portrait image
    EncounterJournal = CreateFrame("Frame", addonName .. "_EncounterJournal", UIParent, "PortraitFrameTemplate")
    component.frame = EncounterJournal
    EncounterJournal:SetSize(800, 496)
    EncounterJournal:EnableMouse(true)
    EncounterJournal:SetToplevel(true)

    -- Create version icon
    local emptyRingTexture = "Interface\\Common\\portrait-ring-withbg"
    local helpTexture = "Interface\\Common\\help-i"
    local highlightTexture = "Interface\\Common\\portrait-ring-withbg-highlight"

    EncounterJournal.versionIcon = CreateFrame("Frame", addonName .. "_VersionIcon", EncounterJournal)
    EncounterJournal.versionIcon:SetSize(35, 35)
    EncounterJournal.versionIcon:SetPoint("LEFT", EncounterJournal.portrait, "RIGHT", -5, 12)
    EncounterJournal.versionIcon.emptyRingTexture = EncounterJournal.versionIcon:CreateTexture()
    EncounterJournal.versionIcon.emptyRingTexture:SetAllPoints(EncounterJournal.versionIcon)
    EncounterJournal.versionIcon.emptyRingTexture:SetTexture(emptyRingTexture)
    EncounterJournal.versionIcon.helpTexture = EncounterJournal.versionIcon:CreateTexture(nil, "ARTWORK")
    EncounterJournal.versionIcon.helpTexture:SetAllPoints(EncounterJournal.versionIcon)
    EncounterJournal.versionIcon.helpTexture:SetTexture(helpTexture)
    EncounterJournal.versionIcon.helpTexture:SetBlendMode("ADD")
    EncounterJournal.versionText = EncounterJournal:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
    EncounterJournal.versionText:SetPoint("LEFT", EncounterJournal.versionIcon, "RIGHT", 5, 0)
    EncounterJournal.versionText:SetText("v" .. version)
    EncounterJournal.versionText:Hide()
    EncounterJournal.versionIcon:SetScript("OnEnter", function (self)
        -- EncounterJournal.versionText:Show()
        EncounterJournal.versionIcon.emptyRingTexture:SetAllPoints(EncounterJournal.versionIcon)
        EncounterJournal.versionIcon.emptyRingTexture:SetTexture(highlightTexture)
        local name = UnitName("player")
        local class = select(2,UnitClass("player"))
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT", -15, -7)
        GameTooltip:AddLine("Information")
        GameTooltip:AddLine("Name: |c"..RAID_CLASS_COLORS[class].colorStr..name.."|r",.65,.85,1)
        GameTooltip:AddLine("Version: |c"..RAID_CLASS_COLORS[class].colorStr..version.."|r",.65,.85,1)
        GameTooltip:AddLine("Release: |c"..RAID_CLASS_COLORS[class].colorStr.."Development".."|r",.65,.85,1)
        GameTooltip:Show()
    end)

    EncounterJournal.versionIcon:SetScript("OnLeave", function(self)
        -- EncounterJournal.versionText:Hide()
        EncounterJournal.versionIcon.emptyRingTexture:SetAllPoints(EncounterJournal.versionIcon)
        EncounterJournal.versionIcon.emptyRingTexture:SetTexture(emptyRingTexture)
        GameTooltip:Hide()
    end)


    EncounterJournal.title = _G[addonName .. "_EncounterJournalTitleText"]
    EncounterJournal.title:SetText("Adventure Guide")
    EncounterJournal.portrait = _G[addonName .. "_EncounterJournalPortrait"]
    EncounterJournal.portrait:SetTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
    local mask = EncounterJournal:CreateMaskTexture()
    mask:SetAllPoints(EncounterJournal.portrait)
    mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    EncounterJournal.portrait:AddMaskTexture(mask)
    -- Allow the window to be moved with last position saved account-wide
    if (SavedVariables.EncounterJournalLocation) then
        EncounterJournal:ClearAllPoints()
        EncounterJournal:SetPoint(unpack(SavedVariables.EncounterJournalLocation))
    else
        EncounterJournal:SetPoint("CENTER")
    end
    EncounterJournal:RegisterForDrag("LeftButton")
    EncounterJournal:SetClampedToScreen(true)
    EncounterJournal:SetScript("OnDragStart", function(self)
        EncounterJournal:SetMovable(true)
        if not self.isLocked then
            self:StartMoving()
        end
    end)
    EncounterJournal:SetScript("OnDragStop", function(self)
        EncounterJournal:SetMovable(false)
        self:StopMovingOrSizing()
        SavedVariables.EncounterJournalLocation = { self:GetPoint() }
    end)
    EncounterJournal:SetScript("OnShow", function()
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
    end)
    EncounterJournal:SetScript("OnHide", function()
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
    end)
    EncounterJournal.inset = CreateFrame("Frame", EncounterJournal:GetName() .. "Inset", EncounterJournal, "InsetFrameTemplate")
    EncounterJournal.inset:SetPoint("TOPRIGHT", -4, -60)
    EncounterJournal.inset:SetPoint("BOTTOMLEFT", 4, 5)
    EncounterJournal:SetShown(false)
    table.insert(UISpecialFrames, EncounterJournal:GetName())
end

function component.SetCurrentView(newView)
    if (currentView and currentView ~= newView) then
        currentView:Hide()
        currentView = newView
        currentView:Show()
    else
        currentView = newView
        currentView:Show()
    end
end

UI.Add(component)

local initialized = false

function UI.ToggleEncounterJournal()
    if (not initialized) then
        UI.Init()
        initialized = true
    end
    EncounterJournal:SetShown(not EncounterJournal:IsShown())
    if (AdventureGuideNavigationService.GetEncounter()) then
        components.DynamicContentScroller.Show()
    end
end
