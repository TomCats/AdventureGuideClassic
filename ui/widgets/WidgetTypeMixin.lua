--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

WidgetTypeMixin = { }

function WidgetTypeMixin:Acquire(parent)
	if (not self.pool) then self.pool = { } end
	local widget = table.remove(self.pool)
	if (widget == nil) then
		widget = self:Construct(parent)
		widget.type = self
	end
	widget:SetParent(parent)
	if (parent.widgets) then
		table.insert(parent.widgets, widget)
		widget.idx = #parent.widgets
	end
	return widget
end

-- should be overridden
function WidgetTypeMixin:Construct(parent)
	return self:ConstructDefault("Frame", nil, parent)
end

-- do not override
function WidgetTypeMixin:ConstructDefault(frameType, name, parent, template, id)
	local frame = CreateFrame(frameType, name, parent, template, id)
	frame.widgets = { }
	return frame
end

-- do not override
function WidgetTypeMixin:SetAnchors(widget)
	widget:ClearAllPoints()
	local parent = widget:GetParent()
	if (widget.idx == 1) then
		if (parent.type.name == "Root") then
			widget:SetPoint("TOPLEFT")
			widget:SetPoint("TOPRIGHT")
		else
			widget:SetPoint("TOPLEFT", parent, "TOPLEFT", 10, -16)
			widget:SetPoint("RIGHT", parent, "RIGHT", 0, -16)
		end
	else
		local previous = widget:GetParent().widgets[widget.idx - 1]
		widget:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 0, 0)
		widget:SetPoint("RIGHT", parent, "RIGHT", 0, -16)
	end
end

-- should be overridden
function WidgetTypeMixin:SetContents(widget, content)

end

-- should be overridden
function WidgetTypeMixin:IsTypeFor()
	return false
end
