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

local function AddTab(name, label)
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
        if (tabIdx == 1) then
            --todo: remove: Display encounters for the first dungeon until the real suggested content is available
            components.EncounterFrame.ShowInstanceInfo(InstanceService.GetDungeons()[1])
        elseif (tabIdx == 2) then
            components.InstanceSelect.ShowDungeons()
        elseif (tabIdx == 3) then
            components.InstanceSelect.ShowRaids()
        end
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
    tab:Show()
    return tab
end

function component.Init(components_)
    components = components_
    EncounterJournal.Tabs = tabs
    EncounterJournal.suggestTab = AddTab("Suggest", "Suggested Content")
    EncounterJournal.dungeonsTab = AddTab("Dungeon", "Dungeons")
    EncounterJournal.raidsTab = AddTab("Raid", "Raids")
    EncounterJournal.Tabs[1]:GetScript("OnClick")()
end

UI.Add(component)
