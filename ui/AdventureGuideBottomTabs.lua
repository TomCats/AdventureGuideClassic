--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideBottomTabs")

local components
local tabs = { }
local views = { }
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
    tab:SetScript("OnClick", function()
        for _, view in ipairs(views) do
            view:Hide()
        end
        if (tabIdx == 2) then
            components.AdventureGuideInstanceSelect.ShowDungeons()
        elseif (tabIdx == 3) then
            components.AdventureGuideInstanceSelect.ShowRaids()
        end
        PanelTemplates_Tab_OnClick(tab, AdventureGuideContainerFrame)
        PanelTemplates_SetTab(AdventureGuideContainerFrame, tabIdx)
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
    end)
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Left")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Middle")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, tabIdx, "Right")]:Hide()
    tabs[tabIdx] = tab
    PanelTemplates_TabResize(tab, 0, nil, 36, 300);
    AdventureGuideContainerFrame.numTabs = #tabs
    tab:Show()
end

function component.Init(components_)
    components = components_
    AdventureGuideContainerFrame = components.AdventureGuideContainer.frame
    components.AdventureGuideContainer.frame.Tabs = tabs
    AddTab("Suggested Content")
    AddTab("Dungeons")
    AddTab("Raids")
    table.insert(views, components.AdventureGuideInstanceSelect.frame)
end

UI.Add(component)
