--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Shadowfang Keep",
	instanceID = 64,
	thumbnail = 522358,
	icon = 136357,
	splash = 526410,
	mapID = 33,
	overview = "Looming over Pyrewood Village from the southern bluffs of Silverpine Forest, Shadowfang Keep casts a shadow as dark as its legacy. Sinister forces occupy these ruins, formerly the dwelling of the mad archmage Arugal's worgen. The restless shade of Baron Silverlaine lingers, while Lord Godfrey and his cabal of erstwhile Gilnean noblemen plot against their enemies both living and undead.",
	{
		name = "Rethilgore",
		encounterID = 3914,
		portrait = I.UIEJBossRethilgore,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rethilgore, the first boss in Shadowfang Keep, is a formidable worgen accompanied by elite adds. His transformation into a worgen guardian highlights the curse's impact within the keep.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on eliminating adds before targeting Rethilgore. Manage resources effectively, especially under {spell:7127}, which can impair damage dealing.",
			},
			{
				role = HEALER,
				"Maintain the party's health, particularly the tank, against Rethilgore's high damage. The {spell:7127} debuff requires careful mana management and healing prioritization.",
			},
			{
				role = TANK,
				"Hold aggro on Rethilgore and his adds. Watch for {spell:7295}, which can cause significant damage. Managing the debuff {spell:7127} is key to controlling the encounter's pace.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Razorclaw the Butcher",
		encounterID = 3886,
		portrait = I.UIEJBossRethilgore,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Razorclaw the Butcher, a sadistic worgen and the second boss of Shadowfang Keep, is known for his cruelty. Dealing with his adds is crucial before focusing on him.",
			{ heading = "Strategy" },
			{
				role = DAMAGE,
				"Prioritize eliminating adds before attacking Razorclaw. Maintain damage output while managing threat levels.",
			},
			{
				role = HEALER,
				"Keep the tank healed, especially through Razorclaw's constant attacks. Stay alert to the needs of the party during the encounter.",
			},
			{
				role = TANK,
				"Focus on holding Razorclaw's aggro and managing adds. Use {spell:7485} strategically to maintain control of the encounter.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Baron Silverlaine",
		encounterID = 3887,
		portrait = 522206,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baron Silverlaine, the ruler of Shadowfang Keep and its third boss, commands spectral forces and is known for his dark magic. Clearing the adds in his room is crucial before engaging him.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Prioritize high damage output while managing threat. Interrupt and decurse Baron's {spell:7068} to mitigate its effects.",
			},
			{
				role = HEALER,
				"Focus on healing, especially the tank. {spell:7068} is a critical ability to watch out for, as it reduces healing received and should be decursed.",
			},
			{
				role = TANK,
				"Maintain high threat on Baron and manage the adds. Interrupt {spell:7068} to reduce its healing reduction effect, ensuring better survivability.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	
	{
		name = "Commander Springvale",
		encounterID = 4278,
		portrait = 522213,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Commander Springvale, the fourth boss in Shadowfang Keep, is a formidable worgen warrior accompanied by adds, guarding the keep with vigilance.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on quickly eliminating the adds before engaging Springvale. Watch out for {spell:7074} from the guardsmen, which can silence players.",
			},
			{
				role = HEALER,
				"Manage your mana carefully while keeping the party alive. Be cautious of {spell:7074}, which can be particularly dangerous during the fight.",
			},
			{
				role = TANK,
				"Pull small groups of enemies to manage the room before facing Springvale. Be mindful of the Wailing Guardsman's {spell:7074}. At 30% health, Springvale uses {spell:13874} followed by {spell:1026}, which should be interrupted while he's under the effect of {spell:13874}.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Odo the Blindwatcher",
		encounterID = 4279,
		portrait = I.UIEJBossOdoTheBindwatcher,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Odo the Blindwatcher, a seer and mystic, is the fifth boss in Shadowfang Keep. Accompanied by Vile Bats, he uses his supernatural senses to confront intruders.",
			{ heading = "Strategy" },
			{
				role = DAMAGE,
				"Prioritize the Vile Bats before focusing on Odo. Save damage cooldowns for when Odo is below 50% health, as he gains more attack power with {spell:7481} during this phase.",
			},
			{
				role = HEALER,
				"Focus on sustaining the tank, especially as Odo's damage output increases. Manage your mana efficiently to handle the escalating damage in the later stages of the fight.",
			},
			{
				role = TANK,
				"Maintain threat on both Odo and the Vile Bats. Be prepared for Odo's increasing attack power due to {spell:7481}, especially as his health drops below 50%.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	
	{
		name = "Fenrus the Devourer",
		encounterID = 4274,
		portrait = 607634,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Fenrus the Devourer, a formidable worgen and the fifth boss of Shadowfang Keep, fiercely guards the entrance to Arugal's chambers.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on high damage output while managing threat. The encounter is straightforward, with Fenrus alone, making it primarily a damage test.",
			},
			{
				role = HEALER,
				"Prioritize healing the tank, as Fenrus can inflict significant damage. Manage your mana efficiently throughout the encounter.",
			},
			{
				role = TANK,
				"Maintain high threat on Fenrus to allow damage dealers to focus their efforts. Use defensive cooldowns effectively to mitigate Fenrus's heavy attacks.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},

	{
		name = "Wolf Master Nandos",
		encounterID = 3927,
		portrait = I.UIEJBossOdoTheBindwatcher,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Wolf Master Nandos, the sixth boss in Shadowfang Keep, commands a pack of loyal worgen. Positioned before Arugal's chamber, he and his wolves fiercely defend the keep.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on AOE damage to handle Nandos and his wolves, being mindful of your threat level to avoid drawing aggro away from the tank.",
			},
			{
				role = HEALER,
				"Concentrate healing on the tank, especially when Nandos summons his pack at 80% health. Manage your mana effectively to sustain through the additional damage.",
			},
			{
				role = TANK,
				"Maintain aggro on Nandos and his wolves, particularly after he summons additional wolves. Be prepared to quickly taunt them to protect your group.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},

	{
		name = "Archmage Arugal",
		encounterID = 4275,
		portrait = I.UIEJBossArchmageArugal,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archmage Arugal, the last boss of Shadowfang Keep, is notorious for unleashing the worgen curse. His arcane magic and summoning abilities pose significant challenges, including teleportation and mind control.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on high damage output, but beware of mind control. Arugal casts {spell:22709}, a high-damage shadow spell. During {spell:7621}, crowd control affected allies rather than attacking them.",
			},
			{
				role = HEALER,
				"Arugal's mind control and teleportation abilities demand efficient mana management. You can't dispel {spell:7621}, so prioritize healing for crowd-controlled allies.",
			},
			{
				role = TANK,
				"Keep constant aggro on Arugal to manage his dangerous {spell:22709}. Utilize shadow resistance and avoid attacking allies under the effect of {spell:7621}, focusing on crowd control instead.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
})
