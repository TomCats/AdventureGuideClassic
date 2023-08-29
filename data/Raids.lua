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
			{741, { 12118, 11982, 12259, 12057, 12264, 12056, 11988, 12098, 12018, 11502 }, "Molten Core", "", 1396460, 1396586, 1396505, 136346, 0, "[Molten Core]", true, 409, true },
			{742, { 12435, 13020, 12017, 11983, 14601, 11981, 14020, 11583 }, "Blackwing Lair", "", 1396454, 1396580, 1396499, 136329, 0, "[Blackwing Lair]", true, 469, true },
			{743, { 15348, 15385, 15388, 15386, 15390, 15389, 15392, 15391, 15341, 15340, 15370, 15369, 15339 }, "Ruins of Ahn'Qiraj", "", 1396465, 1396591, 1396510, 136320, 0, "[Ruins of Ahn'Qiraj]", true, 509, true },
			{744, { 15263, 15543, 15544, 15511, 15516, 15510, 15299, 15509, 15276, 15275, 15517, 15727 }, "Temple of Ahn'Qiraj", "", 1396467, 1396593, 1396512, 136321, 0, "[Temple of Ahn'Qiraj]", true, 531, true },
			{745, { 14517, 14507, 14510, 11382, 14988, 15082, 15083, 15084, 15085, 15114, 14509, 14515, 11380, 14834 }, "Zul'Gurub", "", 1396467, 1396593, 1396512, 136321, 0, "[Zul'Gurub]", true, 309, true },
			{746, { 15956, 15953, 15952, 15954, 15936, 16011, 16061, 16060, 16064, 16065, 16062, 16063, 16028, 15931, 15932, 15928, 15989, 15990 }, "Naxxramas", "", 1396467, 1396593, 1396512, 136321, 0, "[Naxxramas]", true, 533, true },
		}
)
