--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "Role"
}, CollapsibleSectionWidgetTypeMixin)

function widgetType:IsTypeFor(content)
	return content.role and true or false
end

function widgetType:SetContents(widget, contents)
	widget.button.title:SetText(contents.role)
	CollapsibleSectionWidgetTypeMixin.SetContents(self, widget, contents, true)
end

Widgets.RegisterType(widgetType)
