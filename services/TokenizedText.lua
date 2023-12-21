--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local handlers = {
	--todo: replace with real spell/npc link colors
	["spell"] = {
		tokenizer = function(data)
			local spellName = GetSpellInfo(data)
			return "|CFF0000FF|Hspell:" .. data .. "|h[" .. spellName .. "]|h|r"
		end,
	},
	["npc"] = {
		tokenizer = function(data)
			local npcName = NPCService.GetName(data)
			if (not npcName) then return "" end
			return npcName
		end,
	},
}

TokenizedTextService = { }

function TokenizedTextService.ReplaceTokens(inputstr)
	local parts = { }
	local lastPos = 1
	while true do
		local start, finish = string.find(inputstr, "[{}]", lastPos)
		if not start then
			table.insert(parts, string.sub(inputstr, lastPos))
			break
		end
		table.insert(parts, string.sub(inputstr, lastPos, start - 1))
		lastPos = finish + 1
	end
	for i = 2, #parts, 2 do
		local str = parts[i]
		local colonPos = string.find(str, ":")
		local handlerType = string.sub(str, 1, colonPos - 1)
		local data = string.sub(str, colonPos + 1)
		parts[i] = handlers[handlerType].tokenizer(data)
	end
	return table.concat(parts)
end
