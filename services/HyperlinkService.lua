--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

HyperlinkService = { }

local handlers = {
	["spell"] = {
		onEnter = function(frame, arg1)
			GameTooltip:SetOwner(frame, "ANCHOR_CURSOR")
			GameTooltip:SetHyperlink(string.format("|Hspell:%s|h|h", arg1))
			GameTooltip:Show()
		end,
	},
}

function HyperlinkService.OnHyperlinkEnter(frame, link)
	local linkType, arg1, arg2, arg3, arg4 = strsplit(":", link)
	handlers[linkType].onEnter(frame, arg1, arg2, arg3, arg4)
end

function HyperlinkService.OnHyperlinkLeave()
	GameTooltip:Hide()
end
