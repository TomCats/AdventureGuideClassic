--[[ See license.txt for license and copyright information ]]
select(2, ...).SetupGlobalFacade()

local component = UI.CreateComponent("MinimapButton")

function component.Init(components)
	local frame = CreateMinimapButton({
		name = "JoanasGuides-MinimapButton",
		iconTexture = string.format("Interface\\AddOns\\%s\\images\\AdventureGuideIcon", addonName),
		backgroundColor = { 0.0,0.0,0.0,1.0 },
		handler_onclick = function()
			UI.ToggleAdventureGuideContainer()
		end
	})
	frame.tooltip = {
		Show = function(this)
			GameTooltip:ClearLines()
			GameTooltip:SetOwner(this, "ANCHOR_NONE")
			GameTooltip:SetPoint("TOPRIGHT", this, "BOTTOMRIGHT", 0, 0)
			--todo: Localize
			GameTooltip:SetText("AdventureGuide Classic", 1, 1, 1)
			GameTooltip:Show()
		end,
		Hide = function()
			GameTooltip:Hide()
		end
	}
	component.frame = frame
end

function component.Update()
	if (component:IsDirty()) then
		component.frame:SetShown(component.frame:IsEnabled() and not State.IsGuideShown())
		component:MarkClean()
	end
end

function UI.SetMinimapButtonEnabled(enabled)
	component.frame:SetEnabled(enabled)
	UI.MarkDirty()
end

UI.Add(component)
