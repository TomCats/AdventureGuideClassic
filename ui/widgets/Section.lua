--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "Section"
}, CollapsibleSectionWidgetTypeMixin)

function widgetType:IsTypeFor(content)
	return content.section and true or false
end

function widgetType:SetContents(widget, contents)
	widget.button.title:SetText(contents.section)
	CollapsibleSectionWidgetTypeMixin.SetContents(self, widget, contents)
end

Widgets.RegisterType(widgetType)
