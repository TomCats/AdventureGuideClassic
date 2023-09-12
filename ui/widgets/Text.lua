--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "Text"
}, WidgetTypeMixin)

function widgetType:Construct(parent)
	local frame = WidgetTypeMixin.ConstructDefault(widgetType, "Frame", nil, parent)
	frame:SetSize(1,1)
	frame.text = frame:CreateFontString(nil, "ARTWORK", "GameFontBlack")
	frame.text:SetJustifyH("LEFT")
	frame.text:SetPoint("TOPLEFT", 2, -8)
	frame.text:SetPoint("RIGHT", -12, -8)
	frame.text:SetTextColor(0.25, 0.1484375, 0.02, 1)
	frame.text:SetWordWrap(true)
	return frame
end

function widgetType:IsTypeFor(content)
	return content.text and true or false
end

function widgetType:SetContents(widget, contents)
	widget.text:SetText(TokenizedTextService.ReplaceWithWoWEscapeCodes(contents.text))
	WidgetTypeMixin:SetAnchors(widget)
	widget:SetHeight(widget.text:GetStringHeight() + 12)
	widget:Show()
end

Widgets.RegisterType(widgetType)
