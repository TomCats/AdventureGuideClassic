--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Shadowfang Keep",
	instanceID = 64,
	thumbnail = 522358,
	icon = 136357,
	splash = 526410,
	mapID = 33,
	overview = "Looming over Pyrewood Village from the southern bluffs of Silverpine Forest, Shadowfang Keep casts a shadow as dark as its legacy. Sinister forces occupy these ruins, formerly the dwelling of the mad archmage Arugal's worgen. The restless shade of Baron Silverlaine lingers, while Lord Godfrey and his cabal of erstwhile Gilnean noblemen plot against their enemies both living and undead.",
	{
		name = "Rethilgore",
		encounterID = 3914,
		portrait = I.UIEJBossRethilgore,
	},
	{
		name = "Fel Steed / Shadow Charger",
		encounterID = 3864,
		portrait = I.UIEJBossFelSteed,
	},
	{
		name = "Razorclaw the Butcher",
		encounterID = 3886,
		portrait = I.UIEJBossRethilgore,
	},
	{
		name = "Baron Silverlaine",
		encounterID = 3887,
		portrait = 522206,
	},
	{
		name = "Commander Springvale",
		encounterID = 4278,
		portrait = 522213,
	},
	{
		name = "Odo the Blindwatcher",
		encounterID = 4279,
		portrait = I.UIEJBossOdoTheBindwatcher,
	},
	{
		name = "Fenrus the Devourer",
		encounterID = 4274,
		portrait = 607634,
	},
	{
		name = "Wolf Master Nandos",
		encounterID = 3927,
		portrait = I.UIEJBossOdoTheBindwatcher,
	},
	{
		name = "Archmage Arugal",
		encounterID = 4275,
		portrait = I.UIEJBossArchmageArugal,
	},
})
