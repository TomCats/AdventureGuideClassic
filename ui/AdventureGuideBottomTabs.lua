--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideBottomTabs")

local tabs = { }
local tabNameFormat = "%s_AdventureGuideBottomTab%s"
local tabDisabledTextureFormat = "%s_AdventureGuideBottomTab%s%sDisabled"
local AdventureGuideContainerFrame

local function AddTab(label)
    local tabIdx = #tabs + 1
    local tab = CreateFrame("Button", string.format(tabNameFormat, addonName, tabIdx),
            AdventureGuideContainerFrame, "CharacterFrameTabButtonTemplate")
    tab:SetText(label)
    if (tabIdx == 1) then
        tab:SetPoint("TOPLEFT", AdventureGuideContainerFrame, "BOTTOMLEFT", 16, 2)
    else
        tab:SetPoint("LEFT", tabs[tabIdx - 1], "RIGHT", -16, 0)
    end
    tab:SetScript("OnEvent", nil)
    tab:SetScript("OnShow", nil)
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Left")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Middle")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Right")]:Hide()
    tabs[tabIdx] = tab
    PanelTemplates_TabResize(tab, 0, nil, 36, 300);
    tab:Show()
end

function component.Init(components)
    AdventureGuideContainerFrame = components.AdventureGuideContainer.frame
    AddTab("Suggested Content")
    AddTab("Dungeons")
    AddTab("Raids")
end

UI.Add(component)
