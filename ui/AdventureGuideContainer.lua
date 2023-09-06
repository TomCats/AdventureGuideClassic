--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideContainer")

local currentView

function component.Init()
    -- Create the base window and portrait image
    EncounterJournal = CreateFrame("Frame", addonName .. "_AdventureGuideContainer", UIParent, "PortraitFrameTemplate")
    EncounterJournal:SetSize(800, 496)
    EncounterJournal:EnableMouse(true)
    EncounterJournal:SetToplevel(true)
    EncounterJournal.title = _G[addonName .. "_AdventureGuideContainerTitleText"]
    EncounterJournal.title:SetText("AdventureGuide Classic")
    EncounterJournal.portrait = _G[addonName .. "_AdventureGuideContainerPortrait"]
    EncounterJournal.portrait:SetTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
    local mask = EncounterJournal:CreateMaskTexture()
    mask:SetAllPoints(EncounterJournal.portrait)
    mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    EncounterJournal.portrait:AddMaskTexture(mask)
    -- Allow the window to be moved with last position saved account-wide
    if (SavedVariables.AdventureGuideContainerLocation) then
        EncounterJournal:ClearAllPoints()
        EncounterJournal:SetPoint(unpack(SavedVariables.AdventureGuideContainerLocation))
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
        SavedVariables.AdventureGuideContainerLocation = { self:GetPoint() }
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

function UI.ToggleAdventureGuideContainer()
    EncounterJournal:SetShown(not EncounterJournal:IsShown())
end
