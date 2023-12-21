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
	widget:Show()
	return widget
end

-- should be overridden with a function that starts with the ConstructDefault call
function WidgetTypeMixin:Construct(parent)
	return self:ConstructDefault("Frame", nil, parent)
end

-- do not override
function WidgetTypeMixin:ConstructDefault(frameType, name, parent, template, id)
	local frame = CreateFrame(frameType, name, parent, template, id)
	frame.widgetType = self
	frame.widgets = { }
	if (string.upper(frameType) == "FRAME") then
		frame:SetHyperlinksEnabled(true)
		frame:SetScript("OnHyperlinkEnter", HyperlinkService.OnHyperlinkEnter)
		frame:SetScript("OnHyperlinkLeave", HyperlinkService.OnHyperlinkLeave)
	end
	return frame
end

-- do no toverride
function WidgetTypeMixin:Release(widget)
	if (widget.widgets) then
		while(#widget.widgets > 0) do
			local child = table.remove(widget.widgets)
			child.widgetType:Release(child)
		end
	end
	widget:ClearAllPoints()
	widget:Hide()
	table.insert(self.pool, widget)
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
			widget:SetPoint("TOPLEFT", parent, "TOPLEFT", 10, -24)
			widget:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
		end
	else
		local previous = widget:GetParent().widgets[widget.idx - 1]
		if (self.type == "Button") then
			if (parent.type.name == "Root") then
				widget:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 0, -8)
				widget:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
			else
				widget:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 8, -16)
				widget:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
			end
		else
			widget:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 0, 0)
			widget:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
		end
	end
end

-- should be overridden
function WidgetTypeMixin:SetContents(widget, content)

end

-- should be overridden
function WidgetTypeMixin:IsTypeFor()
	return false
end
