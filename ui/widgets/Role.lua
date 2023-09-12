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
	print(contents.role)
	widget.button.title:SetText(contents.role)
	WidgetTypeMixin:SetAnchors(widget)
	local height = 24
	for idx, contentPart in ipairs(contents) do
		if (type(contentPart) == "string") then
			-- todo: replace tokens and convert into a table
			contentPart = { text = contentPart}
			contents[idx] = contentPart
		end
		local type = Widgets.GetTypeForContent(contentPart)
		if (not type) then
		else
			local child = type:Acquire(widget)
			type:SetContents(child, contentPart)
			height = height + child:GetHeight()
		end
	end
	widget:SetHeight(height)
	widget:Show()
end

Widgets.RegisterType(widgetType)
