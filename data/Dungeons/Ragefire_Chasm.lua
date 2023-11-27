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
			"Taragaman the Hungerer is the second boss encounter within Ragefire Chasm he is found on the middle plateau. Taragaman the Hungerer is not accompanied by any adds but patrols can join the encounter.",
			{
				role = DAMAGE,
				"This is a simple fight, you should do as much damage as possible while watching your threat.",
			},
			{
				role = HEALER,
				"This is a simple fight, focus your healing on the tank.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible on Taragaman, so the damage dealers can go all-out. Taragaman the Hungerer knocks up his target with {spell:18072} so beware not to be thrown into the lava.",
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
			"Oggleflint is the first boss of Ragefire Chasm he is accompanied by two adds.",
			{
				role = DAMAGE,
				"Oggleflint is accompanied by two adds which should be focused first.",
			},
			{
				role = HEALER,
				"This is a simple encounter, you should focus your healing on the tank. Oggleflint is accompanied by two adds, so be sure to watch your healing aggro while your tank picks them up.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible on Oggleflint, so the damage dealers can go all-out. Tanks should prioritize keeping the aggro on the two adds that accompany Oggleflint until damage dealers managed to defeat them. Place markers on the adds with Skull and Cross so you don't need to threat everything at once.",
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
			"Jergosh the Invoker is the third boss you can encounter in Ragefire Chasm. He's a Searing Blade Orc that is accompanied by two adds. In order to reach Jergosh the Invoker, player must first clear the guards standing in the way.",
			{
				role = DAMAGE,
				"Jergosh the Invoker is accompanied by two adds, which need to be focused down first. If you are a class with an interrupt, try to interrupt his {spell:} Immolate ability to mitigate damage on your tank.",
			},
			{
				role = HEALER,
				"Jergosh the Invoker can deal high damage to your party so mana management will be the key to defeat him.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible on Jergosh the Invoker, so the damage dealers can go all-out. Tanks should attempt to interrupt his {spell:20800} ability in order to mitigate damage.",
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
			"Bazzalan is the fourth and last boss encounter of Ragefire Chasm. Bazzalan is a human Satyr that is accompanied by two adds. Bazzalan can be found at the very end of Ragefire Chasm on the upper part of the dungeon.",
			{
				role = DAMAGE,
				"Bazzalan is accompanied by two adds, which need to be focused down first. Bazzalan can be found on the upper parts of the dungeon, right at the very end of Ragefire Chasm.",
			},
			{
				role = HEALER,
				"Bazzalan applies {spell:2818} to his target so healers should watch out for this mechanic and attempt to cleanse the poison.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible on the boss, so the damage dealers can go all-out. Bazzalan can deal high amounts of damage so tanks should approach hiim cautiously.",
			}
		},
		abilities = {
			
		}
	},
})
