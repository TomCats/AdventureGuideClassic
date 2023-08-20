--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Raids, RaidsByInstanceID = DynamicTable.MakeDynamic(
		{
			instanceID = 1,
			name = 2,
			description = 3,
			bgImage = 4,
			buttonImage1 = 5,
			loreImage = 6,
			buttonImage2 = 7,
			dungeonAreaMapID = 8,
			link = 9,
			shouldDisplayDifficulty = 10,
			mapID = 11
		},
		{
			{741,"Molten Core","",1396460,1396586,1396505,136346,0,"[Molten Core]",true,409,true},
			{742,"Blackwing Lair","",1396454,1396580,1396499,136329,0,"[Blackwing Lair]",true,469,true},
			{743,"Ruins of Ahn'Qiraj","",1396465,1396591,1396510,136320,0,"[Ruins of Ahn'Qiraj]",true,509,true},
			{744,"Temple of Ahn'Qiraj","",1396467,1396593,1396512,136321,0,"[Temple of Ahn'Qiraj]",true,531,true},
		}
)
