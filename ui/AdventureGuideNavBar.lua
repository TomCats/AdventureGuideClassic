--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("AdventureGuideNavBar")

function component.Init(components)
	local parent = components.AdventureGuideContainer.frame
	local frame = CreateFrame("Frame", parent:GetName() .. "NavBar", parent, "NavBarTemplate")
	component.frame = frame
	frame:SetSize(730, 34)
	frame:SetPoint("TOPLEFT", 61, -22)
	local insetBotLeftCorner = frame:CreateTexture(nil, "BORDER", "UI-Frame-InnerBotLeftCorner")
	insetBotLeftCorner:ClearAllPoints()
	insetBotLeftCorner:SetPoint("BOTTOMLEFT", -3, -3)
	local insetBotRightCorner = frame:CreateTexture(nil, "BORDER", "UI-Frame-InnerBotRight")
	insetBotRightCorner:ClearAllPoints()
	insetBotRightCorner:SetPoint("BOTTOMRIGHT", 3, -3)
	local insetBottomBorder = frame:CreateTexture(nil, "BORDER", "_UI-Frame-InnerBotTile")
	insetBottomBorder:ClearAllPoints()
	insetBottomBorder:SetPoint("BOTTOMLEFT", insetBotLeftCorner, "BOTTOMRIGHT")
	insetBottomBorder:SetPoint("BOTTOMRIGHT", insetBotRightCorner, "BOTTOMLEFT")
	local insetLeftBorder = frame:CreateTexture(nil, "BORDER", "!UI-Frame-InnerLeftTile")
	insetLeftBorder:ClearAllPoints()
	insetLeftBorder:SetPoint("TOPLEFT", -3, 0)
	insetLeftBorder:SetPoint("BOTTOMLEFT", insetBotLeftCorner, "TOPLEFT")
	local insetRightBorder = frame:CreateTexture(nil, "BORDER", "!UI-Frame-InnerRightTile")
	insetRightBorder:ClearAllPoints()
	insetRightBorder:SetPoint("TOPRIGHT", 3, 0)
	insetRightBorder:SetPoint("BOTTOMRIGHT", insetBotRightCorner, "TOPRIGHT")
	frame.button2 = CreateFrame("Button", frame:GetName() .. "Button2", frame, "NavButtonTemplate")
	local homeData = {
		name = "Home",
		OnClick = nop,
	}
	NavBar_Initialize(frame, "NavButtonTemplate", homeData, frame.home, frame.overflow);
	local button2Data = {
		name = "Fooxy",
		OnClick = nop,
	}
	NavBar_AddButton(frame, button2Data)
	NavBar_AddButton(frame, button2Data)
	NavBar_Reset(frame)
end

UI.Add(component)