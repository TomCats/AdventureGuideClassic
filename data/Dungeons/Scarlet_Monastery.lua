--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Scarlet Monastery",
	instanceID = 316,
	thumbnail = 608214,
	icon = 136354,
	splash = 608253,
	mapID = 1004,
	overview = "The Crusade's fanatical leaders direct their followers from the Scarlet Cathedral, at the heart of the monastery grounds. This heavily guarded location functions as the order's headquarters, and some of the most zealous and intolerant crusaders roam the halls of this once-hallowed place.",
	{
		name = "Interrogator Vishas",
		encounterID = 3983,
		portrait = 607662,
	},
	{
		name = "Bloodmage Thalnos",
		encounterID = 4543,
		portrait = 607557,
	},
	{
		name = "Houndmaster Loksey",
		encounterID = 3974,
		portrait = 607648,
	},
	{
		name = "Arcanist Doan",
		encounterID = 6487,
		portrait = 607545,
	},
	{
		name = "Herod",
		encounterID = 3975,
		portrait = 607640,
	},
	{
		name = "Scarlet Commander Mograine",
		encounterID = 3976,
		portrait = 607764,
	},
	{
		name = "High Inquisitor Whitemane",
		encounterID = 3977,
		portrait = 607643,
	},
	{
		name = "High Inquisitor Fairbanks",
		encounterID = 4542,
		portrait = 607642,
	},
})
