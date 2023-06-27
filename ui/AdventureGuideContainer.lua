--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideContainer")

function component.Init()
    -- Create the base window and portrait image
    component.frame = CreateFrame("Frame", addonName .. "_AdventureGuideContainer", UIParent, "PortraitFrameTemplate")
    component.frame:SetSize(800, 496)
    component.frame:SetPoint("CENTER")
    component.frame:EnableMouse(true)
    component.frame:SetToplevel(true)
    _G[addonName .. "_AdventureGuideContainerTitleText"]:SetText("AdventureGuide Classic")
    _G[addonName .. "_AdventureGuideContainerPortrait"]:SetTexture("Interface\\EncounterJournal\\UI-EJ-PortraitIcon")
    local mask = component.frame:CreateMaskTexture()
    mask:SetAllPoints(_G[addonName .. "_AdventureGuideContainerPortrait"])
    mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    _G[addonName .. "_AdventureGuideContainerPortrait"]:AddMaskTexture(mask)

    --todo: Show only via a slash command and UI button
    component.frame:Show()
end

UI.Add(component)
