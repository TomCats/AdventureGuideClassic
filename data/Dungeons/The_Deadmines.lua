--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "The Deadmines",
	instanceID = 63,
	thumbnail = 522352,
	icon = 136332,
	splash = 526404,
	mapID = 36,
	overview = "It is said the Deadmines' gold deposits once accounted for a third of Stormwind's treasure reserves. Amid the chaos of the First War, the mines were abandoned and later thought to be haunted, leaving them relatively untouched until the Defias Brotherhood--a group of former laborers turned brigands--claimed the labyrinth as a base of operations for its subversive activities against Stormwind.",
	{
		name = "Rhahk'Zor",
		encounterID = 644,
		portrait = 607777,
	},
	{
		name = "Sneed's Shredder",
		encounterID = 642,
		portrait = I.UIEJBossSneedsShredder,
	},
	{
		name = "Gilnid",
		encounterID = 1763,
		portrait = I.UIEJBossGilnid,
	},
	{
		name = "Mr. Smite",
		encounterID = 646,
		portrait = I.UIEJBossMrSmite,
	},
	{
		name = "Captain Greenskin",
		encounterID = 647,
		portrait = I.UIEJBossCaptainGreenSkin,
	},
	{
		name = "Edwin VanCleef",
		encounterID = 639,
		portrait = I.UIEJBossEdwinVanCleef,
	},
	{
		name = "Cookie",
		encounterID = 645,
		portrait = 522210,
	},
})
