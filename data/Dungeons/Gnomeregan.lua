--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Gnomeregan",
	instanceID = 231,
	thumbnail = 608202,
	icon = 136336,
	splash = 608241,
	mapID = 90,
	overview = "Built deep within the mountains of Dun Morogh, the wondrous city of Gnomeregan was a testament to the gnomes' intelligence and industry. But when the capital was invaded by troggs, the gnomish high tinker was betrayed by his advisor Sicco Thermaplugg. As a result, Gnomeregan was irradiated, and most of its inhabitants slain. The surviving gnomes fled, vowing to return someday and retake their home.",
	{
		name = "Grubbis",
		encounterID = 7361,
		portrait = 607628,
	},
	{
		name = "Viscous Fallout",
		encounterID = 7079,
		portrait = 607808,
	},
	{
		name = "Electrocutioner 6000",
		encounterID = 6235,
		portrait = 607594,
	},
	{
		name = "Crowd Pummeler 9-60",
		encounterID = 6229,
		portrait = 607572,
	},
	{
		name = "Dark Iron Ambassador",
		encounterID = 6228,
		portrait = I.UIEJBossDarkIronAmbassador,
	},
	{
		name = "Mekgineer Thermaplugg",
		encounterID = 7800,
		portrait = 607714,
	},
})
