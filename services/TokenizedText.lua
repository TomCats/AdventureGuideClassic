--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

local handlers = {
	--todo: replace with real spell link color
	["spell"] = function(data)
		local spellName = GetSpellInfo(data)
		return "|CFFFF0000|Hspell:" .. data .. "|h[" .. spellName .. "]|h|r"
	end,
}

TokenizedTextService = { }

function TokenizedTextService.ReplaceWithWoWEscapeCodes(inputstr)
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
		print(handlerType, data)
		parts[i] = handlers[handlerType](data)
	end
	return table.concat(parts)
end
