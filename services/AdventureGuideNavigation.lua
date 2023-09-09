--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local instance
local instances
local encounter

AdventureGuideNavigationService = { }

function AdventureGuideNavigationService.Reset()
	instance = nil
	instances = nil
	encounter = nil
end

function AdventureGuideNavigationService.GetEncounter()
	return encounter
end

function AdventureGuideNavigationService.GetEncounterContent()
	return encounter.overview
end

function AdventureGuideNavigationService.GetInstance()
	return instance
end

function AdventureGuideNavigationService.GetInstances()
	return instances
end

function AdventureGuideNavigationService.SetEncounter(ref)
	encounter = ref
end

function AdventureGuideNavigationService.SetInstance(ref)
	instance = ref
end

function AdventureGuideNavigationService.SetInstances(ref)
	instances = ref
end
