--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "Heading"
}, WidgetTypeMixin)

function widgetType:Construct(parent)
	local frame = WidgetTypeMixin.ConstructDefault(widgetType, "Frame", nil, parent)
	frame:SetSize(327,30)
	frame.header = frame:CreateTexture(nil, "ARTWORK")
	frame.header:SetTexture("Interface/EncounterJournal/UI-EncounterJournalTextures")
	frame.header:SetSize(327, 30)
	frame.header:SetTexCoord(0.359375, 0.99609375, 0.8525390625, 0.880859375)
	frame.header:SetAllPoints()

	frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	frame.title:SetSize(200, 10)
	frame.title:SetJustifyH("LEFT")
	frame.title:SetPoint("TOPLEFT", 2, -8)
	frame.title:SetPoint("RIGHT", -12, -8)
	frame.title:SetTextColor(0.929, 0.788, 0.620, 1)
	frame.title:SetPoint("BOTTOMLEFT", frame.header, "BOTTOMLEFT", 8, 0)
	return frame
end

function widgetType:IsTypeFor(content)
	return content.heading and true or false
end

function widgetType:SetContents(widget, contents)
	widget.title:SetText(contents.heading)
	self:SetAnchors(widget)
	--widget:SetHeight(widget.text:GetStringHeight() + 12)
	widget:Show()
end

Widgets.RegisterType(widgetType)
