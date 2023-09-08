--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Razorfen Downs",
	instanceID = 233,
	thumbnail = 608212,
	icon = 136352,
	splash = 608251,
	mapID = 129,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Recently, scouts have reported seeing undead milling about the region, engendering fears that the dreaded Scourge may be moving to conquer Kalimdor.",
	{
		name = "Tuten'kash",
		encounterID = 7355,
		portrait = 607799,
	},
	{
		name = "Plaguemaw the Rotting",
		encounterID = 7356,
		portrait = I.UIEJBossPlaguemawTheRotting,
	},
	{
		name = "Mordresh Fire Eye",
		encounterID = 7357,
		portrait = 607718,
	},
	{
		name = "Ragglesnout",
		encounterID = 7354,
		portrait = I.UIEJBossRagglesnout,
	},
	{
		name = "Glutton",
		encounterID = 8567,
		portrait = 607617,
	},
	{
		name = "Amnennar the Coldbringer",
		encounterID = 7358,
		portrait = 607537,
	},
})
