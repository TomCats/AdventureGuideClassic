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
	overview = "The smoldering Blackrock Depths are home to the Dark Iron dwarves and their emperor, Dagran Thaurissan. Like his predecessors, he serves under the iron rule of Ragnaros the Firelord, a merciless being summoned into the world centuries ago. The presence of chaotic elementals has attracted Twilight's Hammer cultists to the mountain domain. Along with Ragnaros' servants, they have pushed the dwarves toward increasingly destructive ends that could soon spell doom for all of Azeroth.",
	{
		name = "Lord Roccor",
		encounterID = 9025,
		portrait = 607697,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Roccor is a formidable and imposing creature that guards the entrance to Blackrock Depths. This massive fire elemental is known for his fiery presence and powerful attacks. Lord Roccor's role is to defend the fortress from intruders, serving as a sentinel of the Blackrock orcs.",
			"Adventurers who seek to enter Blackrock Depths must confront Lord Roccor's blazing might and his position as the first line of defense. His presence at the entrance signifies the challenges and dangers that await within the sprawling depths of the fortress.",
			{ heading = "Overview" },
			"Lord Roccor is a boss in Blackrock Depths which patrols the northeastern ring which wrap around the Ring of Law.",
			{
				role = DAMAGE,
				"Lord Roccor has high armor, but should simply be focused down by all damage dealer classes.",
			},
			{
				role = HEALER,
				"Lord Roccor should only be dealing damage to the tank during the encounter. Be aware that {spell:6524} may interrupt your casts and silence you for 2 seconds.",
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bael'Gar is a fearsome fire elemental that lurks within Blackrock Depths. Known for his destructive capabilities and affinity for fire magic, Bael'Gar is a formidable adversary. He is believed to have been summoned and bound to the depths by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			"Adventurers who delve into Blackrock Depths must face Bael'Gar's fiery wrath and his role as a guardian of the fortress. His presence within the depths serves as a testament to the Dark Iron dwarves' mastery over elemental forces and their willingness to wield such power for their own gain.",
			{ heading = "Overview" },
			"Bael'Gar is a gaint boss off to the left from the entrance. The groups of trash before him are known to be difficult, as they come in packs, some of which are patrolling the area.",
			{
				role = DAMAGE,
				"All damage dealers should stay behind the boss at all times to avoid taking unnecessary damage from {spell:13880}. When Bael'gar spawns his adds, make taking them down a priority before switcing back to Bael'Gar.",
			},
			{
				role = HEALER,
				"Maintain focus on the tank throughout the fight, as they should be the only one taking significant damage.",
			},
			{
				role = TANK,
				"Bael'Gar needs to be tanked facing away from the group, It is recommended to run in and tank Bael'Gar where he stands, but turn him to face the wall he stands in front of. Bael'Gar will summon some sapwns throughout the fight, which need to be defeated. Try to {spell:355} them of your damage dealers, who should be prioritizing them over the boss.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Houndmaster Grebmar",
		encounterID = 9319,
		portrait = 607647,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Houndmaster Grebmar is a loyal servant of the Dark Iron dwarves and the master of a pack of ferocious hounds within Blackrock Depths. He is known for his ruthless training methods and his unwavering loyalty to Emperor Dagran Thaurissan. Grebmar's responsibility includes overseeing the fortress's canine defenders and ensuring their readiness to protect their masters.",
			"Adventurers who intrude into Blackrock Depths must face Houndmaster Grebmar's vicious hounds and his own formidable combat skills. His presence within the fortress highlights the Dark Iron dwarves' use of loyal beasts as a key component of their defenses.",
			{ heading = "Overview" },
			"Houndmaster Grebmar patrols two groups of dogs, which should be handled before engaging the boss.",
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
				"This fight is simple, focus on Houndmaster Grebmar and hold aggro.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "High Interrogator Gerstahn",
		encounterID = 9018,
		portrait = 607644,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Interrogator Gerstahn is a powerful sorceress and a prominent member of the Dark Iron clan within Blackrock Depths. She is known for her expertise in dark magic and her role in extracting information from captives. Gerstahn's allegiance to Emperor Dagran Thaurissan and her mastery of the arcane arts make her a formidable figure within the fortress.",
			"Adventurers who venture into Blackrock Depths must confront High Interrogator Gerstahn's formidable magical abilities and her position as a key enforcer of the Dark Iron dwarves' will. Her presence within the depths serves as a reminder of the depths to which the Dark Irons are willing to go to protect their interests.",
			{ heading = "Overview" },
			"High Interrogator Gerstahn drops the Prison Cell Key, a key used by the Alliance to talk with Marhsall Windsor for the Onyxia's Lair attunement. Be sure to clear the hallway of surrounding adds and patrolling mobs, it can be easy to pull Gerstahn out of the room and into the hallway for the fight.",
			{
				role = DAMAGE,
				"Damage dealers should focus output on the boss, while interrupting Gerstahn {spell:14033}. Use {spell:8143}, {spell:6346}, and {spell:18499} to mitigate the effects of {spell:13704}. Be mindful of positioning when you do get feared.",
			},
			{
				role = HEALER,
				"Keep health of all members of the group topped off as best as you can. Use {spell:8143} and {spell:6346} to keep your tank from being feared during {spell:13704}. {spell:14032} can be dispelled.",
			},
			{
				role = TANK,
				"Use a ranged pull with Line Of Sight in the doorway. Get High Interrogator Gerstahn to come out to the hallway that was clared for the encounter. Help maintain interrupts for {spell:14033} while keeping a good threat lead.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ring of Law",
		encounterID = 10096,
		portrait = 608314,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Ring of Law is a unique and mysterious arena within Blackrock Depths, overseen by the enigmatic goblin, Short John Mithril. It serves as a place of entertainment, where combatants are pitted against each other and various challengers in a battle for survival. The Ring of Law's purpose within the fortress remains shrouded in mystery, but it is a place where both combat and spectacle thrive.",
			"Adventurers who enter the Ring of Law must face a variety of opponents and challenges, all while seeking to uncover the secrets of this enigmatic arena. The presence of the Ring of Law within Blackrock Depths adds an element of intrigue and danger to the depths of the fortress.",
			{ heading = "Overview" },
			"Ring of the Law has multiple possible bosses, which could be more optomal for some compositions. The randomness of the encounter can cause issues if the group is not prepared for the possibilities.",
			{
				role = DAMAGE,
				"Gorosh the Dervish",
				"Allow for your tank to establish threat, and then begin your damage rotation. Melee damage dealers should be aware of the {spell:15589} ability, which will deal damage to targets in melee range. Ranged damage dealers should ensure they are out of {spell:15589} range always.",
				"Grizzle",
				"Allow for your tank to establish threat before you open up on damage. Ranged damage dealers should stand at mazimum range to avoid the effects of {spell:6524}.",
			},
			{
				role = HEALER,
				"Gorosh the Dervish",
				"The challenge to healing through this fight is the {spell:15708}, which will reduce the healing taken by the tank. When this debuff comes up, use whatever abilities or cooldowns you can to increase your healing output."
			},
			{
				role = TANK,
				"Gorosh the Dervish",
				"Tanking this fight is straight forward, maintain threat and allow damage dealers to focus Gorosh down. Use defensive cooldowns when you are affected by {spell:15708} to help reduce the damage you take and the need for healing spells. Be aware of when the boss uses {spell:21049}, as a combination of this and {spell:15708} will result in you taking significantly more damage."
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Pyromancer Loregrain",
		encounterID = 9024,
		portrait = 607749,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Pyromancer Loregrain is a powerful sorcerer specializing in fire magic, and he is one of the key lieutenants of the Dark Iron clan within Blackrock Depths. Known for his mastery over flames and his role in the fortress's defenses, Loregrain is a formidable adversary. He is believed to have harnessed the power of fire to aid the Dark Irons in their efforts to maintain control over the depths.",
			"Adventurers who delve into Blackrock Depths must confront Pyromancer Loregrain's fiery spells and his dedication to protecting the interests of the Dark Iron dwarves. His presence within the fortress highlights the volatile and destructive nature of the arcane arts, which the Dark Irons have harnessed for their own purposes.",
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
		name = "General Angerforge",
		encounterID = 9033,
		portrait = 607610,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"General Angerforge is a high-ranking military leader among the Dark Iron dwarves, responsible for overseeing the fortress's defenses and the training of its troops. He is known for his tactical brilliance and his unwavering loyalty to Emperor Dagran Thaurissan. Angerforge's role is crucial in ensuring the readiness of the Dark Iron forces within Blackrock Depths.",
			"Adventurers who venture into Blackrock Depths must face General Angerforge's strategic prowess and his combat skills as a leader of the Dark Iron army. His presence within the fortress represents the unwavering commitment of the Dark Iron dwarves to maintain control over this formidable stronghold.",
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
		name = "Golem Lord Argelmach",
		encounterID = 8983,
		portrait = 607618,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Golem Lord Argelmach is a master of golemcraft and a prominent figure within Blackrock Depths. He is responsible for creating and overseeing the formidable golem guardians that defend the fortress. Argelmach's expertise in constructing and controlling these powerful automatons makes him a key enforcer of the Dark Iron clan's will.",
			"Adventurers who delve into Blackrock Depths must confront Golem Lord Argelmach's creations and his own formidable combat abilities. His presence within the fortress underscores the Dark Iron dwarves' use of advanced technology and magical constructs to secure their dominion.",
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
		name = "Ribbly Screwspigot",
		encounterID = 9543,
		portrait = 607758,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ribbly Screwspigot is a goblin known for his shrewd business dealings and his establishment of the Grim Guzzler tavern within Blackrock Depths. While not a traditional boss, Ribbly plays a unique role in the fortress. He is known for his ties to various factions and his ability to broker deals even within the depths of Blackrock.",
			"Adventurers who visit the Grim Guzzler tavern may encounter Ribbly Screwspigot and find themselves caught up in his schemes or challenged to contests of skill and chance. His presence within the fortress adds an element of unpredictability and intrigue to the depths of Blackrock.",
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
		name = "Hurley Blackbreath",
		encounterID = 9537,
		portrait = 607650,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hurley Blackbreath is a formidable Dark Iron dwarf and one of the key figures in the Grim Guzzler tavern within Blackrock Depths. Known for his formidable combat skills and his penchant for violence, Hurley is a feared enforcer within the fortress. His role includes maintaining order within the tavern and dealing with unruly patrons.",
			"Adventurers who enter the Grim Guzzler may cross paths with Hurley Blackbreath and must be prepared to face his formidable combat abilities. His presence within the tavern serves as a reminder that even within a place of revelry, danger can quickly escalate.",
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
		name = "Plugger Spazzring",
		encounterID = 9499,
		portrait = 607741,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Plugger Spazzring is a goblin known for his control over the bar and various services within the Grim Guzzler tavern in Blackrock Depths. While not a traditional boss, Plugger plays a unique role in the fortress. He is a master of brewing and serves as the tavern's brewmaster, offering drinks and concoctions to patrons.",
			"Adventurers who visit the Grim Guzzler tavern may interact with Plugger Spazzring and partake in his brews. His presence within the fortress adds an element of joviality and respite from the dangers of Blackrock Depths, even if only for a short while.",
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
		name = "Phalanx",
		encounterID = 9502,
		portrait = 607740,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Phalanx is a massive fire elemental that has been bound to serve the Dark Iron dwarves within Blackrock Depths. Its fiery form and powerful attacks make it a formidable guardian of the fortress. Phalanx's role is to ensure the security of key areas within the depths and to repel intruders.",
			"Adventurers who venture into Blackrock Depths must confront Phalanx's fiery presence and its status as a guardian of the Dark Iron's domain. Its existence underscores the lengths to which the Dark Iron dwarves are willing to go to protect their interests.",
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
		name = "Lord Incendius",
		encounterID = 9017,
		portrait = 607694,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Incendius is a powerful fire elemental and a key enforcer within Blackrock Depths. Known for his destructive capabilities and his control over flames, Incendius is a formidable adversary. He is believed to have been summoned and bound to the fortress by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			"Adventurers who delve into Blackrock Depths must face Lord Incendius's fiery wrath and his role as a guardian of the fortress. His presence within the depths serves as a testament to the Dark Iron dwarves' mastery over elemental forces and their willingness to wield such power for their own gain.",
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
		name = "Fineous Darkvire",
		encounterID = 9056,
		portrait = 607602,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Fineous Darkvire is a Dark Iron dwarf known for his role as the chief architect and overseer of the detention block within Blackrock Depths. He is responsible for the imprisonment and interrogation of captives, and his methods are known to be ruthless. Fineous's allegiance to Emperor Dagran Thaurissan and his mastery of the fortress's security make him a formidable figure within the depths.",
			"Adventurers who venture into Blackrock Depths may find themselves facing Fineous Darkvire's formidable combat abilities and his role in maintaining the detention block's defenses. His presence within the fortress highlights the Dark Iron dwarves' commitment to security and their willingness to go to great lengths to protect their interests.",
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
		name = "Warder Stilgiss & Verek",
		encounterID = 9041,
		portrait = 607814,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Warder Stilgiss is a formidable Dark Iron dwarf who serves as the chief jailer and enforcer within Blackrock Depths. He is known for his merciless treatment of prisoners and his loyalty to Emperor Dagran Thaurissan. Stilgiss is always accompanied by his loyal pet, Verek, a fierce and deadly worg.",
			"Adventurers who delve into Blackrock Depths may cross paths with Warder Stilgiss and Verek, and they must be prepared to face the duo's formidable combat skills. Their presence within the fortress represents the unwavering commitment of the Dark Iron dwarves to maintaining control and security.",
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
		name = "Ambassador Flamelash",
		encounterID = 9156,
		portrait = 607535,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ambassador Flamelash is a powerful fire elemental who serves as the ambassador of Ragnaros the Firelord within Blackrock Depths. Known for his control over flames and his connection to the elemental plane of fire, Flamelash is a formidable representative of the Firelord's interests. His role includes overseeing the alliance between the Dark Iron dwarves and the elemental forces.",
			"Adventurers who venture into Blackrock Depths must confront Ambassador Flamelash's fiery spells and his affiliation with the Firelord. His presence within the fortress underscores the Dark Iron dwarves' dangerous pact with elemental entities and the volatile nature of their alliance.",
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
		name = "Chest of The Seven",
		encounterID = 169243,
		portrait = 607636,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Chest of The Seven is a mysterious and heavily guarded vault within Blackrock Depths. It is rumored to contain powerful artifacts and treasures belonging to the seven Dark Iron clans of the past. The chest is protected by a complex set of traps and guardians, making it a challenging prize for those who seek its contents.",
			"Adventurers who dare to unlock the secrets of the Chest of The Seven must navigate its defenses and overcome the guardians that protect it. The presence of this vault within Blackrock Depths adds an element of intrigue and the allure of untold riches to the depths of the fortress.",
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
		name = "Magmus",
		encounterID = 9938,
		portrait = 607705,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Magmus is a formidable fire elemental known for his role as the elemental lord of Blackrock Depths. He is a loyal servant of Ragnaros the Firelord and oversees the alliance between the Dark Iron dwarves and the elemental forces. Magmus's control over fire and his connection to the Firelord make him a formidable figure within the depths.",
			"Adventurers who delve into Blackrock Depths must confront Magmus's fiery power and his position as the elemental lord. His presence within the fortress highlights the dangerous pact between the Dark Iron dwarves and the elemental entities, as well as the volatile forces at play.",
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
		name = "Princess Moira Bronzebeard",
		encounterID = 8929,
		portrait = 607746,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Princess Moira Bronzebeard is a central figure in the lore of Blackrock Depths. She was originally a member of the Bronzebeard clan but was kidnapped and forced into marriage with Emperor Dagran Thaurissan, uniting the Dark Iron and Bronzebeard clans. Moira's presence within the fortress represents a complex political and personal history.",
			"Adventurers who venture into Blackrock Depths may encounter Princess Moira Bronzebeard and must navigate the intricate web of alliances, betrayals, and family ties that surround her. Her presence in the depths underscores the rich storytelling and political intrigue found within the fortress.",
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
		name = "Emperor Dagran Thaurissan",
		encounterID = 9019,
		portrait = 607595,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Emperor Dagran Thaurissan is the sovereign ruler of the Dark Iron dwarves within Blackrock Depths, an imposing fortress. He is a significant figure in the lore, known for his role in sparking the War of Three Hammers. Thaurissan united the Dark Iron clan and claimed leadership, seeking to unite all dwarves under his rule.",
			"Adventurers who delve into Blackrock Depths must ultimately confront Emperor Dagran Thaurissan, whose presence looms over the fortress. His character represents the history and ambitions of the Dark Iron dwarves, making him a central figure in the depths and a formidable adversary for those who dare to challenge him.",
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
