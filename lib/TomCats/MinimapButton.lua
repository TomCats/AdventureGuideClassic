--[[
MinimapButton.lua
Copyright (C) 2018-2023 TomCat's Tours
All rights reserved.

For more information, contact via email at tomcat@tomcatstours.com
(or visit https://www.tomcatstours.com)
]]
select(2, ...).SetupGlobalFacade()

local CreateFrame = CreateFrame
local GetCursorPosition = GetCursorPosition
local Minimap = Minimap
local MinimapCluster = MinimapCluster
local MinimapZoneTextButton = MinimapZoneTextButton
local UIParent = UIParent

local seqNum = 1

local function GetMinimapShape()
	return _G["GetMinimapShape"] and _G["GetMinimapShape"]() or "ROUND"
end

local function MinimapButtonOnload(self)
	self:RegisterForDrag("LeftButton")
	local name = self:GetName()
	local isDragging = false
	local tooltipIsShowing = false
	local Ax, Ay, scale, top, right
	local mapsize = Minimap:GetSize()
	local r = (mapsize / 2) + 10
	local h = math.sqrt((r^2)*2)
	local preferences = {}
	local handlers = {}
	local shape = GetMinimapShape()
	local function RefreshMeasurements()
		Ax, Ay = Minimap:GetCenter()
		scale = self:GetEffectiveScale()
		right = UIParent:GetRight()
		top = UIParent:GetTop()
	end
	local function ButtonDown()
		if (self:IsEnabled()) then
			_G[name .. "Icon"]:SetPoint("TOPLEFT", self, "TOPLEFT", 8, -8)
			_G[name .. "IconOverlay"]:Show()
		end
	end
	local function ButtonUp()
		_G[name .. "Icon"]:SetPoint("TOPLEFT", self, "TOPLEFT", 6, -6)
		_G[name .. "IconOverlay"]:Hide()
	end
	local function OnMouseDown()
		ButtonDown(self)
	end
	local function OnMouseUp()
		ButtonUp()
	end
	local function OnClick()
		if (handlers.OnClick) then
			handlers.OnClick()
		end
	end
	local function UpdatePosition()
		RefreshMeasurements()
		local rad = preferences.position
		if (GetMinimapShape and GetMinimapShape() == "SQUARE") then
			local x, y = math.cos(rad), math.sin(rad)
			x = math.max(-r, math.min(x * h, r))
			y = math.max(-r, math.min(y * h, r))
			self:SetPoint("CENTER", Minimap, "CENTER", x, y)
		else
			local Cx = r * math.cos(rad)
			local Cy = r * math.sin(rad)
			self:SetPoint("CENTER", Minimap, "CENTER", Cx, Cy)
		end
		local buttonRight = self:GetRight()
		if (buttonRight > right) then
			local point = { self:GetPoint() }
			local adj = (buttonRight - right) --* scale
			point[4] = point[4] - adj
			self:SetPoint(unpack(point))
		end
		local buttonTop = self:GetTop()
		if (buttonTop > top) then
			local point = { self:GetPoint() }
			local adj = (buttonTop - top) --* scale
			point[5] = point[5] - adj
			self:SetPoint(unpack(point))
		end
	end
	local function UpdatePositionByCursor()
		local Bx, By = GetCursorPosition()
		preferences.position = math.atan2((By / scale) - Ay, (Bx / scale) - Ax)
		UpdatePosition()
	end
	local function OnUpdate()
		if (isDragging) then
			UpdatePositionByCursor()
		else
			local newShape = GetMinimapShape and GetMinimapShape() or "ROUND"
			local newSize = Minimap:GetSize()
			if (shape ~= newShape or mapsize ~= newSize) then
				shape = newShape
				mapsize = newSize
				r = (mapsize / 2) + 10
				h = math.sqrt((r^2)*2)
				UpdatePosition()
			end
		end
	end
	local function OnDragStart()
		if (tooltipIsShowing) then
			self.tooltip:Hide()
			tooltipIsShowing = false
		end
		RefreshMeasurements()
		self:ClearAllPoints()
		isDragging = true
	end
	local function OnDragStop()
		ButtonUp()
		isDragging = false
	end
	local function OnEnter()
		if (self.tooltip and (not isDragging)) then
			self.tooltip.Show(self)
			tooltipIsShowing = true
		end
	end
	local function OnLeave()
		if (self.tooltip) then
			self.tooltip.Hide()
			tooltipIsShowing = false
		end
	end
	function self:GetPreferences()
		if (not preferences.position) then
			preferences.position = -2.888
		end
		return preferences
	end
	function self:IsEnabled()
		return not preferences.hidden
	end
	function self:SetPreferences(savedPreferences)
		if (savedPreferences) then
			if (savedPreferences.position and type(savedPreferences.position) == "number") then
				preferences = savedPreferences
			end
			RefreshMeasurements()
			UpdatePosition()
			if (savedPreferences.hidden) then
				self:Hide()
			end
		end
	end
	function self:SetEnabled(enabled)
		if (enabled) then
			self:Show()
			preferences.hidden = false
		else
			self:Hide()
			preferences.hidden = true
		end
	end
	function self:SetHandler(handlerType, handler)
		handlers[handlerType] = handler
	end
	self:SetScript("OnMouseDown", OnMouseDown)
	self:SetScript("OnMouseUp", OnMouseUp)
	self:SetScript("OnClick", OnClick)
	self:SetScript("OnDragStart", OnDragStart)
	self:SetScript("OnDragStop", OnDragStop)
	self:SetScript("OnUpdate", OnUpdate)
	self:SetScript("OnEnter", OnEnter)
	self:SetScript("OnLeave", OnLeave)
end


function CreateMinimapButton(buttonInfo)
	if (MinimapZoneTextButton and MinimapZoneTextButton:GetParent() == MinimapCluster) then
		MinimapZoneTextButton:SetParent(Minimap)
	end
	local name = buttonInfo.name
	if (not name) then
		name = addonName .. "MinimapButton" .. seqNum
		seqNum = seqNum + 1
	end
	--noinspection UnusedDef
	local frame = CreateFrame("Button", name, Minimap, "AdventureGuideClassic-MinimapButtonTemplate")
	MinimapButtonOnload(frame)
	frame:SetFrameLevel(13)
	if (buttonInfo.backgroundColor) then
		local background = _G[name .. "Background"]
		background:SetDrawLayer("BACKGROUND", 1)
		background:SetTexture("Interface\\CHARACTERFRAME\\TempPortraitAlphaMaskSmall")
		background:SetWidth(25)
		background:SetHeight(25)
		background:SetVertexColor(unpack(buttonInfo.backgroundColor))
		frame.backgroundColor = buttonInfo.backgroundColor
	end
	frame.title = buttonInfo.title or name
	if (buttonInfo.iconTexture) then
		_G[name .. "Icon"]:SetTexture(buttonInfo.iconTexture)
	end
	if (buttonInfo.name) then
		local scope = SavedVariables
		if (scope[name]) then
			frame:SetPreferences(scope[name])
		else
			scope[name] = frame:GetPreferences()
		end
	end
	if (buttonInfo.handler_onclick) then
		frame:SetHandler("OnClick",
				function(...)
					buttonInfo.handler_onclick(...)
				end)
	end
	-- need to fix this before re-enabling: SexyMap will fade out our icon but will not put it back
	-- setupButtonForSexyMap(frame)
	return frame
end
