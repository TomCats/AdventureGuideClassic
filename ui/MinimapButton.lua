--[[ See license.txt for license and copyright information ]]
select(2, ...).SetupGlobalFacade()

MinimapButton = { }

local button

function MinimapButton.Init()
	if (not button) then
		button = CreateMinimapButton({
			name = "AdventureGuideClassic-MinimapButton",
			iconTexture = "Interface\\EncounterJournal\\UI-EJ-PortraitIcon",
			backgroundColor = { 0.0,0.0,0.0,1.0 },
			handler_onclick = function()
				UI.ToggleEncounterJournal()
			end
		})
		button.tooltip = {
			Show = function(this)
				GameTooltip:ClearLines()
				GameTooltip:SetOwner(this, "ANCHOR_NONE")
				GameTooltip:SetPoint("TOPRIGHT", this, "BOTTOMRIGHT", 0, 0)
				--todo: Localize
				GameTooltip:AddLine("Adventure Guide")
				local bindingKey = GetBindingKey("TOGGLE_ADVENTUREGUIDECLASSIC")
				--todo: Localize
				if (bindingKey) then
					GameTooltip:AddLine(string.format("Press %s to toggle", bindingKey), 1, 1, 1)
				end
				GameTooltip:Show()
			end,
			Hide = function()
				GameTooltip:Hide()
			end
		}
	end
end

function MinimapButton.Toggle()
	button:SetEnabled(not button:IsEnabled())
end
