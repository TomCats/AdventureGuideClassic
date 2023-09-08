--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("EncounterJournalTabs")

local components
local tabs = { }
local tabNameFormat = "%s_%sTab"
local tabDisabledTextureFormat = "%s_%sTab%sDisabled"

local function AddTab(name, label, onclickFunc)
    local tabIdx = #tabs + 1
    local tab = CreateFrame("Button", string.format(tabNameFormat, addonName, name),
            EncounterJournal, "CharacterFrameTabButtonTemplate")
    tab:SetText(label)
    if (tabIdx == 1) then
        tab:SetPoint("TOPLEFT", EncounterJournal, "BOTTOMLEFT", 16, 2)
    else
        tab:SetPoint("LEFT", tabs[tabIdx - 1], "RIGHT", -16, 0)
    end
    tab:SetScript("OnEvent", nil)
    tab:SetScript("OnShow", nil)
    tab:SetScript("OnClick", function()
        tab.onclickFunc()
        PanelTemplates_Tab_OnClick(tab, EncounterJournal)
        PanelTemplates_SetTab(EncounterJournal, tabIdx)
        PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
    end)
    _G[string.format(tabDisabledTextureFormat, addonName, name, "Left")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, name, "Middle")]:Hide()
    _G[string.format(tabDisabledTextureFormat, addonName, name, "Right")]:Hide()
    tabs[tabIdx] = tab
    PanelTemplates_TabResize(tab, 0, nil, 36, 300);
    EncounterJournal.numTabs = #tabs
    _G.EncounterJournalTabs = tabs
    tab.onclickFunc = onclickFunc
    tab:Show()
    return tab
end

function component.GetTab(idx)
    return tabs[idx]
end

function component.Init(components_)
    components = components_
    EncounterJournal.Tabs = tabs
    --EncounterJournal.suggestTab = AddTab("Suggest", "Suggested Content", function()
    --    --todo: Create suggested content tab
    --end)
    EncounterJournal.dungeonsTab = AddTab("Dungeon", "Dungeons", function()
        AdventureGuideNavigationService.Reset()
        AdventureGuideNavigationService.SetInstances(InstanceService.GetDungeons())
        components.InstanceSelect.SetTitle(DUNGEONS)
        components.InstanceSelect.Show()
    end)
    EncounterJournal.raidsTab = AddTab("Raid", "Raids", function()
        AdventureGuideNavigationService.Reset()
        AdventureGuideNavigationService.SetInstances(InstanceService.GetRaids())
        components.InstanceSelect.SetTitle(RAIDS)
        components.InstanceSelect.Show()
    end)
    EncounterJournal.Tabs[1]:GetScript("OnClick")()
end

UI.Add(component)
