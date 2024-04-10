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
		loot = { 5254 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rethilgore is a wretched worgen who has succumbed to the dark curse of Shadowfang Keep. Once a victim of the relentless curse that plagues the keep's inhabitants, Rethilgore has become a twisted and malevolent creature. His presence within the accursed keep reflects the enduring influence of the curse and the horrors that await those who venture into its depths.",
			{ heading = "Overview" },
			"Rethilgore, the imposing worgen boss in Shadowfang Keep, the key is to eliminate the adds swiftly, then focus on Rethilgore while managing his {spell:7127} debuff. Damage dealers should target adds first; healers must prioritize mana management and dispelling, while tanks should control the adds and mitigate Rethilgore's damage.",
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
		loot = { 6226, 6633, 1292 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Razorclaw the Butcher is a monstrous and sadistic worgen who revels in the pain and suffering of others. He serves as one of the ruthless enforcers within Shadowfang Keep, responsible for tormenting prisoners and disposing of intruders. Razorclaw's presence within the keep reflects the cruelty and malevolence that define its inhabitants.",
			{ heading = "Overview" },
			"Facing Razorclaw the Butcher means dealing with his adds first. Damage dealers should prioritize add control, while healers focus on sustaining the group under constant attacks. Tanks need to balance aggro management between Razorclaw and his adds, using {spell:7485} effectively for encounter control.",
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
		loot = { 6323, 6321 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baron Silverlaine is the lord and master of Shadowfang Keep, a once-noble figure who has been consumed by the darkness that plagues the keep. He rules over the cursed fortress with an iron fist, commanding the spectral and wretched creatures within. Baron Silverlaine's presence within the keep reflects the tragic transformation of a once-noble soul into a malevolent force.",
			{ heading = "Overview" },
			"Baron Silverlaine, commanding spectral forces, requires clearing adds before engagement. Damage dealers should interrupt and manage threat, especially against {spell:7068}. Healers focus on dispelling and sustaining the tank, while tanks should interrupt key spells and maintain high threat on both Baron and adds.",
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
		loot = { 3191, 6320 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Commander Springvale is a loyal servant of Baron Silverlaine and a formidable worgen warrior within Shadowfang Keep. He stands as a sentinel and protector of the keep, ready to defend it against intruders. Commander Springvale's presence reflects the unwavering loyalty of the keep's inhabitants to their cursed lord.",
			{ heading = "Overview" },
			"In the Commander Springvale encounter, Damage dealers must quickly handle adds before engaging Springvale. Healers should manage mana while dealing with {spell:7074}. Tanks must control enemy groups effectively and interrupt Springvale's {spell:13874} and {spell:1026} at critical moments.",
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
		loot = { 6319, 6318 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Odo the Blindwatcher is a blind and enigmatic figure who serves the denizens of Shadowfang Keep as a seer and mystic. Despite his blindness, he possesses an uncanny ability to sense and perceive intruders. Odo's presence within the keep reflects the mystical and supernatural elements that are intertwined with its cursed halls.",
			{ heading = "Overview" },
			"Odo the Blindwatcher, accompanied by Vile Bats, requires Damage dealers to prioritize adds first. Healers should prepare for increased damage output as Odo's health drops, especially under {spell:7481}. Tanks need to maintain threat on both Odo and the bats, preparing for his enhanced attack power in the later phase.",
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
		loot = { 6340, 3230 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Fenrus the Devourer is a monstrous worgen known for his insatiable hunger and his role as a guardian of Shadowfang Keep. He is responsible for hunting down and consuming intruders who dare to enter the keep. Fenrus's presence reflects the savage and predatory nature of the worgen within the cursed fortress.",
			{ heading = "Overview" },
			"Fenrus the Devourer presents a straightforward damage test, with Damage dealers focusing on high output. Healers should prioritize tank healing under Fenrus's heavy attacks, while tanks need to use defensive cooldowns effectively to withstand these assaults.",
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
		loot = { 3748, 6314 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Wolf Master Nandos is a worgen who has embraced his lupine form and serves as a trainer and leader of the worgen packs within Shadowfang Keep. He commands these savage creatures with unwavering loyalty to Baron Silverlaine. Nandos's presence within the keep reflects the primal and bestial nature of its inhabitants.",
			{ heading = "Overview" },
			"Dealing with Wolf Master Nandos and his pack demands AOE damage focus from Damage dealers, careful aggro management by the tank, and sustained healing by the healers, especially post-80% health when Nandos summons more wolves. Efficient mana use and quick taunting are crucial.",
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
		loot = { 6324, 6392, 6220 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archmage Arugal is a powerful and twisted mage who is responsible for summoning worgen into the region of Silverpine Forest and ultimately cursing Shadowfang Keep. He became obsessed with the idea of creating a loyal army and inadvertently unleashed a terrible curse. Arugal's presence within the keep reflects the cataclysmic consequences of his reckless magic.",
			{ heading = "Overview" },
			"Archmage Arugal's challenge lies in his mind control and arcane magic. Damage dealers should balance high output with crowd control during {spell:7621}. Healers must manage mana efficiently and focus on allies under mind control. Tanks need to maintain constant aggro and utilize shadow resistance while avoiding attacking mind-controlled allies.",
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
