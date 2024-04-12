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
	season = true,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Recently, scouts have reported seeing undead milling about the region, engendering fears that the dreaded Scourge may be moving to conquer Kalimdor.",
	{
		name = "Tuten'kash",
		encounterID = 7355,
		portrait = 607799,
		loot = { 10775, 10776, 10777 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tuten'kash is a grotesque and ancient crypt fiend that has taken residence deep within Razorfen Downs. Its malevolent presence and insatiable appetite for flesh have corrupted the once-sacred crypts. Tuten'kash's existence in Razorfen Downs serves as a chilling testament to the necromantic forces that have twisted the crypts into a nightmarish realm.",
			{ heading = "Overview" },
			"Manage spider waves, then confront Tuten'kash. Damage dealers stay behind to avoid {spell:12252}, decurse {spell:12255} as needed. Healers focus on tank, stay behind. Tanks face Tuten'kash away from group.",
			{
				role = DAMAGE,
				"Avoid {spell:12252}, decurse {spell:12255}. Focus Tuten'kash after adds."
			},
			{
				role = HEALER,
				"Heal tank, stay behind Tuten'kash. Decurse {spell:12255} as needed."
			},
			{
				role = TANK,
				"Face Tuten'kash away, manage threat, avoid {spell:12252}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Plaguemaw the Rotting",
		encounterID = 7356,
		portrait = I.UIEJBossPlaguemawTheRotting,
		loot = { 10760, 10766 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Plaguemaw the Rotting is a vile and ancient carrion worm that infests the depths of Razorfen Downs. Its putrid presence and the diseases it spreads have tainted the once-pure crypts. Plaguemaw's presence in Razorfen Downs represents the grim consequences of the crypts' desecration.",
			{ heading = "Overview" },
			"Manage adds, protect Belnistrasz. Damage dealers control adds, focus Plaguemaw. Healers maintain group health, manage aggro. Tanks pick up adds, simple tanking for Plaguemaw.",
			{
				role = DAMAGE,
				"Control adds, focus Plaguemaw. Assist in protecting Belnistrasz."
			},
			{
				role = HEALER,
				"Avoid add aggro, heal tank and helpers. Protect Belnistrasz."
			},
			{
				role = TANK,
				"Manage adds, simple tanking for Plaguemaw. Protect Belnistrasz."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Mordresh Fire Eye",
		encounterID = 7357,
		portrait = 607718,
		loot = { 10769, 10770, 10771 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mordresh Fire Eye is a malevolent and powerful undead sorcerer who has claimed Razorfen Downs as his domain. His mastery of fire magic and his dark ambitions have corrupted the once-holy crypts. Mordresh's presence in Razorfen Downs symbolizes the dangerous arcane forces that now rule the crypts.",
			{ heading = "Overview" },
			"Eliminate skeletons, then confront Mordresh. Damage dealers use AoE for adds, interrupt {spell:12466}. Healers wait for tank aggro, focus tank. Tanks use AoE for adds, focus on Mordresh, interrupt {spell:12466}.",
			{
				role = DAMAGE,
				"Use AoE for adds, then focus Mordresh. Interrupt {spell:12466}."
			},
			{
				role = HEALER,
				"Delay healing, focus tank. Manage group health during add phase."
			},
			{
				role = TANK,
				"Use AoE for adds, establish threat on Mordresh. Interrupt {spell:12466}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Ragglesnout",
		encounterID = 7354,
		portrait = I.UIEJBossRagglesnout,
		loot = { 10767, 10768, 10758 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ragglesnout is a massive and ravenous boar that roams the desecrated halls of Razorfen Downs. Its immense size and insatiable appetite have turned the crypts into a treacherous labyrinth. Ragglesnout's presence within Razorfen Downs reflects the chaotic and dangerous wildlife that now inhabits the crypts.",
			{ heading = "Overview" },
			"Interrupt spells, manage mind control. Damage dealers interrupt {spell:11659}, {spell:12039}, handle mind control. Healers focus on healing, manage mind-controlled allies. Tanks face away from group, rotate interrupts.",
			{
				role = DAMAGE,
				"Interrupt {spell:11659}, {spell:12039}. Manage mind-controlled allies."
			},
			{
				role = HEALER,
				"Heal tank, manage mind-controlled allies. Stay alert."
			},
			{
				role = TANK,
				"Face away from group. Interrupt {spell:12039}, {spell:11659}. Manage mind control."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Glutton",
		encounterID = 8567,
		portrait = 607617,
		loot = { 10772, 10774 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Glutton is a repugnant and bloated creature that has made its lair within the plagued halls of Razorfen Downs. Its ravenous hunger and corrosive bile have tainted the once-sacred crypts. Glutton's presence in Razorfen Downs represents the grotesque corruption that now infests the crypts.",
			{ heading = "Overview" },
			"Manage Glutton. Damage dealers avoid {spell:12627}, focus on Glutton. Healers focus on tank, avoid {spell:12627}. Tanks pick up Glutton, face away from group.",
			{
				role = DAMAGE,
				"Avoid {spell:12627}. Focus Glutton."
			},
			{
				role = HEALER,
				"Heal tank during enrage, avoid {spell:12627}."
			},
			{
				role = TANK,
				"Pick up Glutton, face away from group."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Amnennar the Coldbringer",
		encounterID = 7358,
		portrait = 607537,
		loot = { 10761, 10763, 10764, 10762, 10765 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Amnennar the Coldbringer is an ancient and powerful lich who has claimed Razorfen Downs as his necropolis. His mastery of frost magic and his dark ambitions have frozen the crypts in eternal winter. Amnennar's presence in Razorfen Downs symbolizes the malevolent necromantic forces that have taken root in the crypts.",
			{ heading = "Overview" },
			"Confront Amnennar. Damage dealers stack, avoid Frost Spectres, focus Amnennar. Healers stack with group, manage add damage. Tanks face Amnennar away, control positioning.",
			{
				role = DAMAGE,
				"Stack, manage Frost Spectres, focus Amnennar. Avoid {spell:15531}."
			},
			{
				role = HEALER,
				"Stack, heal group, focus on add damage."
			},
			{
				role = TANK,
				"Face away, control Amnennar. Manage group positioning."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	}
})
