--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

_G["BINDING_NAME_TOGGLE_ADVENTUREGUIDECLASSIC"] = "Toggle Main Window"

local isDirty = false

local frame = CreateFrame("FRAME")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("UPDATE_BINDINGS")

frame:SetScript("OnUpdate", function()
    if (isDirty and not InCombatLockdown()) then
        isDirty = false
        SetBinding("SHIFT-J", "TOGGLE_ADVENTUREGUIDECLASSIC")
    end
end)

frame:SetScript("OnEvent", function(_, event, arg1, arg2)
    if ((event == "PLAYER_ENTERING_WORLD" and arg2) or event == "UPDATE_BINDINGS") then
        if (not ((KeyBindingFrame and KeyBindingFrame:IsShown()) or (SettingsPanel and SettingsPanel:IsShown()))) then
            local bindingKey = GetBindingKey("TOGGLE_ADVENTUREGUIDECLASSIC")
            if (not bindingKey) then
                local command = GetBindingByKey("SHIFT-J")
                if (not command) then
                    isDirty = true
                end
            end
        end
    end
end)
