--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

WidgetTypeMixin = { }

function WidgetTypeMixin:Acquire()
	if (not self.pool) then self.pool = { } end
	local widget = table.remove(self.pool)
	if (widget == nil) then
		widget = self:Construct()
		widget.type = self
	end
	widget:Reset()
	return widget
end
