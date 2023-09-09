--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("DynamicContentScroller")

local components

function component.Init(components_)
	components = components_
	local scrollFrame = CreateFrame("ScrollFrame", nil, EncounterJournal.encounter.info)
	component.frame = scrollFrame
	scrollFrame:SetSize(350, 383)
	scrollFrame.scrollBarX = -15
	scrollFrame.scrollBarTopY = -6
	scrollFrame.scrollBarBottomY = 6
	scrollFrame:SetPoint("BOTTOMRIGHT", -5, 1)
	scrollFrame.scrollBarTemplate = "MinimalScrollBar"
	scrollFrame.child = Widgets.Acquire()
	scrollFrame.child:SetParent(scrollFrame)
	scrollFrame.child:SetPoint("TOPLEFT")
	scrollFrame.child:SetSize(320, 1)
	scrollFrame:SetScrollChild(scrollFrame.child)
	ScrollFrame_OnLoad(scrollFrame)
	scrollFrame:Hide()
end

function component.Show()
	components.EncounterFrame.SetCurrentView(component.frame)
end

UI.Add(component)
