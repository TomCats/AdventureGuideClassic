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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Grubbis is a vile trogg who has taken residence within the irradiated depths of Gnomeregan. He is notorious for his relentless pursuit of discarded technology and his propensity for causing havoc. Grubbis's presence within the irradiated tunnels is a grim reminder of the troggs' intrusion into the once-great gnome city.",
			"Grubbis's obsession with scavenging technology and his aggressive nature make him a dangerous adversary for those who venture into the radioactive depths of Gnomeregan. His actions are emblematic of the ongoing struggle to reclaim the city from the trogg invaders.",
			{ heading = "Overview" },
			"Grubbis is the first encounter in Gnomeregan. Blastmaster Emi Shortfuse is located near the entrance at the end of the first offshoot to the left. Grubbis appears at the end of the sripted encounter at the end of the event started by Emi.",
			{
				role = DAMAGE,
				"This fight is simple, you should do as much damage as possible while watching your threat. Focus on killing Grubbis's pet first. Grubbis and his pet can be stunned or feared.",

			},
			{
				role = HEALER,
				"This fight is simple. you should focus your healing on the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive.",
			},
			{
				role = TANK,
				"This fight is simple, you should focus on doing as much threat as possible on Grubbis, so the damage dealers can do as much damage as they can. Grubbis is accompanied by his pet, Chomper. Make sure to keep aggreo on it as well. Grubbis and his pet can be stunned or feared.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Viscous Fallout",
		encounterID = 7079,
		portrait = 607808,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Viscous Fallout is a sentient and corrosive ooze that lurks within the depths of Gnomeregan. Its acidic nature and malevolence make it a hazardous inhabitant of the irradiated tunnels. Viscous Fallout's presence within Gnomeregan is a chilling testament to the dangers that have befallen the gnome city.",
			"Viscous Fallout's corrosive abilities and its relentless aggression toward intruders serve as a constant threat within the radioactive tunnels. Its existence is a stark reminder of the perilous environment that now characterizes Gnomeregan.",
			{ heading = "Overview" },
			"Viscous Fallout is the second boss encounter in Gnomeregan.",
			{
				role = DAMAGE,
				"This fight is simple encounter, do as much damage as possible while watching your threat. Viscous Fallout is immune to frost damage.",
			},
			{
				role = HEALER,
				"This fight is simple encounter, you should focus your healing on the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive.",
			},
			{
				role = TANK,
				"This fight is a simple encounter, focus on doing as much threat as possible on the Viscous, so the damage dealers don't have to hold back on their damage.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Electrocutioner 6000",
		encounterID = 6235,
		portrait = 607594,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Electrocutioner 6000 is a formidable mechanical monstrosity designed for the purpose of security and defense within Gnomeregan. Its advanced electrical weaponry and ruthless efficiency have made it a significant obstacle for those seeking to reclaim the city. Electrocutioner 6000's presence within Gnomeregan highlights the advanced technology that once thrived in the gnome city.",
			"Electrocutioner 6000's formidable arsenal and its unwavering defense of key areas within Gnomeregan represent the remnants of gnome ingenuity now turned against those who seek to restore the city to its former glory. It stands as a testament to the resilience of Gnomeregan's security systems.",
			{ heading = "Overview" },
			"Electrocutioner 6000 is the third boss encountered from the main entrance of Gnomeregan, on the platofmr centered in the top of the Launch Bay. Electrocutioner 6000 drops the Workshop Key, giving access to the secondary entrance of the instance.",
			{
				role = DAMAGE,
				"Electrocutioner 6000's {spell:11082} and {spell:11085} cannot be interrupted. Focus on doing as much damage as possible while staying spread out to avoid chaining {spell:11085}.",
			},
			{
				role = HEALER,
				"Prioritize healing on your tank, but be ready to heal up the party after Electrocutioner 6000 casts {spell:11085}.",
			},
			{
				role = TANK,
				"Electrocutioner 6000 casts {spell:11082} and {spell:11085} which cannot be interrupted. Stay at max melee range to avoid chaining {spell:11085} to the melee damage dealers.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Crowd Pummeler 9-60",
		encounterID = 6229,
		portrait = 607572,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Crowd Pummeler 9-60 is a remarkable piece of gnomish engineering, designed for the purpose of maintaining order and security within Gnomeregan. Its efficient crowd control abilities and relentless combat prowess have made it a significant challenge for those attempting to reclaim the city. Crowd Pummeler 9-60's presence within Gnomeregan underscores the ingenuity and technology that were once hallmarks of the gnome civilization.",
			"Crowd Pummeler 9-60's advanced systems and its steadfast defense of critical areas within Gnomeregan serve as a reminder of the brilliance of gnome engineering, now repurposed as a guardian against those who seek to restore the city's former glory.",
			{ heading = "Overview" },
			"Crowd Pummeler 9-60 is another boss in Gnomeregan, located in the Engineering labs. Crowd Pummeler is commonly farmed by Feral Druids for the Manual Crowd Pummeler.",
			{
				role = DAMAGE,
				"Crowd Pummeler does {spell:8374} in a small radius around him. He tramples the players within the same radius, so be sure to stay max range if you are a caster.",
			},
			{
				role = HEALER,
				"Stay at maximum range from Crowd Pummeler and focus on healing your tank.",
			},
			{
				role = TANK,
				"Tank Crowd Pummeler away from your healer, with your back to a wall.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Dark Iron Ambassador",
		encounterID = 6228,
		portrait = I.UIEJBossDarkIronAmbassador,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Dark Iron Ambassador is an emissary of the Dark Iron dwarves who has established a presence within the depths of Gnomeregan. His diplomatic mission, shrouded in secrecy, hints at the complex interactions between the various factions within the city's depths. The Dark Iron Ambassador's presence within Gnomeregan signifies the intrigue and alliances that have developed in the city's underground.",
			"The Dark Iron Ambassador's enigmatic role and the dealings he conducts within Gnomeregan reveal the intricate web of relationships that exist beneath the city's surface. His presence adds a layer of mystery to the ongoing struggles within the gnome city.",
			{ heading = "Overview" },
			"Dark Iron Ambassador is a rare mob that spawns near the Tinker's Court.",
			{
				role = DAMAGE,
				"Defeat the Burning Servant adds as they spawn. Make sure to interrupt {spell:9053}.",
			},
			{
				role = HEALER,
				"Heal your group from max range, focusing on the tank.",
			},
			{
				role = TANK,
				"Tank Dark Iron Ambassador away from your group, and pick up the adds as they are summoned.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Mekgineer Thermaplugg",
		encounterID = 7800,
		portrait = 607714,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mekgineer Thermaplugg is a once-respected gnome engineer who has fallen from grace, seizing control of Gnomeregan's lower levels through a violent coup. His transformation into a cybernetic abomination and his tyrannical rule over the irradiated tunnels have made him a despised figure. Mekgineer Thermaplugg's presence within Gnomeregan symbolizes the tragic descent of a brilliant inventor into madness and tyranny.",
			"Mekgineer Thermaplugg's mastery of technology and his ruthless leadership make him a formidable and deeply reviled foe for those who aim to liberate Gnomeregan from his control. His reign as ruler of the irradiated depths is a grim testament to the twisted legacy that has befallen the once-proud gnome city.",
			{ heading = "Overview" },
			"Mekgineer Thermaplugg is the final of Gnomeregan, and summons Walking Bomb adds during the encounter.",
			{
				role = DAMAGE,
				"Bomb adds will spawn that need to be kited and killed. If you are a range damage dealer, quickly switch to these as they spawn. Thermaplugg will occasionally do {spell:11130}. After the knock back his threat table resets, so watch your threat generation for a few seconds until if can be picked back up by the tank. Thermaplugg will activate his bomb machines more often at 50% health and even faster at 20% health. If your group is overwhelmed with bombs, you can briefly stop their spawn by clicking one of the buttons on the pillars around the room. Assign a ranged damage dealer to press the buttons in order to stop the bombs from spawning if they provde to be too much.",
			},
			{
				role = HEALER,
				"Stand away from boms that spawn and focus your healing on the tank. Other group members will need to be healthed up, as they may take damage from the Walking Bombs.",
			},
			{
				role = TANK,
				"Tank the boss in the middle of the room, so the Walking Bombs take a long time to reach the group. If you are knocked away by {spell:11130}, reposition in the center of the room. Be ready to immediately {spell:355} and build threat after each knockback, as his threat table resets.",
			}
		},
		abilities = {
			
		}
	},
})
