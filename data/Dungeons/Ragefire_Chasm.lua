--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Ragefire Chasm",
	instanceID = 226,
	thumbnail = 608211,
	icon = 136350,
	splash = 608250,
	mapID = 389,
	overview = "Ragefire Chasm extends deep below the city of Orgrimmar. Barbaric troggs and devious Searing Blade cultists once plagued the volcanic caves, but now a new threat has emerged: dark shaman. Although Warchief Garrosh Hellscream recently called on a number of shaman to use the elements as weapons against the Alliance, the chasm's current inhabitants appear to be renegades. Reports have surfaced that these shadowy figures are amassing a blistering army that could wreak havoc if unleashed upon Orgrimmar.",
	{
		name = "Taragaman the Hungerer",
		encounterID = 11520,
		portrait = 607781,
		loot = { 14148, 14149, 14145 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Taragaman the Hungerer is a formidable elemental lord who resides within the depths of Ragefire Chasm. His fiery presence and insatiable appetite for destruction have turned the chasm into a seething inferno. Taragaman's existence within Ragefire Chasm is a testament to the elemental forces that rage beneath the surface of the world.",
			{ heading = "Overview" },
			"Maximize damage and healing, manage threat. Damage dealers focus Taragaman, watch threat. Healers focus on tank. Tanks generate high threat, manage {spell:18072} knockup.",
			{
				role = DAMAGE,
				"Focus Taragaman, maintain threat awareness."
			},
			{
				role = HEALER,
				"Concentrate healing on tank."
			},
			{
				role = TANK,
				"Generate high threat, manage {spell:18072} knockup."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Oggleflint",
		encounterID = 11517,
		portrait = 607730,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Oggleflint is a cunning ogre magi who has taken refuge within the fiery caverns of Ragefire Chasm. His arcane powers and malevolent scheming have made him a significant threat within the chasm. Oggleflint's presence in Ragefire Chasm signifies the dark alliances that have formed within its blazing tunnels.",
			{ heading = "Overview" },
			"Focus adds first, manage aggro. Damage dealers target adds, then Oggleflint. Healers focus on tank, watch healing aggro. Tanks prioritize add aggro, use markers.",
			{
				role = DAMAGE,
				"Target adds first, then Oggleflint."
			},
			{
				role = HEALER,
				"Focus on tank, manage healing aggro."
			},
			{
				role = TANK,
				"Prioritize add threat, use markers."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Jergosh the Invoker",
		encounterID = 11518,
		portrait = 607668,
		loot = { 14147, 14150, 14151 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jergosh the Invoker is a formidable warlock who has established a stronghold within the fiery depths of Ragefire Chasm. His dark sorcery and mastery over demonic forces have corrupted the once-natural caverns. Jergosh's presence in Ragefire Chasm represents the sinister influences that have taken hold within its blazing tunnels.",
			{ heading = "Overview" },
			"Manage adds, then confront Jergosh. Damage dealers focus adds, interrupt {spell:20800}. Healers manage mana, focus on party. Tanks generate threat, interrupt {spell:20800}.",
			{
				role = DAMAGE,
				"Focus adds, interrupt {spell:20800}. Target Jergosh after adds."
			},
			{
				role = HEALER,
				"Manage mana, heal party. Focus on high-damage phases."
			},
			{
				role = TANK,
				"Generate threat on Jergosh, interrupt {spell:20800}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Bazzalan",
		encounterID = 11519,
		portrait = 607554,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bazzalan is a cunning satyr who has infiltrated the depths of Ragefire Chasm. His enigmatic motives and affiliation with dark powers have made him a dangerous figure within the chasm. Bazzalan's presence in Ragefire Chasm underscores the mysterious and shadowy influences that lurk in its fiery corridors.",
			{ heading = "Overview" },
			"Focus adds, then Bazzalan. Damage dealers target adds first. Healers cleanse {spell:2818}, heal party. Tanks manage Bazzalan, high threat output.",
			{
				role = DAMAGE,
				"Target adds, then focus Bazzalan."
			},
			{
				role = HEALER,
				"Cleanse {spell:2818}, focus on healing."
			},
			{
				role = TANK,
				"Manage Bazzalan, maintain high threat."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	}
	
})
