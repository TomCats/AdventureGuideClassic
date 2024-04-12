--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Blackrock Depths",
	instanceID = 228,
	thumbnail = 608196,
	icon = 136326,
	splash = 608235,
	mapID = 230,
	season = true,
	overview = "The smoldering Blackrock Depths are home to the Dark Iron dwarves and their emperor, Dagran Thaurissan. Like his predecessors, he serves under the iron rule of Ragnaros the Firelord, a merciless being summoned into the world centuries ago. The presence of chaotic elementals has attracted Twilight's Hammer cultists to the mountain domain. Along with Ragnaros' servants, they have pushed the dwarves toward increasingly destructive ends that could soon spell doom for all of Azeroth.",
	{
		name = "Lord Roccor",
		encounterID = 9025,
		portrait = 607697,
		loot = { 22397, 22234, 11631, 11632 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Roccor is the first boss of Blackrock Depths, and is a powerful fire elemental. He is known for his destructive capabilities and his control over flames, Lord Roccor is a formidable adversary. He is believed to have been summoned and bound to the fortress by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			{ heading = "Overview" },
			"Position Lord Roccor so you don't pull additional mobs, damage dealers focus on Lord Roccor, healers prioritize tank and beware of {spell:6524}.",
			{
				role = DAMAGE,
				"Lord Roccor has high armor, but should simply be focused down by all damage dealer classes.",
			},
			{
				role = HEALER,
				"Heal the tank, beware of {spell:6524}.",
			},
			{
				role = TANK,
				"Tank Lord Roccor in a position where you will not pull any additional mobs.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Bael'Gar",
		encounterID = 9016,
		portrait = 607549,
		loot = { 11802, 11803, 11805, 11807 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bael'Gar is a fearsome fire elemental that lurks within Blackrock Depths. Known for his destructive capabilities and affinity for fire magic, Bael'Gar is a formidable adversary. He is believed to have been summoned and bound to the depths by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			{ heading = "Overview" },
			"Position Bael'Gar facing away from group, damage dealers stay behind Bael'Gar to avoid {spell:13880}, healers priortize tank.",
			{
				role = DAMAGE,
				"Stay behind Bael'gar to avoid {spell:13880}, focus adds when spawned.",
			},
			{
				role = HEALER,
				"Focus on the tank, stand behind Bael'gar to avoid {spell:13880}.",
			},
			{
				role = TANK,
				"Position Bael'Gar facing away from the group, {spell:355} additional adds when spawned.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Houndmaster Grebmar",
		encounterID = 9319,
		portrait = 607647,
		loot = { 11623, 11629, 11628, 11627 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Houndmaster Grebmar is a loyal servant of the Dark Iron dwarves and the master of a pack of ferocious hounds within Blackrock Depths. He is known for his ruthless training methods and his unwavering loyalty to Emperor Dagran Thaurissan. Grebmar's responsibility includes overseeing the fortress's canine defenders and ensuring their readiness to protect their masters.",
			{ heading = "Overview" },
			"Take down two groups of dogs before engaging Houndmaster Grebmar, healers focus on the tank, watch for {spell:27689} buff on Houndmaster Grebmar.",
			{
				role = DAMAGE,
				"Focus down the wolf adds before turning your attention to Houndmaster Grebmar. Ideally, they should be dead already before the pull.",
			},
			{
				role = HEALER,
				"Maintain a focus on your tank, looking out for when he increases his attack speed with {spell:27689}",
			},
			{
				role = TANK,
				"Focus on Houndmaster Grebmar and hold aggro.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "High Interrogator Gerstahn",
		encounterID = 9018,
		portrait = 607644,
		loot = { 22240, 11626, 11625, 11624 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Interrogator Gerstahn is a powerful sorceress and a prominent member of the Dark Iron clan within Blackrock Depths. She is known for her expertise in dark magic and her role in extracting information from captives. Gerstahn's allegiance to Emperor Dagran Thaurissan and her mastery of the arcane arts make her a formidable figure within the fortress.",
			{ heading = "Overview" },
			"Focus damage on High Interrogator while interrupting {spell:14033}, healers dispel {spell:14032}, line of sight pull Gerstahn out of the room into the hallway.",
			{
				role = DAMAGE,
				"Focus damage on Gerstahn, interrupt {spell:14033}. Use {spell:8143}, {spell:6346} and {spell:18499} to interrupt the effects of {spell:13704}.",
			},
			{
				role = HEALER,
				"Use {spell:8143} and {spell:6346} to prevent tank from being feared during {spell:13704}. {spell:14032} can be dispelled.",
			},
			{
				role = TANK,
				"Line of sight pull Gerstahn, maintain interrupts for {spell:14033} while keeping good threat.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ring of Law",
		encounterID = 10096,
		portrait = 608314,
		loot = { 11726, 22271, 22266, 22257, 22270, 11722, 11703, 11702, 11730, 11679, 11685, 11686, 11728, 11662, 11665, 11824, 11731, 11675, 11677, 11678, 11729, 11633, 11634, 11635 },
		npcs = { 9027, 9028, 9029, 9030, 9031, 9032 },
		overview = {
			"The Ring of Law is a unique and mysterious arena within Blackrock Depths, overseen by the enigmatic goblin, Short John Mithril. It serves as a place of entertainment, where combatants are pitted against each other and various challengers in a battle for survival. The Ring of Law's purpose within the fortress remains shrouded in mystery, but it is a place where both combat and spectacle thrive.",
			{ heading = "Overview" },
			"Ring of the Law has multiple possible bosses, which could be more optomal for some compositions. The randomness of the encounter can cause issues if the group is not prepared for the possibilities.",
			{
				-- this section requires to be updated to use the npc names instead of the npc ids.
				npc = 9027,
				{
					role = DAMAGE,
					"Allow for your tank to establish threat, and then begin your damage rotation. Melee damage dealers should be aware of the {spell:15589} ability, which will deal damage to targets in melee range. Ranged damage dealers should ensure they are out of {spell:15589} range always.",
				},
				{
					role = HEALER,
				    "The challenge to healing through this fight is the {spell:15708}, which will reduce the healing taken by the tank. When this debuff comes up, use whatever abilities or cooldowns you can to increase your healing output.",
				},
				{
					role = TANK,
				    "Tanking this fight is straight forward, maintain threat and allow damage dealers to focus Gorosh down. Use defensive cooldowns when you are affected by {spell:15708} to help reduce the damage you take and the need for healing spells. Be aware of when the boss uses {spell:21049}, as a combination of this and {spell:15708} will result in you taking significantly more damage.",
				}
			},
			{
				npc = 9028,
				{
					role = DAMAGE,
					"Allow for your tank to establish threat before you open up on damage. Ranged damage dealers should stand at maximum range to avoid the effects of {spell:6524}.",
				},
				{
					role = HEALER,
					"Focus your healing on the tank. Stay maximum distance to outrange the effects of {spell:6524}."
				},
				{
					role = TANK,
					"This fight is simple, focus damage on {npc:9028} and hold aggro."
				}
			},
			{
				npc = 9029,
				{
					role = DAMAGE,
					"When Eviscerator uses {spell:7121}, caster damage dealers should hold off from casting to not waste mana. Priests should buff the group with {spell:1279}, and Warlocks should use their {spell:6232} to mitigate damage from {spell:28599}.",
				},
				{
					role = HEALER,
					"During the encounter, focus your healing on the tank who will be affected by {spell:16095}. Priest healers should buff the group with {spell:1279} to reduce the effects of {spell:28599}.",
				},
				{
					role = TANK,
					"This fight is simple, focus your damage on Eviscerator and maintain threat.",
				}
			},
			{
				npc = 9030,
				{
					role = DAMAGE,
					"Once your tank has established threat you can begin your damage rotation, keep a distance from Ok'thor to avoid being hit by {spell:26192}. Be aware of who has been targeted by {spell:14621}, and {spell:21076} it if your calass can do so.",
				},
				{
					role = HEALER,
					"Melee damage dealers, the tank, and anyone standing too close to Ok'thor will be hit by {spell:26192}. Top everyone off after this goes out to avoid unnecessary deaths. Be aware of who is affected by {spell:14621}, and if your class can, be quick to {spell:21076} the target.",
				},
				{
					role = TANK,
					"Tanking this boss does not require any unfamiliar techniques or positioning. Establish and maintain threat while your damage dealers focus him down.",
				}
			},
			{
				npc = 9031,
				{
					role = DAMAGE,
					"During the fight spread out and allow the tank to establish and maintain threat, then maximize your damage output. Mages and Druids should prioritize decuring {spell:15470}.",
				},
				{
					role = HEALER,
					"Healing this encounter is not challenging, but be sure to keep everyones health up as often as possible in case you get hit with {spell:15471}. If possible, decurse {spell:15470} from yourself or your group.",
				},
				{
					role = TANK,
					"Engage Anub'shiah in the center of the room, and focus damage while maintaining threat.",
				}
			},
			{
				npc = 9032,
				{
					role = DAMAGE,
					"Allow the tank to establish and maintain threat, then begin your damage rotation. If your class can cleanse posions or dispel the {spell:15474} movement impairing effect, to help out your healer.",
				},
				{
					role = HEALER,
					"Be aware that the group may require healing through the effects of {spell:15475}, but otherwise you should focus your healing on the tank. The poisons can and should be cleansed, and {spell:15474} can be dispelled.",
				},
				{
					role = TANK,
					"Engage Hedrum as it skitters out to the arena floor, and maintain threat on the boss throughout the encounter.",
				}
			},
		},
		abilities = {
			
		}
	},
	{
		name = "Pyromancer Loregrain",
		encounterID = 9024,
		portrait = 607749,
		loot = { 11750, 11749, 11748, 11747 },
		npcs = { 9024 },
		overview = {
			"Pyromancer Loregrain is a powerful sorcerer specializing in fire magic, and he is one of the key lieutenants of the Dark Iron clan within Blackrock Depths. Known for his mastery over flames and his role in the fortress's defenses, Loregrain is a formidable adversary. He is believed to have harnessed the power of fire to aid the Dark Irons in their efforts to maintain control over the depths.",
			{ heading = "Overview" },
			"Quickly take down Pyromancer Loregrain's {spell:15038} when summoned, healers focus healing on the tank and prepare for group damage from {spell:15038}. If there's a Paladin in the group use {spell:19891}.",
			{
				role = DAMAGE,
				"Focus damage on Pyromancer Loregrain, swap and focus to {spell:15038} when summoned. Avoid using fire spells when {spell:15041} is active.",
			},
			{
				role = HEALER,
				"Focus healing on the tank, expect group damage from {spell:15038}, Paladin's use {spell:19891}.",
			},
			{
				role = TANK,
				"Position Pyromancer Loregrain facing away from the group, maintain threat.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "General Angerforge",
		encounterID = 9033,
		portrait = 607610,
		loot = { 11816, 11817, 11820, 11821, 11810 },
		npcs = { 9033 },
		overview = {
			"General Angerforge is a high-ranking military leader among the Dark Iron dwarves, responsible for overseeing the fortress's defenses and the training of its troops. He is known for his tactical brilliance and his unwavering loyalty to Emperor Dagran Thaurissan. Angerforge's role is crucial in ensuring the readiness of the Dark Iron forces within Blackrock Depths.",
			{ heading = "Overview" },
			"Focus damage on General Angerforge, use AoE abilities to take down summoned adds, healers stay in line of sight, use a range ability to pull General Angerforge from the top of the ramp.",
			{
				role = DAMAGE,
				"Focus damage on General Angerforge, use AoE or multi target abilities to quickly take down adds.",
			},
			{
				role = HEALER,
				"Keep the tank in range and line of sight, stack up with range damage dealers.",
			},
			{
				role = TANK,
				"Use a ranged ability from the top of the ramp to pull General Angerforge, Angerforge should run up to meet you on the platform.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Golem Lord Argelmach",
		encounterID = 8983,
		portrait = 607618,
		loot = { 11669, 11819, 11822, 11823 },
		npcs = { 8983 },
		overview = {
			"Golem Lord Argelmach is a master of golemcraft and a prominent figure within Blackrock Depths. He is responsible for creating and overseeing the formidable golem guardians that defend the fortress. Argelmach's expertise in constructing and controlling these powerful automatons makes him a key enforcer of the Dark Iron clan's will.",
			{ heading = "Overview" },
			"Take down the two constructs first, healers prepare for intensive healing with adds alive and watch for damage from {spell:15507}.",
			{
				role = DAMAGE,
				"Focus damage on the two constructs before attacking Golem Lord Argelmach.",
			},
			{
				role = HEALER,
				"Prepare for intensive healing with the adds alive, {spell:15507} will do extra damage to damage dealers.",
			},
			{
				role = TANK,
				"Hold threat on the two constructs while the damage dealers finish them off then focus on Golem Lord Argelmach.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ribbly Screwspigot",
		encounterID = 9543,
		portrait = 607758,
		loot = { 11742, 2663, 2662 },
		npcs = { 9543 },
		overview = {
			"Ribbly Screwspigot is a goblin known for his shrewd business dealings and his establishment of the Grim Guzzler tavern within Blackrock Depths. While not a traditional boss, Ribbly plays a unique role in the fortress. He is known for his ties to various factions and his ability to broker deals even within the depths of Blackrock.",
			{ heading = "Overview" },
			"Ribbly Screwspigot is an optional encounter located in Blackrock Depths. Focus damage output on Ribby then move onto the adds, healers focus healing on the tank, tanks maintain threat on Ribby and his cronies.",
			{
				role = DAMAGE,
				"Focus your damage output on Ribby Screwspigot then move on to the adds.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank as they will be taking damage from Ribby Screwspigot as well as the cronies.",
			},
			{
				role = TANK,
				"Maintain threat on Ribby Screwspigot and his cronies using AoE abilities.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Hurley Blackbreath",
		encounterID = 9537,
		portrait = 607650,
		loot = { 22275, 18044, 18043 },
		npcs = { 9537 },
		overview = {
			"Hurley Blackbreath is a formidable Dark Iron dwarf and one of the key figures in the Grim Guzzler tavern within Blackrock Depths. Known for his formidable combat skills and his penchant for violence, Hurley is a feared enforcer within the fortress. His role includes maintaining order within the tavern and dealing with unruly patrons.",
			{ heading = "Overview" },
			"Hurley Blackbreath is an optional encounter located in Blackrock Depths. Use crowd control abilities on the summoned adds, healer's focus healing on the tank, tank's position Hurley Blackbreath in a corner of the room away from the door.",
			{
				role = DAMAGE,
				"Use crowd control abilities on the adds, then focus down Hurley Blackbreath.",
			},
			{
				role = HEALER,
				"Focus healing on the tank, groups members may pick up threat on the adds and take damage.",
			},
			{
				role = TANK,
				"Position Hurley Blackbreath in a corner of the room away from the door. Crowd control the adds and maintain threat on Hurley Blackbreath.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Plugger Spazzring",
		encounterID = 9499,
		portrait = 607741,
		loot = { 12791, 12793 },
		npcs = { 9499 },
		overview = {
			"Plugger Spazzring is a goblin known for his control over the bar and various services within the Grim Guzzler tavern in Blackrock Depths. While not a traditional boss, Plugger plays a unique role in the fortress. He is a master of brewing and serves as the tavern's brewmaster, offering drinks and concoctions to patrons.",
			{ heading = "Overview" },
			"Plugger Spazzring is an optional encounter located in the Grim Guzzler. You cannot interrupt his abilities, decurse members affected by {spell:13338}. Position Plugger Spazzring away from other mobs in the Grim Guzzler.",
			{
				role = DAMAGE,
				"Focus damage on Plugger Spazzring and get him down quicky, you can not interrupt any of his abilities. Decurse party members affected by {spell:13338}.",
			},
			{
				role = HEALER,
				"Maintain healing on your tank. Dispel the {spell:13338} effect from players.",
			},
			{
				role = TANK,
				"Position Plugger Spazzring away from other mobs in the Grim Guzzler who could be hit with any AoE abilities.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Phalanx",
		encounterID = 9502,
		portrait = 607740,
		loot = { 22212, 11744, 11745, 11743 },
		npcs = { 9502 },
		overview = {
			"Phalanx is a massive fire elemental that has been bound to serve the Dark Iron dwarves within Blackrock Depths. Its fiery form and powerful attacks make it a formidable guardian of the fortress. Phalanx's role is to ensure the security of key areas within the depths and to repel intruders.",
			{ heading = "Overview" },
			"Focus damage on Phalanx and ranged stay out of melee to avoid {spell:15588}, healers focus on the tank when {spell:14099} is being used, tank's position Phalanx near the door and mitigate damage from {spell:14099}.",
			{
				role = DAMAGE,
				"Focus damage on Phalanx, ranged stay out of melee range to avoid {spell:15588}. ",
			},
			{
				role = HEALER,
				"Focus healing on the tank, especially when Phalanx uses his ability {spell:14099} on the tank.",
			},
			{
				role = TANK,
				"Position Phalanx near the door, maintain threat and prepare to use damage mitigation for {spell:14099}",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Lord Incendius",
		encounterID = 9017,
		portrait = 607694,
		loot = { 11764, 11765, 11766, 11767 },
		npcs = { 9017 },
		overview = {
			"Lord Incendius is a powerful fire elemental and a key enforcer within Blackrock Depths. Known for his destructive capabilities and his control over flames, Incendius is a formidable adversary. He is believed to have been summoned and bound to the fortress by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			{ heading = "Overview" },
			"Position yourself to avoid being knocked off the platform by {spell:14099}, decurse {spell:26977} from the group.",
			{
				role = DAMAGE,
				"Focus damage on Lord Incendius, position yourself to avoid being knocked off the platform by {spell:14099}. ",
			},
			{
				role = HEALER,
				"Focus healing on the tank, position yourself to avoid being knocked off the platform by {spell:14099}. Decurse {spell:26977} from the group.",
			},
			{
				role = TANK,
				"Position Lord Incendius in the middle of the platform keeping distance from the edges. Maintain threat.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Fineous Darkvire",
		encounterID = 9056,
		portrait = 607602,
		loot = { 22223, 11839, 11841, 11842 },
		npcs = { 9056 },
		overview = {
			"Fineous Darkvire is a Dark Iron dwarf known for his role as the chief architect and overseer of the detention block within Blackrock Depths. He is responsible for the imprisonment and interrogation of captives, and his methods are known to be ruthless. Fineous's allegiance to Emperor Dagran Thaurissan and his mastery of the fortress's security make him a formidable figure within the depths.",
			"Adventurers who venture into Blackrock Depths may find themselves facing Fineous Darkvire's formidable combat abilities and his role in maintaining the detention block's defenses. His presence within the fortress highlights the Dark Iron dwarves' commitment to security and their willingness to go to great lengths to protect their interests.",
			{ heading = "Overview" },
			"Fineous Darkvire can be found patrolling the Halls of Crafting. Be sure to clear all of the adds in the area before engaging him to avoid bringing additional mobs, prioritize interrupting {spell:15587}.",
			{
				role = DAMAGE,
				"Focus damage on Fineous Darkview and prioritize interrupting {spell:15587}.",
			},
			{
				role = HEALER,
				"Focus healing on the tank, tank damage can be high.",
			},
			{
				role = TANK,
				"Pull Fineous Darkvire down the ramp which is cleared of additional mobs, interrupt {spell:15587}.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Warder Stilgiss & Verek",
		encounterID = 9041,
		portrait = 607814,
		loot = { 22241, 11784, 11783, 11782, 22242, 11755, 22242 },
		npcs = { 9041 },
		overview = {
			"Warder Stilgiss is a formidable Dark Iron dwarf who serves as the chief jailer and enforcer within Blackrock Depths. He is known for his merciless treatment of prisoners and his loyalty to Emperor Dagran Thaurissan. Stilgiss is always accompanied by his loyal pet, Verek, a fierce and deadly worg.",
			{ heading = "Overview" },
			"Prioritize Warder Stilgiss then Verek, interrupt {spell:12675}, healers focus on the tank and dispel {spell:12674}.",
			{
				role = DAMAGE,
				"Focus Warder Stilgiss first then move on to Verek. Interrupt {spell:12675} if possible. Do not use Frost damaging spells against Stilgiss while {spell:15044} is active.",
			},
			{
				role = HEALER,
				"Focus healing on the tank, dispel {spell:12674} from the tank if positioning is an issue.",
			},
			{
				role = TANK,
				"Maintain threat on both Verek and Stilgiss, prioritize Stilgiss at the start. Interrupt {spell:12675} as possible.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ambassador Flamelash",
		encounterID = 9156,
		portrait = 607535,
		loot = { 11808, 11809, 11812, 11814, 11832 },
		npcs = { 9156 },
		overview = {
			"Ambassador Flamelash is a powerful fire elemental who serves as the ambassador of Ragnaros the Firelord within Blackrock Depths. Known for his control over flames and his connection to the elemental plane of fire, Flamelash is a formidable representative of the Firelord's interests. His role includes overseeing the alliance between the Dark Iron dwarves and the elemental forces.",
			{ heading = "Overview" },
			"Focus Ambassador Flamelash until the adds spawn and take them down before they reach Flamelash, healing will intensify the longer it lasts, position Ambassador Flamelash in the center of the room.",
			{
				role = DAMAGE,
				"Focus Ambassador Flamelash until adds have spawned then switch before they reach Ambassador Flamelash.",
			},
			{
				role = HEALER,
				"Healing intensifies the longer it lasts, focus down the adds before they reach Ambassador Flamelash.",
			},
			{
				role = TANK,
				"Position Ambassador Flamelash in the center of the room, damage will intensifies the longer the fight goes on.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Chest of The Seven",
		encounterID = 169243,
		portrait = 607636,
		loot = { 11920, 11921, 11922, 11923, 11925, 11926, 11927, 11929 },
		npcs = { 9034, 9035, 9036, 9037, 9038, 9039, 9040 },
		overview = {
			"The Chest of The Seven is a mysterious and heavily guarded vault within Blackrock Depths. It is rumored to contain powerful artifacts and treasures belonging to the seven Dark Iron clans of the past. The chest is protected by a complex set of traps and guardians, making it a challenging prize for those who seek its contents.",
			{ heading = "Overview" },
			"Within the Summoner's Tomb you engage with seven dwarven spirits. Each of the NPC's reflects a different class and has abilities unique to that class. The Seven in order of appearance are Hate'rel, Anger'rel, Vile'rel, Gloom'rel, Seeth'rel, Doom'rel, and Dope'rel. Utilize interrupts and stuns, healers try drink between each Dwarf spirit if you are having mana problems, tank's position each spirit into the middle of the room.",
			{
				role = DAMAGE,
				"Utilize interrupts and stuns to help make the encounter easy.",
			},
			{
				role = HEALER,
				"Try to drink in between each Dwarf spirit or use an early mana potion in hopes to get another off by the last spawn if you are having mana problems. There are some stairs in the middle of the room but they don't typically present line of sight issues.",
			},
			{
				role = TANK,
				"Pull each dwarf as they spawn from different parts of the room and bring them into the middle. Utilize interrupts and stuns when possible.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Magmus",
		encounterID = 9938,
		portrait = 607705,
		loot = { 11746, 22400, 22395, 22208, 11935 },
		npcs = { 9938 },
		overview = {
			"Magmus is a formidable fire elemental known for his role as the elemental lord of Blackrock Depths. He is a loyal servant of Ragnaros the Firelord and oversees the alliance between the Dark Iron dwarves and the elemental forces. Magmus's control over fire and his connection to the Firelord make him a formidable figure within the depths.",
			{ heading = "Overview" },
			"Stack up on the back or side of Magmus, watch out for fire and watch for {spell:15593}, tank Magmus where he stands, tuck yourself into the corner.",
			{
				role = DAMAGE,
				"Stack up on the back or side of Magmus, dodge fire and watch for the stun {spell:15593}, use self-healing if needed.",
			},
			{
				role = HEALER,
				"Focus healing on the tank, party members will be hit by sweeping fire, stay alert for {spell:24375}, which can stun and interrupt casts.",
			},
			{
				role = TANK,
				"Position Magmus where he stands, then tuck yourself into a corner to avoid the flames.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Emperor Dagran Thaurissan",
		encounterID = 9019,
		portrait = 607595,
		loot = { 22204, 22207, 11815, 11684, 11924, 11928, 11932, 11934, 11930, 11933, 11931, 12553, 12554, 12556, 12557 },
		npcs = { 8929 },
		overview = {
			"Emperor Dagran Thaurissan is the sovereign ruler of the Dark Iron dwarves within Blackrock Depths, an imposing fortress. He is a significant figure in the lore, known for his role in sparking the War of Three Hammers. Thaurissan united the Dark Iron clan and claimed leadership, seeking to unite all dwarves under his rule.",
			{ heading = "Overview" },
			"Princess Moria Bronzebeard and Emperor Dagran Thaurissan encounter, offers two strategies; save Princess Mopria by using an off-tank or interrupts, as she's fragile but assists the Emperor, or eliminate her first due to her significant damage, then defeat the Emperor. If saved she becomes friendly post-Emperor's defeat.",
			"Assign an off-tank if you chose to keep Moria alive and interrupt her abilities, if you chose to defeat her focus your damage and take her down and switch to Emperor Dagran Thaurissan.",
			{
				role = DAMAGE,
				"If saving Moria Bronzebeard, assign a damage dealer to off-tank and interrupt her abilities. If opting to defeat her, focus all damage on the princess, then switch to Emperor Dagran Thaurissan.",
			},
			{
				role = HEALER,
				"If saving Moria Bronzebeard, prepare for intensive healing for both tank and off-tank. If defeating her, use all healing cooldowns early to sustain the tank while damage dealers focus down Moria.",
			},
			{
				role = TANK,
				"If saving Moria Bronzebeard, let a melee damage dealer off-tank her using interrupts and defensive abilities. If defeating her, maintain aggro on both Moria and Dagran while damage dealers focus down Moria.",
			}
		},
		abilities = {
			
		}
	},
})
