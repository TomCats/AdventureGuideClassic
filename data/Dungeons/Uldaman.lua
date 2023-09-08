--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Uldaman",
	instanceID = 239,
	thumbnail = 608225,
	icon = 136363,
	splash = 608264,
	mapID = 70,
	overview = "Uldaman is an ancient titan vault buried deep within the earth. It is said the titans sealed away a failed experiment there and then moved on to a new project, related to the genesis of the dwarves. Tales of a fabled treasure containing great knowledge have enticed would-be treasure hunters to dig deeper into the secrets of Uldaman, a task made perilous by the presence of stone defenders, savage troggs, Dark Iron invaders, and other dangers lurking in the lost city.",
	{
		name = "Revelosh",
		encounterID = 6910,
		portrait = 607757,
	},
	{
		name = "Baelog",
		encounterID = 6906,
		portrait = 607550,
	},
	{
		name = "Ironaya",
		encounterID = 7228,
		portrait = 607664,
	},
	{
		name = "Obsidian Sentinel",
		encounterID = 7023,
		portrait = 607729,
	},
	{
		name = "Ancient Stone Keeper",
		encounterID = 7206,
		portrait = 607538,
	},
	{
		name = "Galgann Firehammer",
		encounterID = 7291,
		portrait = 607606,
	},
	{
		name = "Grimlok",
		encounterID = 4854,
		portrait = 607626,
	},
	{
		name = "Archaedas",
		encounterID = 2748,
		portrait = 607546,
	},
})
