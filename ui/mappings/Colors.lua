--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
function GetColorMapping()
    return {
        [0] = {r = 0.62, g = 0.62, b = 0.62}, -- Poor
        [1] = {r = 1.00, g = 1.00, b = 1.00}, -- Common
        [2] = {r = 0.12, g = 1.00, b = 0.00}, -- Uncommon
        [3] = {r = 0.00, g = 0.44, b = 0.87}, -- Rare
        [4] = {r = 0.64, g = 0.21, b = 0.93}, -- Epic
        [5] = {r = 1.00, g = 0.50, b = 0.00}, -- Legendary
        [6] = {r = 0.90, g = 0.80, b = 0.50}, -- Artifact
        [7] = {r = 1.00, g = 0.00, b = 0.00}, -- Heirloom
    }
end

select(2, ...).SetupGlobalFacade("GetColorMapping", GetColorMapping)
