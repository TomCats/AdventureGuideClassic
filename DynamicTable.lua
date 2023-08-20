--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

DynamicTable = { }

function DynamicTable.MakeDynamic(columnNames, data)

	local indexed = { }

	local metatable = {
		__index = function(t, k)
			return rawget(t, columnNames[k])
		end
	}

	for _, row in ipairs(data) do
		indexed[row[1]] = row
		setmetatable(row, metatable)
	end

	return data, indexed
end
