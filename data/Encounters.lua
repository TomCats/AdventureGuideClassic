--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Encounters, EncountersByEncounterID = DynamicTable.MakeDynamic(
		{
			encounterID = 1,
			name = 2,
			buttonImage1 = 3,
		},
		{
			{ 368, "Ghamoo-Ra", 1064179 },
			{ 426, "Subjugator Kor'ul", 522214 },
			{ 436, "Domina", 1064180 },
			{ 437, "Twilight Lord Bathiel", 1064184 },
			{ 444, "Aku'mai", 607532 },
			{ 447, "Guardian of the Deep", 1064182 },
			{ 1144, "Executioner Gore", 1064183 },
			{ 1145, "Thruk", 1064181 },
		}
)
