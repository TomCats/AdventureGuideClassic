--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

UI = { }

local components = { }
local updateComponents = { }
local frame

function UI.Add(component)
    table.insert(components, component)
    if (component.name) then
        components[component.name] = component
    end
    if (component.Update) then
        table.insert(updateComponents, component)
    end
end

function UI.Init()
    frame = CreateFrame("Frame")
    for _, component in ipairs(components) do
        if (component.Init) then
            component.Init(components)
        end
    end
end
