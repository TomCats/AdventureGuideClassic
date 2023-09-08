--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Razorfen Kraul",
	instanceID = 234,
	thumbnail = 608213,
	icon = 136353,
	splash = 608252,
	mapID = 47,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Many quilboar have taken up residence in the largest cluster of giant thorns, the Razorfen, which they revere as Agamaggan's resting place.",
	{
		name = "Roogug",
		encounterID = 6168,
		portrait = 607760,
	},
	{
		name = "Aggem Thorncurse",
		encounterID = 4424,
		portrait = 607531,
	},
	{
		name = "Death Speaker Jargba",
		encounterID = 4428,
		portrait = 607584,
	},
	{
		name = "Overlord Ramtusk",
		encounterID = 4420,
		portrait = 607736,
	},
	{
		name = "Agathelos the Raging",
		encounterID = 4422,
		portrait = 607530,
	},
	{
		name = "Charlga Razorflank",
		encounterID = 4421,
		portrait = 607563,
	},
})
