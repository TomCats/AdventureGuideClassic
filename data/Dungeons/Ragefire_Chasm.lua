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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Taragaman the Hungerer is a formidable elemental lord who resides within the depths of Ragefire Chasm. His fiery presence and insatiable appetite for destruction have turned the chasm into a seething inferno. Taragaman's existence within Ragefire Chasm is a testament to the elemental forces that rage beneath the surface of the world.",
			"Taragaman's mastery over fire magic and his relentless hunger for destruction make him a formidable adversary for those who dare to venture into the fiery depths of Ragefire Chasm. His role highlights the elemental chaos that threatens to consume the heart of the earth.",
			{ heading = "Overview" },
			"information goes here..",
			{
				role = DAMAGE,
				"",
			},
			{
				role = HEALER,
				"",
			},
			{
				role = TANK,
				"",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Oggleflint",
		encounterID = 11517,
		portrait = 607730,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Oggleflint is a cunning ogre magi who has taken refuge within the fiery caverns of Ragefire Chasm. His arcane powers and malevolent scheming have made him a significant threat within the chasm. Oggleflint's presence in Ragefire Chasm signifies the dark alliances that have formed within its blazing tunnels.",
			"Oggleflint's mastery of arcane magic and his role in manipulating the chasm's forces highlight the malevolent undercurrents that run through Ragefire Chasm. He serves as a reminder of the dangers posed by those who harness the destructive powers of the arcane.",
			{ heading = "Overview" },
			"information goes here..",
			{
				role = DAMAGE,
				"",
			},
			{
				role = HEALER,
				"",
			},
			{
				role = TANK,
				"",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Jergosh the Invoker",
		encounterID = 11518,
		portrait = 607668,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jergosh the Invoker is a formidable warlock who has established a stronghold within the fiery depths of Ragefire Chasm. His dark sorcery and mastery over demonic forces have corrupted the once-natural caverns. Jergosh's presence in Ragefire Chasm represents the sinister influences that have taken hold within its blazing tunnels.",
			"Jergosh's command over dark magic and his oppressive rule over the chasm highlight the malevolent forces at work in Ragefire Chasm. He serves as a grim reminder of the dangers posed by warlocks who traffic with demons and use forbidden magic.",
			{ heading = "Overview" },
			"information goes here..",
			{
				role = DAMAGE,
				"",
			},
			{
				role = HEALER,
				"",
			},
			{
				role = TANK,
				"",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Bazzalan",
		encounterID = 11519,
		portrait = 607554,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bazzalan is a cunning satyr who has infiltrated the depths of Ragefire Chasm. His enigmatic motives and affiliation with dark powers have made him a dangerous figure within the chasm. Bazzalan's presence in Ragefire Chasm underscores the mysterious and shadowy influences that lurk in its fiery corridors.",
			"Bazzalan's mastery of dark arts and his role in manipulating the chasm's forces highlight the insidious forces at play within Ragefire Chasm. He serves as a reminder of the perilous threat posed by the Burning Legion's agents and their schemes within the chasm's depths.",
			{ heading = "Overview" },
			"information goes here..",
			{
				role = DAMAGE,
				"",
			},
			{
				role = HEALER,
				"",
			},
			{
				role = TANK,
				"",
			}
		},
		abilities = {
			
		}
	},
})
