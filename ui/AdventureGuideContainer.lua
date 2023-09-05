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
    component.frame = CreateFrame("Frame", addonName .. "_AdventureGuideContainer", UIParent, "PortraitFrameTemplate")
    local frame = component.frame
    frame:SetSize(800, 496)
    frame:EnableMouse(true)
    frame:SetToplevel(true)
    frame.title = _G[addonName .. "_AdventureGuideContainerTitleText"]
    frame.title:SetText("AdventureGuide Classic")
    frame.portrait = _G[addonName .. "_AdventureGuideContainerPortrait"]
    frame.portrait:SetTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
    local mask = component.frame:CreateMaskTexture()
    mask:SetAllPoints(frame.portrait)
    mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    frame.portrait:AddMaskTexture(mask)
    -- Allow the window to be moved with last position saved account-wide
    if (SavedVariables.AdventureGuideContainerLocation) then
        frame:ClearAllPoints()
        frame:SetPoint(unpack(SavedVariables.AdventureGuideContainerLocation))
    else
        frame:SetPoint("CENTER")
    end
    frame:RegisterForDrag("LeftButton")
    frame:SetClampedToScreen(true)
    frame:SetScript("OnDragStart", function(self)
        frame:SetMovable(true)
        if not self.isLocked then
            self:StartMoving()
        end
    end)
    frame:SetScript("OnDragStop", function(self)
        frame:SetMovable(false)
        self:StopMovingOrSizing()
        SavedVariables.AdventureGuideContainerLocation = { self:GetPoint() }
    end)
    frame:SetScript("OnShow", function()
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_OPEN);
    end)
    frame:SetScript("OnHide", function()
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_CLOSE);
    end)
    frame.inset = CreateFrame("Frame", frame:GetName() .. "Inset", frame, "InsetFrameTemplate")
    frame.inset:SetPoint("TOPRIGHT", -4, -60)
    frame.inset:SetPoint("BOTTOMLEFT", 4, 5)
    component.frame:SetShown(false)
    table.insert(UISpecialFrames, frame:GetName())
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
    component.frame:SetShown(not component.frame:IsShown())
end
