--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Zul'Farrak",
	instanceID = 241,
	thumbnail = 608230,
	icon = 136368,
	splash = 608267,
	mapID = 209,
	overview = "Zul'Farrak was once the shining jewel of Tanaris, ferociously protected by the cunning Sandfury tribe. Despite the trolls' tenacity, this isolated group was forced to surrender much of its territory throughout history. Now, it appears that Zul'Farrak's inhabitants are creating a horrific army of undead trolls to conquer the surrounding region. Other disturbing rumors tell of an ancient creature sleeping within the city--one that, if awakened, will rain death and destruction across Tanaris.",
	{
		name = "Antu'sul",
		encounterID = 8127,
		portrait = 607541,
	},
	{
		name = "Theka the Martyr",
		encounterID = 7272,
		portrait = 607793,
	},
	{
		name = "Witch Doctor Zum'rah",
		encounterID = 7271,
		portrait = 607819,
	},
	{
		name = "Nekrum Gutchewer",
		encounterID = 7796,
		portrait = 607723,
	},
	{
		name = "Shadowpriest Sezz'ziz",
		encounterID = 7275,
		portrait = 607770,
	},
	{
		name = "Sergeant Bly",
		encounterID = 7604,
		portrait = I.UIEJBossSergeantBly,
	},
	{
		name = "Hydromancer Velratha",
		encounterID = 7795,
		portrait = 607652,
	},
	{
		name = "Chief Ukorz Sandscalp",
		encounterID = 7267,
		portrait = 607564,
	},
	{
		name = "Ruuzlu",
		encounterID = 7797,
		portrait = 607762,
	},
})
