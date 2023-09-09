--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Widgets = { }

local widgetTypes = { }

function Widgets.Acquire(widgetTypeName)
	if (not widgetTypeName) then
		widgetTypeName = "Root"
	end
	local widgetType = widgetTypes[widgetTypeName]
	return widgetType:Acquire()
end

function Widgets.RegisterType(widgetType)
	widgetTypes[widgetType.name] = widgetType
end
