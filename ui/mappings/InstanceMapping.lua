--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]


function GetDungeonInstanceMapping()
    if C_Seasons.HasActiveSeason() then
        local activeSeasonID = C_Seasons.GetActiveSeason()
        if activeSeasonID == 2 then
            return {
                [227] = false,
                [228] = true,
                [229] = true,
                [230] = true,
                [231] = false,
                [232] = true,
                [226] = true,
                [233] = true,
                [234] = true,
                [316] = true,
                [246] = true,
                [64]  = true,
                [236] = true,
                [63]  = true,
                [238] = true,
                [237] = false,
                [239] = true,
                [240] = true,
                [241] = true
            }
        else
            return {
                [227] = true,
                [228] = true,
                [229] = true,
                [230] = true,
                [231] = true,
                [232] = true,
                [226] = true,
                [233] = true,
                [234] = true,
                [316] = true,
                [246] = true,
                [64]  = true,
                [236] = true,
                [63]  = true,
                [238] = true,
                [237] = true,
                [239] = true,
                [240] = true,
                [241] = true
            }
        end
    else
        -- placeholder
    end
end

select(2, ...).SetupGlobalFacade("GetDungeonInstanceMapping", GetDungeonInstanceMapping)