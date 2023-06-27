--[[
GlobalFacade.lua
Copyright (C) 2018-2023 TomCat's Tours
All rights reserved.

Non-exclusive license to this library has been provided to FooxyTV for use within the AdventureGuide Classic AddOn

For more information, contact via email at tomcat@tomcatstours.com
(or visit https://www.tomcatstours.com)
]]
select(2, ...).SetupGlobalFacade()

local imagesPattern = "Interface\\AddOns\\%s\\images\\%s.blp"

I = { }

setmetatable(I, {
    __index = function(_, key)
        return imagesPattern:format(addonName, key)
    end,
})
