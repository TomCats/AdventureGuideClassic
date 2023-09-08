--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Maraudon",
	instanceID = 232,
	thumbnail = 608209,
	icon = 136345,
	splash = 608248,
	mapID = 349,
	overview = "According to legend, Zaetar, son of Cenarius, and the earth elemental princess Theradras begot the barbaric centaur race. Shortly after the centaur's creation, the ruthless creatures murdered their father. The grief-stricken Theradras is said to have trapped her lover's spirit within Maraudon, corrupting the region. Now, vicious centaur ghosts and twisted elemental minions roam every corner of the sprawling caves.",
	{
		name = "Noxxion",
		encounterID = 13282,
		portrait = 607728,
	},
	{
		name = "Razorlash",
		encounterID = 12258,
		portrait = 607756,
	},
	{
		name = "Lord Vyletongue",
		encounterID = 12236,
		portrait = 607699,
	},
	{
		name = "Celebras the Cursed",
		encounterID = 12225,
		portrait = 607562,
	},
	{
		name = "Landslide",
		encounterID = 12203,
		portrait = 607684,
	},
	{
		name = "Tinkerer Gizlock",
		encounterID = 13601,
		portrait = 607796,
	},
	{
		name = "Rotgrip",
		encounterID = 13596,
		portrait = 607761,
	},
	{
		name = "Princess Theradras",
		encounterID = 12201,
		portrait = 607747,
	},
})
