--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddRaid({
	name = "Zul'Gurub",
	instanceID = 745,
	thumbnail = 522364,
	icon = 136369,
	splash = 526416,
	mapID = 309,
	overview = "Zul'Gurub is a 20-man raid located in the northeastern portion of [Stranlgethorn Vale], east of Lake Nazferiti. It is used to serve as the capitial city for the Gurubashi Trolls, however it was eventually destroyed by civil war and corruption. Centuries later, Atal'ai Priests have returned to the ctiy, seeking to use it for the evil purpose of summoning their Blood God, [Hakkar], the Soulflayer.",
	{
		name = "High Priestess Jeklik",
		encounterID = 14517,
		portrait = I.UIEJBossJeklik,
	},
	{
		name = "High Priest Venoxis",
		encounterID = 14507,
		portrait = 522236,
	},
	{
		name = "High Priestess Mar'li",
		encounterID = 14510,
		portrait = I.UIEJBossMarli,
	},
	{
		name = "Bloodlord Mandokir",
		encounterID = 11382,
		portrait = I.UIEJBossMandokir,
	},
	{
		name = "Edge of Madness",
		encounterID = 15083,
		portrait = I.UIEJBossHazzarah,
	},
	{
		name = "High Priest Thekal",
		encounterID = 14509,
		portrait = I.UIEJBossThekal,
	},
	{
		name = "High Priestess Arlokk",
		encounterID = 14515,
		portrait = I.UIEJBossArlokk,
	},
	{
		name = "Jin'do the Hexxar",
		encounterID = 11380,
		portrait = I.UIEJBossJindo,
	},
	{
		name = "Hakkar",
		encounterID = 14834,
		portrait = I.UIEJBossHakkar,
	},
	{
		name = "Gahz'ranka",
		encounterID = 15114,
		portrait = 607614,
	},
})
