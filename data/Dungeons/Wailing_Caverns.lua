--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Wailing Caverns",
	instanceID = 240,
	thumbnail = 608229,
	icon = 136364,
	splash = 608313,
	mapID = 43,
	overview = "Years ago, the famed druid Naralex and his followers descended into the shadowy Wailing Caverns, named for the mournful cry one hears when steam bursts from the cave system's fissures. Naralex planned to use the underground springs to restore lushness to the arid Barrens. But upon entering the Emerald Dream, he saw his vision of regrowth turn into a waking nightmare, one that has plagued the caverns ever since.",
	{
		name = "Kresh",
		encounterID = 3653,
		portrait = 607676,
	},
	{
		name = "Lady Anacondra",
		encounterID = 3671,
		portrait = 607680,
	},
	{
		name = "Lord Cobrahn",
		encounterID = 3669,
		portrait = 607693,
	},
	{
		name = "Lord Pythas",
		encounterID = 3670,
		portrait = 607696,
	},
	{
		name = "Skum",
		encounterID = 3674,
		portrait = 607775,
	},
	{
		name = "Lord Serpentis",
		encounterID = 3673,
		portrait = 607698,
	},
	{
		name = "Verdan the Everliving",
		encounterID = 5775,
		portrait = 607805,
	},
	{
		name = "Mutanus the Devourer",
		encounterID = 3654,
		portrait = 607721,
	},
})
