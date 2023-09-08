--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "The Stockade",
	instanceID = 238,
	thumbnail = 608223,
	icon = 136358,
	splash = 608262,
	mapID = 34,
	overview = "Stormwind Stockade is a closely guarded prison built beneath the canals of Stormwind City. Warden Thelwater keeps watch over the stockade and the highly dangerous criminals who call it home. Recently, the inmates revolted, overthrowing their guards and plunging the prison into a state of pandemonium.",
	{
		name = "Targorr the Dread",
		encounterID = 1696,
		portrait = I.UIEJBossTargorrTheDread,
	},
	{
		name = "Kam Deepfury",
		encounterID = 1666,
		portrait = I.UIEJBossKamDeepfury,
	},
	{
		name = "Hamhock",
		encounterID = 1717,
		portrait = I.UIEJBossHamhock,
	},
	{
		name = "Dextren Ward",
		encounterID = 1663,
		portrait = I.UIEJBossDextrenWard,
	},
	{
		name = "Bazil Thredd",
		encounterID = 1716,
		portrait = I.UIEJBossBazilThredd,
	},
})
