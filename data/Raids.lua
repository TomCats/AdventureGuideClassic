--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Raids, RaidsByInstanceID = DynamicTable.MakeDynamic(
		{
			instanceID = 1,
			encounters = 2,
			name = 3,
			description = 4,
			bgImage = 5,
			buttonImage1 = 6,
			loreImage = 7,
			buttonImage2 = 8,
			dungeonAreaMapID = 9,
			link = 10,
			shouldDisplayDifficulty = 11,
			mapID = 12
		},
		{
			--todo: sample encounter IDs to be replaced with real encounter IDs per instance: { 368, 436, 426, 1145, 447, 1144, 437, 444 }
			--todo: reconcile this list of instances against real Classic
			{741, { 368, 436, 426, 1145, 447, 1144, 437, 444 }, "Molten Core", "", 1396460, 1396586, 1396505, 136346, 0, "[Molten Core]", true, 409, true },
			{742, { 368, 436, 426, 1145, 447, 1144, 437, 444 }, "Blackwing Lair", "", 1396454, 1396580, 1396499, 136329, 0, "[Blackwing Lair]", true, 469, true },
			{743, { 368, 436, 426, 1145, 447, 1144, 437, 444 }, "Ruins of Ahn'Qiraj", "", 1396465, 1396591, 1396510, 136320, 0, "[Ruins of Ahn'Qiraj]", true, 509, true },
			{744, { 368, 436, 426, 1145, 447, 1144, 437, 444 }, "Temple of Ahn'Qiraj", "", 1396467, 1396593, 1396512, 136321, 0, "[Temple of Ahn'Qiraj]", true, 531, true },
		}
)
