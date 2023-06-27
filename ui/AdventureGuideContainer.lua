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
    local frame = component.frame
    frame:SetSize(800, 496)
    frame:SetPoint("CENTER")
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

    --todo: Show only via a slash command and UI button
    component.frame:Show()
end

    UI.Add(component)
