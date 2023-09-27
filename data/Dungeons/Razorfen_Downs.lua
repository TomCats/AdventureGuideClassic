--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Razorfen Downs",
	instanceID = 233,
	thumbnail = 608212,
	icon = 136352,
	splash = 608251,
	mapID = 129,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Recently, scouts have reported seeing undead milling about the region, engendering fears that the dreaded Scourge may be moving to conquer Kalimdor.",
	{
		name = "Tuten'kash",
		encounterID = 7355,
		portrait = 607799,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tuten'kash is a grotesque and ancient crypt fiend that has taken residence deep within Razorfen Downs. Its malevolent presence and insatiable appetite for flesh have corrupted the once-sacred crypts. Tuten'kash's existence in Razorfen Downs serves as a chilling testament to the necromantic forces that have twisted the crypts into a nightmarish realm.",
			"Tuten'kash's monstrous form and its relentless hunger for the living make it a formidable adversary for those who venture into Razorfen Downs. Its role highlights the unnatural and profane transformation that has befallen the crypts.",
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
		name = "Plaguemaw the Rotting",
		encounterID = 7356,
		portrait = I.UIEJBossPlaguemawTheRotting,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Plaguemaw the Rotting is a vile and ancient carrion worm that infests the depths of Razorfen Downs. Its putrid presence and the diseases it spreads have tainted the once-pure crypts. Plaguemaw's presence in Razorfen Downs represents the grim consequences of the crypts' desecration.",
			"Plaguemaw's decaying form and its ability to spread pestilence make it a loathsome and dangerous foe for those who delve into Razorfen Downs. Its existence serves as a reminder of the sickness and decay that have plagued the crypts.",
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
		name = "Mordresh Fire Eye",
		encounterID = 7357,
		portrait = 607718,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mordresh Fire Eye is a malevolent and powerful undead sorcerer who has claimed Razorfen Downs as his domain. His mastery of fire magic and his dark ambitions have corrupted the once-holy crypts. Mordresh's presence in Razorfen Downs symbolizes the dangerous arcane forces that now rule the crypts.",
			"Mordresh's command over fire magic and his oppressive rule over the crypts highlight the malevolent and destructive powers that have taken hold in Razorfen Downs. He serves as a grim reminder of the dangers posed by undead sorcerers and their sinister magic.",
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
		name = "Ragglesnout",
		encounterID = 7354,
		portrait = I.UIEJBossRagglesnout,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ragglesnout is a massive and ravenous boar that roams the desecrated halls of Razorfen Downs. Its immense size and insatiable appetite have turned the crypts into a treacherous labyrinth. Ragglesnout's presence within Razorfen Downs reflects the chaotic and dangerous wildlife that now inhabits the crypts.",
			"Ragglesnout's voracious appetite and its deadly charges make it a formidable and ever-moving obstacle for those who navigate Razorfen Downs. Its existence is a testament to the untamed and perilous nature of the crypts' ecosystem.",
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
		name = "Glutton",
		encounterID = 8567,
		portrait = 607617,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Glutton is a repugnant and bloated creature that has made its lair within the plagued halls of Razorfen Downs. Its ravenous hunger and corrosive bile have tainted the once-sacred crypts. Glutton's presence in Razorfen Downs represents the grotesque corruption that now infests the crypts.",
			"Glutton's revolting appearance and its ability to spew corrosive bile make it a repulsive and dangerous adversary for those who explore Razorfen Downs. Its role serves as a chilling reminder of the monstrous transformations that have taken place in the crypts.",
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
		name = "Amnennar the Coldbringer",
		encounterID = 7358,
		portrait = 607537,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Amnennar the Coldbringer is an ancient and powerful lich who has claimed Razorfen Downs as his necropolis. His mastery of frost magic and his dark ambitions have frozen the crypts in eternal winter. Amnennar's presence in Razorfen Downs symbolizes the malevolent necromantic forces that have taken root in the crypts.",
			"Amnennar's command over frost magic and his oppressive rule over the crypts highlight the chilling and destructive powers that have consumed Razorfen Downs. He serves as a grim reminder of the dangers posed by liches and their mastery over the undead.",
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
