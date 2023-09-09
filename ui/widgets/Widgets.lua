--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Widgets = { }

local widgetTypes = { }
local widgetTypesList = { }

function Widgets.AcquireRoot(parent)
	local widgetType = widgetTypes.Root
	return widgetType:Acquire(parent)
end

function Widgets.GetTypeForContent(content)
	for _, widgetType in ipairs(widgetTypesList) do
		if (widgetType:IsTypeFor(content)) then
			return widgetType
		end
	end
end

function Widgets.RegisterType(widgetType)
	widgetTypes[widgetType.name] = widgetType
	table.insert(widgetTypesList, widgetType)
end
