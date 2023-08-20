--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local tocVersion = select(4,GetBuildInfo())
local isLegacy = tocVersion <= 11403

Compatibility = { }

function Compatibility.IsLegacy()
	return isLegacy
end
