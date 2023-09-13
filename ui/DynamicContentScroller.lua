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
	local scrollFrameWrapper = CreateFrame("Frame", nil, EncounterJournal.encounter.info)
	scrollFrameWrapper:SetSize(350, 383)
	scrollFrameWrapper:SetPoint("BOTTOMRIGHT", -5, 1)
	local scrollFrame = CreateFrame("ScrollFrame", nil, scrollFrameWrapper)
	component.frame = scrollFrameWrapper
	scrollFrame:SetSize(350, 383)
	scrollFrame.scrollBarX = -15
	scrollFrame.scrollBarTopY = -6
	scrollFrame.scrollBarBottomY = 6
	scrollFrame:SetPoint("BOTTOMRIGHT")
	scrollFrame.scrollBarTemplate = "MinimalScrollBar"
	scrollFrame.child = Widgets.AcquireRoot(scrollFrame)
	scrollFrame.child:SetPoint("TOPLEFT")
	scrollFrame.child:SetSize(320, 100)
	scrollFrame:SetScrollChild(scrollFrame.child)
	scrollFrameWrapper.child = scrollFrame.child
	ScrollFrame_OnLoad(scrollFrame)
	scrollFrameWrapper:Hide()
	scrollFrameWrapper:SetScript("OnHide", function()
		scrollFrame.child.widgetType:Release(scrollFrame.child)
		scrollFrame.child = Widgets.AcquireRoot(scrollFrame)
		scrollFrame.child:SetPoint("TOPLEFT")
		scrollFrame.child:SetSize(320, 100)
	end)
end

function component.Show()
	components.EncounterFrame.SetCurrentView(component.frame)
	component.frame.child:SetContents(AdventureGuideNavigationService.GetEncounterContent())
end

UI.Add(component)
