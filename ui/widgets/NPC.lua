--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local widgetType = Mixin({
	name = "NPC"
}, CollapsibleSectionWidgetTypeMixin)

function widgetType:IsTypeFor(content)
	return content.npc and true or false
end

function widgetType:SetContents(widget, contents)
	--todo: implement refresh when npc name is retrievable
	local npcName = NPCService.GetName(contents.npc) or "..."
	widget.button.title:SetText(npcName)
	CollapsibleSectionWidgetTypeMixin.SetContents(self, widget, contents)
end

Widgets.RegisterType(widgetType)
