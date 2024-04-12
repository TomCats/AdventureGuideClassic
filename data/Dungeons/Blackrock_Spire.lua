--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Blackrock Spire",
	instanceID = 229,
	thumbnail = 608197,
	icon = 136327,
	splash = 608236,
	mapID = 229,
	season = true,
	overview = "This imposing fortress, carved into the fiery core of Blackrock Mountain, represented the might of the Dark Iron clan for centuries. More recently, the black dragon Nefarian and his spawn seized the keep's upper spire and ignited a brutal war against the dwarves. The draconic armies have since allied with Warchief Rend Blackhand and his false Horde. This combined force lords over the spire, conducting horrific experiments to bolster its ranks while plotting the meddlesome Dark Irons' downfall.",
		{
			name = "Highlord Omokk",
			encounterID = 9196,
			portrait = 607645,
			loot = { 16670, 13167, 13168, 13170, 13166, 13169 },
			npcs = { 9196 },
			overview = {
				"Highlord Omokk, a formidable ogre leader in Lower Blackrock Spire, is known for his brutal rule.",
				{ heading = "Overview" },
				"Omokk is joined by two adds. Control the adds with crowd control, then focus on Omokk. Damage dealers should let the tank establish threat. Healers keep a close eye on the tank, especially during Omokk's {spell:18945}. Tanks position Omokk away from the group to minimize damage from his abilities.",
				{
					role = DAMAGE,
					"Control adds with crowd control, then focus on Omokk. Avoid pulling aggro."
				},
				{
					role = HEALER,
					"Pay attention to the tank's health during Omokk's heavy hits. Be ready for burst healing."
				},
				{
					role = TANK,
					"Position Omokk away from the group, control adds, and manage {spell:18945} effects."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Shadow Hunter Vosh'gajin",
			encounterID = 9236,
			portrait = 607769,
			loot = { 12651, 13257, 12626, 12653, 16712, 13255 },
			npcs = { 9236 },
			overview = {
				"Shadow Hunter Vosh'gajin, a troll shadow hunter in Lower Blackrock Spire, is a master of dark magic.",
				{ heading = "Overview" },
				"Accompanied by two adds, control them and focus on Vosh'gajin. Damage dealers use crowd control and prioritize decursing. Healers manage healing and decurse. Tanks pull Vosh'gajin away and handle adds after crowd control breaks.",
				{
					role = DAMAGE,
					"Control adds with crowd control. Decurse {spell:8282} and manage {spell:22566}."
				},
				{
					role = HEALER,
					"Heal through the fight, especially when crowd control breaks. Decurse {spell:8282}."
				},
				{
					role = TANK,
					"Pull Vosh'gajin away, manage adds after crowd control, and focus on the boss."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "War Master Voone",
			encounterID = 9237,
			portrait = 607810,
			loot = { 16676, 13179, 12582, 13177, 13175 },
			npcs = { 9237 },
			overview = {
				"War Master Voone, a powerful orc commander in Lower Blackrock Spire, is known for his strength.",
				{ heading = "Overview" },
				"Voone hits hard but has no adds. Damage dealers should let the tank initiate and maintain threat. Healers focus on the tank. Tanks manage Voone's hard hits and avoid letting DPS pull aggro.",
				{
					role = DAMAGE,
					"Let the tank establish threat. Avoid standing in front of Voone due to {spell:5532}."
				},
				{
					role = HEALER,
					"Focus on keeping the tank healed through Voone's heavy hits."
				},
				{
					role = TANK,
					"Engage Voone, control his positioning, and use defensive cooldowns for heavy hits."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Mother Smolderweb",
			encounterID = 10596,
			portrait = 607719,
			loot = { 13244, 13213, 13183, 16715 },
			npcs = { 10596 },
			overview = {
				"Mother Smolderweb, a massive spider in Lower Blackrock Spire, is known for her stunning abilities.",
				{ heading = "Overview" },
				"Smolderweb is joined by Worg pups. Focus on the pups, then Smolderweb. Damage dealers should avoid Smolderweb's stuns. Healers increase output during stuns. Tanks manage aggro and face Smolderweb away from the group.",
				{
					role = DAMAGE,
					"Eliminate Worg pups, then focus on Smolderweb. Stay behind to avoid stuns."
				},
				{
					role = HEALER,
					"Heal through the stuns, focusing on the tank and affected party members."
				},
				{
					role = TANK,
					"Control Worg pups, then focus on Smolderweb. Position away from the group."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Urok Doomhowl",
			encounterID = 10584,
			portrait = 607801,
			loot = { 13178, 22232, 13259, 13258, },
			npcs = { 10584 },
			overview = {
				"Urok Doomhowl, a summoned boss in Lower Blackrock Spire, commands the Scarshield Legion.",
				{ heading = "Overview" },
				"Summoned using Ommokk's Head. Manage waves of ogres and focus on Urok once he appears. Damage dealers use crowd control on ogres. Healers keep everyone healed, especially when crowd control breaks. Tanks manage adds and focus on Urok when he appears.",
				{
					role = DAMAGE,
					"Use crowd control on ogres. Focus on Urok once he appears. Manage {spell:16508}."
				},
				{
					role = HEALER,
					"Heal through the ogre waves. Focus on the tank when Urok appears."
				},
				{
					role = TANK,
					"Control ogres with crowd control. Engage Urok and manage his hard hits."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Quartermaster Zigris",
			encounterID = 9736,
			portrait = 607751,
			loot = { 13252, 13253 },
			npcs = { 9736 },
			overview = {
				"Quartermaster Zigris, an orc quartermaster in Lower Blackrock Spire, oversees logistics.",
				{ heading = "Overview" },
				"Zigris is a straightforward encounter. Damage dealers focus on him and spread out. Healers concentrate on the tank. Tanks maintain threat and spread out to manage {spell:16497}.",
				{
					role = DAMAGE,
					"Focus on Zigris and spread to avoid {spell:16497}."
				},
				{
					role = HEALER,
					"Focus on tank and spread to avoid {spell:16497}."
				},
				{
					role = TANK,
					"Maintain threat and spread to avoid {spell:16497}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Halycon",
			encounterID = 10220,
			portrait = 607634,
			loot = { 22313, 13212, 13210, 13211 },
			npcs = { 10220 },
			overview = {
				"Halycon, a giant Worg in Upper Blackrock Spire, is accompanied by Worg pups.",
				{ heading = "Overview" },
				"Focus on Worg pups, then Halycon. Damage dealers handle pups first. Healers use HoT effects and shields at the start. Tanks pull Halycon away and control threat.",
				{
					role = DAMAGE,
					"Eliminate Worg pups, then focus on Halycon. Stay behind to avoid frontal attacks."
				},
				{
					role = HEALER,
					"Use heal over time spells and shields on the party at the start. Focus healing on the tank."
				},
				{
					role = TANK,
					"Control Worg pups, then focus on Halycon. Position away from the group."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Gizrul the Slavener",
			encounterID = 10268,
			portrait = 607615,
			loot = { 13208, 13205, 16718, 13206 },
			npcs = { 10268 },
			overview = {
				"Gizrul the Slavener, a Worg boss in Upper Blackrock Spire, follows after Halycon.",
				{ heading = "Overview" },
				"Prepare quickly before engaging Gizrul. Damage dealers focus on Gizrul. Healers manage Damage Over Time effects. Tanks control Gizrul and use cooldowns during enrage.",
				{
					role = DAMAGE,
					"Quickly engage Gizrul after Halycon. Focus on the boss."
				},
				{
					role = HEALER,
					"Manage Damage Over Time effects. Focus on the tank during enrage."
				},
				{
					role = TANK,
					"Control Gizrul. Use defensive cooldowns for {spell:8269} and {spell:16128}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Overlord Wyrmthalak",
			encounterID = 9568,
			portrait = 607737,
			loot = { 22321, 13143, 16679, 13148, 13164, 13162, 13163, 13161 },
			npcs = { 9568 },
			overview = {
				"Overlord Wyrmthalak, a pivotal Blackrock orc leader in Upper Blackrock Spire.",
				{ heading = "Overview" },
				"Wyrmthalak summons adds at 50% health. Damage dealers control adds and focus on Wyrmthalak. Healers conserve mana and focus on the tank. Tanks position Wyrmthalak and manage adds.",
				{
					role = DAMAGE,
					"Control adds, focus on Wyrmthalak, then switch to adds. Stay behind the boss."
				},
				{
					role = HEALER,
					"Conserve mana, focus on the tank, and watch for add aggro."
				},
				{
					role = TANK,
					"Position Wyrmthalak, control adds at 50%, and maintain threat."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Pyroguard Emberseer",
			encounterID = 9816,
			portrait = 607748,
			loot = { 12905, 12926, 12927, 12929, 16672 },
			npcs = { 9816 },
			overview = {
				"Pyroguard Emberseer, a fire elemental in Upper Blackrock Spire, is the first boss.",
				{ heading = "Overview" },
				"Summon Emberseer by engaging adds. Damage dealers focus on adds, then Emberseer. Healers manage AoE damage. Tanks engage Emberseer and maintain threat.",
				{
					role = DAMAGE,
					"Eliminate adds, then focus on Emberseer. Stay at range to avoid AoE."
				},
				{
					role = HEALER,
					"Heal through AoE damage. Focus on the tank and affected party members."
				},
				{
					role = TANK,
					"Engage Emberseer, control positioning, and handle AoE effects."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Solakar Flamewreath",
			encounterID = 9816,
			portrait = 607737,
			loot = { 12606,  12589, 12603, 12609, 16695 },
			npcs = { 10264 },
			overview = {
				"Solakar Flamewreath, a formidable spellcaster, guards the Father Flame in Upper Blackrock Spire.",
				{ heading = "Overview" },
				"Focus on adds then Solakar. Damage dealers eliminate adds and target Solakar, maintaining distance. Healers stay away from Solakar and keep the group healed. Tanks hold Solakar against the wall and manage adds.",
				{
					role = DAMAGE,
					"Eliminate adds first, then focus on Solakar. Maintain distance. Avoid {spell:20549}."
				},
				{
					role = HEALER,
					"Keep distance from Solakar, focus on group health. Avoid {spell:20549}."
				},
				{
					role = TANK,
					"Tank Solakar against the wall, manage adds. Watch for {spell:20549}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Goraluk Anvilcrack",
			encounterID = 10339,
			portrait = 521744,
			loot = { 13498, 13502, 18047, 18048 },
			npcs = { 10899 },
			overview = {
				"Goraluk Anvilcrack, a key Blackrock orc in Upper Blackrock Spire, is an optional melee boss.",
				{ heading = "Overview" },
				"Damage dealers focus on Goraluk avoiding threat. Healers keep the tank healed especially when stunned. Tanks manage Goraluk's positioning and stuns/",
				{
					role = DAMAGE,
					"Focus on Goraluk, maintain threat discipline. Avoid over-aggroing."
				},
				{
					role = HEALER,
					"Heal the tank, especially during stuns. Watch for {spell:6253} on the tank."
				},
				{
					role = TANK,
					"Tank Goraluk away, manage stuns. Handle {spell:6253} with care."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "Warchief Rend Blackhand",
			encounterID = 10429,
			portrait = 607813,
			loot = { 22225, 12952, 12953, 12960, 16669, 22247, 12587, 12935, 18102, 18103, 12936, 16733, 18104, 12583, 12940, 12939, 12590 },
			npcs = { 10429, 10339 },
			overview = {
				"Warchief Rend Blackhand, a central figure in Upper Blackrock Spire, presents a complex encounter.",
				{ heading = "Overview" },
				"Manage adds, focus on Gyth, then Rend. Damage dealers prioritize adds, then Gyth, maintaining distance. Healers assign to tanks, handle raid healing. Tanks manage Gyth and Rend, coordinating with DPS.",
				{
					role = DAMAGE,
					"Handle adds, then focus on Gyth. Maintain distance from Rend. Avoid {spell:20667}, {spell:9573}."
				},
				{
					role = HEALER,
					"Assigned healing roles, manage raid damage. Stay distant from Rend's {spell:13736}, {spell:15588}."
				},
				{
					role = TANK,
					"Coordinate tanks for Gyth and Rend, manage positioning. Avoid Rend's {spell:13736}, {spell:15588}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "The Beast",
			encounterID = 10430,
			portrait = 607786,
			loot = { 22311, 12709, 12963, 12964, 12965, 12966, 12967, 12968, 12969, 16729 },
			npcs = { 10430 },
			overview = {
				"The Beast, a massive core hound in Upper Blackrock Spire, is a formidable challenge.",
				{ heading = "Overview" },
				"Clear adds, manage charge and AoE damage. Damage dealers maintain distance, handle charges. Healers focus on tanks, handle AoE damage. Tanks manage threat, positioning against a wall.",
				{
					role = DAMAGE,
					"Maintain distance, handle charges, focus on The Beast. Avoid {spell:5782}, {spell:16785}."
				},
				{
					role = HEALER,
					"Focus on tanks, manage AoE healing. Keep distance from {spell:5782}, {spell:16785}."
				},
				{
					role = TANK,
					"Manage threat, position against a wall. Control The Beast, avoid knockbacks from {spell:16785}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		},
		{
			name = "General Drakkisath",
			encounterID = 10363,
			portrait = 607612,
			loot = { 22267, 22269, 22268, 22253, 12602, 13098, 13141, 13142, 16666, 16674, 16688, 16690, 16700, 16706, 16721, 16726, 16730, 12592 },
			npcs = { 10363 },
			overview = {
				"General Drakkisath, the final boss of Upper Blackrock Spire, commands two Chromatic Elite Guards.",
				{ heading = "Overview" },
				"Manage adds, kite Drakkisath, then focus on him. Damage dealers control adds, avoid Drakkisath's abilities. Healers manage raid healing, keep tanks up. Tanks handle adds, manage Drakkisath's aggro.",
				{
					role = DAMAGE,
					"Control adds, avoid Drakkisath's abilities, focus on boss. Avoid {spell:9573}, {spell:20569}, {spell:16805}, {spell:8078}."
				},
				{
					role = HEALER,
					"Manage raid healing, focus on tanks. Avoid casting on kiting player. Handle {spell:16805} on tanks."
				},
				{
					role = TANK,
					"Handle adds, manage Drakkisath's threat. Coordinate with damage dealers, avoid {spell:9573}, {spell:20569}."
				}
			},
			abilities = {
				-- Abilities details go here
			}
		}		
})
