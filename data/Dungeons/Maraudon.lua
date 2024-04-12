--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Maraudon",
	instanceID = 232,
	thumbnail = 608209,
	icon = 136345,
	splash = 608248,
	mapID = 349,
	season = true,
	overview = "According to legend, Zaetar, son of Cenarius, and the earth elemental princess Theradras begot the barbaric centaur race. Shortly after the centaur's creation, the ruthless creatures murdered their father. The grief-stricken Theradras is said to have trapped her lover's spirit within Maraudon, corrupting the region. Now, vicious centaur ghosts and twisted elemental minions roam every corner of the sprawling caves.",
	{
		name = "Noxxion",
		encounterID = 13282,
		portrait = 607728,
		loot = { 17744, 17745, 17746 },
		overview = {
			"Noxxion is a malevolent elemental lord who dwells within the putrid waters of Maraudon's inner sanctum. His watery form and toxic abilities have corrupted the once-pure waters of the cavern. Noxxion's presence in Maraudon is a stark reminder of the elemental chaos that has consumed the underground springs.",
			{ heading = "Overview" },
			"Focus on Noxxion, then defeat his smaller versions. Healers heal through mechanics, tanks pull Noxxion onto land for AoE attacks.",
			{
				role = DAMAGE,
				"Focus Noxxion, then his smaller versions."
			},
			{
				role = HEALER,
				"Heal through mechanics."
			},
			{
				role = TANK,
				"Pull Noxxion onto land, manage AoE."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Razorlash",
		encounterID = 12258,
		portrait = 607756,
		loot = { 17749, 17748, 17751, 17750 },
		overview = {
			"Razorlash is a monstrous thorned terror that has taken root within the lush greenery of Maraudon's inner sanctum. Its massive form and deadly thorns have overrun the verdant growth, twisting it into a dangerous and chaotic realm. Razorlash's presence within Maraudon represents the perversion of nature and the struggle to contain its unchecked power.",
			{ heading = "Overview" },
			"Melee damage dealers stand behind Razorlash, ranged at maximum range. Healers manage {spell:15976} bleed, stand at range. Tanks face Razorlash away from others.",
			{
				role = DAMAGE,
				"Melee behind Razorlash, ranged at max range."
			},
			{
				role = HEALER,
				"Manage bleed, heal at range."
			},
			{
				role = TANK,
				"Face Razorlash away, simple tanking."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Lord Vyletongue",
		encounterID = 12236,
		portrait = 607699,
		loot = { 17754, 17752, 17755 },
		overview = {
			"Lord Vyletongue is a sinister satyr who has established a stronghold within Maraudon's inner sanctum. His dark sorcery and malevolent presence have corrupted the once-pure heart of the cavern. Lord Vyletongue's presence in Maraudon symbolizes the insidious influence of the Burning Legion on the sacred earth.",
			{ heading = "Overview" },
			"Focus Vyletongue, then adds. Stack to prevent {spell:14443}, manage {spell:1953} blinks. Healers stack, focus tank. Tanks manage Vyletongue and adds, stack.",
			{
				role = DAMAGE,
				"Focus Vyletongue, manage adds. Stack to prevent {spell:14443}."
			},
			{
				role = HEALER,
				"Heal tank, stack with group. Watch {spell:14443}."
			},
			{
				role = TANK,
				"Tank Vyletongue and adds, manage {spell:1953} blinks."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Celebras the Cursed",
		encounterID = 12225,
		portrait = 607562,
		loot = { 17738, 17739, 17740 },
		overview = {
			"Celebras the Cursed is a tragic figure who was once a guardian of Maraudon but has been twisted by corruption. His existence within the sacred cavern is a poignant reminder of the cataclysmic events that have befallen the area. Celebras's presence in Maraudon symbolizes the desperate struggle to restore balance and purity to the cavern's depths.",
			{ heading = "Overview" },
			"Focus Celebras, manage adds, use interrupts. Healers focus tank, manage {spell:12747} and {spell:21793}. Tanks tank Celebras and adds, coordinate interrupts.",
			{
				role = DAMAGE,
				"Focus Celebras, manage adds, interrupt spells."
			},
			{
				role = HEALER,
				"Heal tank, manage {spell:12747} and {spell:21793}."
			},
			{
				role = TANK,
				"Tank Celebras and adds, use interrupts."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Landslide",
		encounterID = 12203,
		portrait = 607684,
		loot = { 17737, 17943, 17734, 17736 },
		overview = {
			"Landslide is a colossal earth elemental that roams the rocky passages of Maraudon's inner sanctum. Its immense size and destructive force have reshaped the underground terrain, turning it into a treacherous labyrinth. Landslide's presence within Maraudon reflects the elemental upheaval that has gripped the subterranean caverns.",
			{ heading = "Overview" },
			"Focus Landslide, manage adds, ranged at max range. Healers heal from distance, manage adds. Tanks engage Landslide, manage adds, back to wall.",
			{
				role = DAMAGE,
				"Focus Landslide, manage adds, ranged at max range."
			},
			{
				role = HEALER,
				"Heal from distance, manage adds."
			},
			{
				role = TANK,
				"Engage Landslide, manage adds, back to wall."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Tinkerer Gizlock",
		encounterID = 13601,
		portrait = 607796,
		loot = { 17718, 17719, 17717 },
		overview = {
			"Tinkerer Gizlock is a cunning goblin engineer who has established a workshop within Maraudon's inner sanctum. His ingenious gadgets and destructive creations have added chaos to the cavern's already tumultuous environment. Tinkerer Gizlock's presence in Maraudon represents the volatile combination of goblin innovation and the cavern's inherent dangers.",
			{ heading = "Overview" },
			"Damage dealers stack behind Gizlock, avoid {spell:13183} and {spell:6660}. Healers stack, heal tank, watch for {spell:8858}. Tanks face Gizlock away, maintain threat.",
			{
				role = DAMAGE,
				"Stack behind Gizlock, avoid {spell:13183} and {spell:6660}."
			},
			{
				role = HEALER,
				"Stack with damage dealers, heal tank, watch for {spell:8858}."
			},
			{
				role = TANK,
				"Face Gizlock away, maintain threat."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Rotgrip",
		encounterID = 13596,
		portrait = 607761,
		loot = { 17728, 17730, 17732 },
		overview = {
			"Rotgrip is a monstrous and ravenous hydra that lurks within the murky waters of Maraudon's inner sanctum. Its multiple heads and insatiable appetite have made it a feared inhabitant of the subterranean pools. Rotgrip's presence within Maraudon underscores the dangerous and diverse wildlife that inhabits the cavern.",
			{ heading = "Overview" },
			"Maximize damage, avoid threat. Healers focus tank, manage {spell:16495}. Tanks use ranged pull, face Rotgrip away, use defensive cooldowns.",
			{
				role = DAMAGE,
				"Maximize damage, manage threat, use {spell:5697} or {spell:131}."
			},
			{
				role = HEALER,
				"Focus tank, manage {spell:16495} bleed."
			},
			{
				role = TANK,
				"Ranged pull, face away, use defensive cooldowns."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Princess Theradras",
		encounterID = 12201,
		portrait = 607747,
		loot = { 17780, 17713, 17714, 17710, 17711, 17715, 17707, 17766 },
		overview = {
			"Princess Theradras is a powerful earth elemental lordess who has claimed Maraudon as her domain. Her dominion over the sacred cavern and her dark ambitions have made her a formidable and reviled figure. Princess Theradras's presence in Maraudon represents the ongoing struggle to cleanse and purify the cavern's depths.",
			{ heading = "Overview" },
			"Damage dealers manage {spell:21868}, avoid {spell:9483}, use fear break. Healers heal at range, manage {spell:6346} or {spell:8143}. Tanks face Theradras away, manage {spell:18499}.",
			{
				role = DAMAGE,
				"Manage {spell:21868}, avoid {spell:9483}, use fear break."
			},
			{
				role = HEALER,
				"Heal at range, manage {spell:6346} or {spell:8143}."
			},
			{
				role = TANK,
				"Face Theradras away, manage {spell:18499}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	}
})
