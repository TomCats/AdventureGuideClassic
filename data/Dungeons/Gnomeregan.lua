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
	season = false,
	overview = "Built deep within the mountains of Dun Morogh, the wondrous city of Gnomeregan was a testament to the gnomes' intelligence and industry. But when the capital was invaded by troggs, the gnomish high tinker was betrayed by his advisor Sicco Thermaplugg. As a result, Gnomeregan was irradiated, and most of its inhabitants slain. The surviving gnomes fled, vowing to return someday and retake their home.",
	{
		name = "Grubbis",
		encounterID = 7361,
		portrait = 607628,
		loot = { 19445 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Grubbis is a vile trogg who has taken residence within the irradiated depths of Gnomeregan. He is notorious for his relentless pursuit of discarded technology and his propensity for causing havoc. Grubbis's presence within the irradiated tunnels is a grim reminder of the troggs' intrusion into the once-great gnome city.",
			{ heading = "Overview" },
			"Manage Grubbis and his pet, Chomper. Damage dealers focus on Grubbis, healers prioritize tank and aggroed damage dealers, tanks maximize threat.",
			{
				role = DAMAGE,
				"Do maximum damage, watch your threat, and prioritize killing Grubbis's pet. Both can be stunned or feared.",
			},
			{
				role = HEALER,
				"Focus healing on the tank. If damage dealers take aggro, prioritize their survival.",
			},
			{
				role = TANK,
				"Maximize threat on Grubbis and his pet, Chomper. Both can be stunned or feared.",
			}
		},
		abilities = {
			--Abilites go here
		}
	},
	{
		name = "Viscous Fallout",
		encounterID = 7079,
		portrait = 607808,
		loot = { 9454, 9452, 9453 },
		overview = {
			"Viscous Fallout is a sentient and corrosive ooze that lurks within the depths of Gnomeregan. Its acidic nature and malevolence make it a hazardous inhabitant of the irradiated tunnels. Viscous Fallout's presence within Gnomeregan is a chilling testament to the dangers that have befallen the gnome city.",
			{ heading = "Overview" },
			"Focus on Viscous Fallout while managing threat. Healers focus on the tank, tanks generate high threat.",
			{
				role = DAMAGE,
				"Maximize damage, watch threat, note frost immunity."
			},
			{
				role = HEALER,
				"Heal the tank, manage damage dealer aggro."
			},
			{
				role = TANK,
				"Generate high threat, simple tanking."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Electrocutioner 6000",
		encounterID = 6235,
		portrait = 607594,
		loot = { 9447, 9446, 9448 },
		overview = {
			"Electrocutioner 6000 is a formidable mechanical monstrosity designed for the purpose of security and defense within Gnomeregan. Its advanced electrical weaponry and ruthless efficiency have made it a significant obstacle for those seeking to reclaim the city. Electrocutioner 6000's presence within Gnomeregan highlights the advanced technology that once thrived in the gnome city.",
			{ heading = "Overview" },
			"Manage Electrocutioner's attacks, spread out to avoid {spell:11085}. Healers focus on the tank, tanks stay at max melee range.",
			{
				role = DAMAGE,
				"Focus damage, spread for {spell:11085}."
			},
			{
				role = HEALER,
				"Prioritize tank, heal after {spell:11085}."
			},
			{
				role = TANK,
				"Max range tanking, manage {spell:11082} and {spell:11085}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Crowd Pummeler 9-60",
		encounterID = 6229,
		portrait = 607572,
		loot = { 9449, 9450 },
		overview = {
			"Crowd Pummeler 9-60 is a remarkable piece of gnomish engineering, designed for the purpose of maintaining order and security within Gnomeregan. Its efficient crowd control abilities and relentless combat prowess have made it a significant challenge for those attempting to reclaim the city. Crowd Pummeler 9-60's presence within Gnomeregan underscores the ingenuity and technology that were once hallmarks of the gnome civilization.",
			{ heading = "Overview" },
			"Manage {spell:8374} radius, melee max range, casters at max distance. Healers focus on tank, tanks position away from healer.",
			{
				role = DAMAGE,
				"Manage {spell:8374}, melee max range."
			},
			{
				role = HEALER,
				"Heal from max range, focus tank."
			},
			{
				role = TANK,
				"Position away from healer, back to wall."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Dark Iron Ambassador",
		encounterID = 6228,
		portrait = I.UIEJBossDarkIronAmbassador,
		loot = { 9456, 9457, 9455 },
		overview = {
			"The Dark Iron Ambassador is an emissary of the Dark Iron dwarves who has established a presence within the depths of Gnomeregan. His diplomatic mission, shrouded in secrecy, hints at the complex interactions between the various factions within the city's depths. The Dark Iron Ambassador's presence within Gnomeregan signifies the intrigue and alliances that have developed in the city's underground.",
			{ heading = "Overview" },
			"Defeat adds, interrupt {spell:9053}. Healers heal at max range, tanks manage Ambassador and adds.",
			{
				role = DAMAGE,
				"Defeat adds, interrupt {spell:9053}."
			},
			{
				role = HEALER,
				"Heal group, max range focus."
			},
			{
				role = TANK,
				"Tank Ambassador, manage adds."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Mekgineer Thermaplugg",
		encounterID = 7800,
		portrait = 607714,
		loot = { 9458, 9459, 9461, 9492 },
		overview = {
			"Mekgineer Thermaplugg is a once-respected gnome engineer who has fallen from grace, seizing control of Gnomeregan's lower levels through a violent coup. His transformation into a cybernetic abomination and his tyrannical rule over the irradiated tunnels have made him a despised figure. Mekgineer Thermaplugg's presence within Gnomeregan symbolizes the tragic descent of a brilliant inventor into madness and tyranny.",
			{ heading = "Overview" },
			"Manage bomb adds, watch for {spell:11130}. Healers focus on tank and bomb damage, tanks center position, manage threat reset.",
			{
				role = DAMAGE,
				"Manage bomb adds, watch for {spell:11130}, manage threat."
			},
			{
				role = HEALER,
				"Heal tank, manage bomb damage."
			},
			{
				role = TANK,
				"Tank in center, manage {spell:11130}, reset threat."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	}
})
