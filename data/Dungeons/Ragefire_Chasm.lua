--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Ragefire Chasm",
	instanceID = 226,
	thumbnail = 608211,
	icon = 136350,
	splash = 608250,
	mapID = 389,
	overview = "Ragefire Chasm extends deep below the city of Orgrimmar. Barbaric troggs and devious Searing Blade cultists once plagued the volcanic caves, but now a new threat has emerged: dark shaman. Although Warchief Garrosh Hellscream recently called on a number of shaman to use the elements as weapons against the Alliance, the chasm's current inhabitants appear to be renegades. Reports have surfaced that these shadowy figures are amassing a blistering army that could wreak havoc if unleashed upon Orgrimmar.",
	{
		name = "Taragaman the Hungerer",
		encounterID = 11520,
		portrait = 607781,
	},
	{
		name = "Oggleflint",
		encounterID = 11517,
		portrait = 607730,
	},
	{
		name = "Jergosh the Invoker",
		encounterID = 11518,
		portrait = 607668,
	},
	{
		name = "Bazzalan",
		encounterID = 11519,
		portrait = 607554,
	},
})
