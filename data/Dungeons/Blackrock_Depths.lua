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
		npcs = { 9027, 9028, 9029, 9030, 9031, 9032 },
		overview = {
			"The Ring of Law is a unique and mysterious arena within Blackrock Depths, overseen by the enigmatic goblin, Short John Mithril. It serves as a place of entertainment, where combatants are pitted against each other and various challengers in a battle for survival. The Ring of Law's purpose within the fortress remains shrouded in mystery, but it is a place where both combat and spectacle thrive.",
			"Adventurers who enter the Ring of Law must face a variety of opponents and challenges, all while seeking to uncover the secrets of this enigmatic arena. The presence of the Ring of Law within Blackrock Depths adds an element of intrigue and danger to the depths of the fortress.",
			{ heading = "Overview" },
			"Ring of the Law has multiple possible bosses, which could be more optomal for some compositions. The randomness of the encounter can cause issues if the group is not prepared for the possibilities.",
			{
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 9024 },
		overview = {
			"Pyromancer Loregrain is a powerful sorcerer specializing in fire magic, and he is one of the key lieutenants of the Dark Iron clan within Blackrock Depths. Known for his mastery over flames and his role in the fortress's defenses, Loregrain is a formidable adversary. He is believed to have harnessed the power of fire to aid the Dark Irons in their efforts to maintain control over the depths.",
			"Adventurers who delve into Blackrock Depths must confront Pyromancer Loregrain's fiery spells and his dedication to protecting the interests of the Dark Iron dwarves. His presence within the fortress highlights the volatile and destructive nature of the arcane arts, which the Dark Irons have harnessed for their own purposes.",
			{ heading = "Overview" },
			"Pyromancer Loregrain spawns next to the Shrine of Thaurissan, which can be approached from either the opposite side of the Ring of Law, from Argelmach, or by walking down the hallway beyond the coffer room. {npc:9024} drops the enchanting recipe for {spell:13898}.",
			{
				role = DAMAGE,
				"Damage dealers should maximize their damage on {npc:9024}, however they should swap and focus to the {spell:15038} when it is summoned. Fire Mages and Warlocks should avoid using Fire spells when the boss has his {spell:15041} up. If you are a Paladin, use your {spell:19891} here.",
			},
			{
				role = HEALER,
				"Focus healing on the tank who should be the only one taking the primary damage. Group damage may spike from {spell:15038}, this will need to be focused to not encure the extra damage to the party. Keep everyone healed up, if you're a Paladin, use your {spell:19891} here.",
			},
			{
				role = TANK,
				"Tank {npc:9024} where he stands, facing away from the group. Maintain threat and allow for your damage dealers to focus him down. If you are a Paladin, use your {spell:19891} here.",
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
		npcs = { 9033 },
		overview = {
			"General Angerforge is a high-ranking military leader among the Dark Iron dwarves, responsible for overseeing the fortress's defenses and the training of its troops. He is known for his tactical brilliance and his unwavering loyalty to Emperor Dagran Thaurissan. Angerforge's role is crucial in ensuring the readiness of the Dark Iron forces within Blackrock Depths.",
			"Adventurers who venture into Blackrock Depths must face General Angerforge's strategic prowess and his combat skills as a leader of the Dark Iron army. His presence within the fortress represents the unwavering commitment of the Dark Iron dwarves to maintain control over this formidable stronghold.",
			{ heading = "Overview" },
			"General Angerforge inflicts moderate damage and summons multiple low-health adds to aid him during the fight. He has limited abilities, including a stacking {spell:15572} effect. The summoned adds are fragile and can be efficiently dispatched with Area of Effect spells from casters or by physical damage dealers using cleave attacks. The most challenging part of the encounter is the inital pull, with most groups opting for a ranged pull to lure him to the higher-level platform where you entered. This strategy allows for a delay between add spawns and their engagement with the group.",
			{
				role = DAMAGE,
				"Allow your tank to use a ranged abilitiy to pull {npc:9033} up to the room above where {npc:9033} stands. Once the tank has established threat, begin your damage rotation. Once the adds spawn, use AoE or multi target damaging abilities to quickly down them. If the boss is already at low health, focus {npc:9033} down and clean up the adds afterwards.",
			},
			{
				role = HEALER,
				"Healing this encounter should not be too challenging. Keep the tank in range and line of sight while they pull, and then stack up with range damage dealers for the rest of the encounter.",
			},
			{
				role = TANK,
				"Use a ranged ability from the top of the ramp to pull {npc:9033}. {npc:9033} should run up to meet you on the platform.",
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
		npcs = { 8983 },
		overview = {
			"Golem Lord Argelmach is a master of golemcraft and a prominent figure within Blackrock Depths. He is responsible for creating and overseeing the formidable golem guardians that defend the fortress. Argelmach's expertise in constructing and controlling these powerful automatons makes him a key enforcer of the Dark Iron clan's will.",
			"Adventurers who delve into Blackrock Depths must confront Golem Lord Argelmach's creations and his own formidable combat abilities. His presence within the fortress underscores the Dark Iron dwarves' use of advanced technology and magical constructs to secure their dominion.",
			{ heading = "Overview" },
			"Golem Lord Argelmach is located in the Machine Workshop of Blackrock Depths. Argelmach is accompanied by two constructs who are to be defeated before moving on to Argelmach. In the room that {npc:8983} is found in, there can also be found some valuable Engineering Schematics on the ground.",
			{
				role = DAMAGE,
				"Focus damage on the two constructs before attcking {npc:8983}, then focus on {npc:8983}",
			},
			{
				role = HEALER,
				"Healing is more intensive intially with the adds. Keep everyone alive but conserve mana so you are not out of mana by the end of the fight. {npc:8983} can do extra damage to damage dealers with his {spell:15507}.",
			},
			{
				role = TANK,
				"Hold threat on the two constructs while the damage dealers finish them off, then focus on {npc:8983}.",
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
		npcs = { 9543 },
		overview = {
			"Ribbly Screwspigot is a goblin known for his shrewd business dealings and his establishment of the Grim Guzzler tavern within Blackrock Depths. While not a traditional boss, Ribbly plays a unique role in the fortress. He is known for his ties to various factions and his ability to broker deals even within the depths of Blackrock.",
			"Adventurers who visit the Grim Guzzler tavern may encounter Ribbly Screwspigot and find themselves caught up in his schemes or challenged to contests of skill and chance. His presence within the fortress adds an element of unpredictability and intrigue to the depths of Blackrock.",
			{ heading = "Overview" },
			"Ribbly Screwspigot is an optional boss located in the Grim Guzzler in Blackrock Depths. He is encountered with three cronies.",
			{
				role = DAMAGE,
				"Focus your damage output on {npc:9543}, then move on to the adds.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank, as they will be taking damage from {npc:9543} as well as the cronies.",
			},
			{
				role = TANK,
				"Maintain threat on {npc:9543} and his conries using Area of Effect abilities. Your damage dealers should focus down {npc:9543}, then move onto the adds.",
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
		npcs = { 9537 },
		overview = {
			"Hurley Blackbreath is a formidable Dark Iron dwarf and one of the key figures in the Grim Guzzler tavern within Blackrock Depths. Known for his formidable combat skills and his penchant for violence, Hurley is a feared enforcer within the fortress. His role includes maintaining order within the tavern and dealing with unruly patrons.",
			"Adventurers who enter the Grim Guzzler may cross paths with Hurley Blackbreath and must be prepared to face his formidable combat abilities. His presence within the tavern serves as a reminder that even within a place of revelry, danger can quickly escalate.",
			{ heading = "Overview" },
			"Hurley Blackbreath is an optional boss located in the Grim Guzzler, and is the objective of unique Alliance and Horde quests which request you to defeat him in order to obtain the Lost Thunderbrew Recipe, returning it to either Kharanos or Kargath accordingly. To summon {npc:9537}, being breaking kegs of Thunderbrew in the storage room of the bar (on the lower level). {npc:9537} is not challenging, but might give your group some trouble if you do not utilize any crowd control effects on the adds he comes out with. The majority of the mobs in the Grim Guzzler are Neutral. You do NOT want to engage them, keep this in mind with use of Area of Effect abilities or {spell:20735}.",
			{
				role = DAMAGE,
				"Utilize crowd control abilities on the adds, like {spell:26580}, {spell:118}, {spell:21060}, etc. then focus down {npc:9537}. Once he is defeated bring the adds down in a methodical order.",
			},
			{
				role = HEALER,
				"Healing this fight is not incredibly hard, assuming your group has utilized crowd control abilities in an organized way. Focus your healing on the tank, and be aware that other group members may pick up threat on the adds and take some damage. Keep everyones health up as much as possible.",
			},
			{
				role = TANK,
				"Tank {npc:9537} in a corner of the room away from the door in attempts to not engage any of the neutral mobs in the other room by accident. As the adds come in the room, your damage dealer classes should crowd control them. establish threat and keep their attention while your damage dealers focus down {npc:9537}. Your priority is to keep any unmanaged adds off your healer.",
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
		npcs = { 9499 },
		overview = {
			"Plugger Spazzring is a goblin known for his control over the bar and various services within the Grim Guzzler tavern in Blackrock Depths. While not a traditional boss, Plugger plays a unique role in the fortress. He is a master of brewing and serves as the tavern's brewmaster, offering drinks and concoctions to patrons.",
			"Adventurers who visit the Grim Guzzler tavern may interact with Plugger Spazzring and partake in his brews. His presence within the fortress adds an element of joviality and respite from the dangers of Blackrock Depths, even if only for a short while.",
			{ heading = "Overview" },
			"Plugger Spazzring is an optional encounter located in the Grim Guzzler. Spazzring uses Warlock type abilities which can not be interrupted or slowed, and is immune to stun. Engaging Spazzring will cause the entire bar to switch from neutral to hostile, so engage him at your own risk or clear bar patrons.",
			{
				role = DAMAGE,
				"Focus all your damage on {npc:9499} and get him down quicky, you can not interrupt any of his abilities. Mages and Druids need to decurse party members affected by {spell:13338}.",
			},
			{
				role = HEALER,
				"Maintain healing on your tank, as they are the ones who should be taking damage from {npc:9499}. Dispel the Damage Over Time effect from {spell:13338}. Druids should remove any {spell:13338} from party members.",
			},
			{
				role = TANK,
				"Tank {npc:9499} away from other mobs in the Grim Guzzler who could be hit with any Area of Effects abilities the group is using.",
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
		npcs = { 9502 },
		overview = {
			"Phalanx is a massive fire elemental that has been bound to serve the Dark Iron dwarves within Blackrock Depths. Its fiery form and powerful attacks make it a formidable guardian of the fortress. Phalanx's role is to ensure the security of key areas within the depths and to repel intruders.",
			"Adventurers who venture into Blackrock Depths must confront Phalanx's fiery presence and its status as a guardian of the Dark Iron's domain. Its existence underscores the lengths to which the Dark Iron dwarves are willing to go to protect their interests.",
			{ heading = "Overview" },
			"Phalanx guards the exit to the Grim Guzzler, opposite the bar on the top level. To engage Phalanx, buy some Dark Iron Ale Mugs from the vendor Plugger Spazzring, and turn them in to Private Rocknot. Once you have completed three turn ins requiring six Dark Iron Ale, Rocknot will enrage and our construct bouncer Phalanx will attempt to quell Rocknots rage. The door is broken open, and our fight with Phalanx begins. The majority of the mobs in the Grim Guzzler are Neutral and you do NOT want to engage them. Keep this in mind with the use of Area of Effect abilities or Multi-Shot.",
			{
				role = DAMAGE,
				"Focus your damage on {npc:9502} while being careful not to overthrow your tank's position on the threat table. Stay out of melee range if you are a ranged damage dealers to avoid {spell:15588} damage, and use mitigation abilities like {spell:543} to keep you from taking too much damage from {spell:15587}. The majority of the mobs in the Grim Guzzler are neutral - and you do NOT want to engage them. Keep this in mind with the use of Area of Effect abilities or Multi Shot.",
			},
			{
				role = HEALER,
				"{npc:9502} hits pretty hard, especially with his {spell:15591}. This ability should only be used on the tank, so you can focus your healing spells on them during the encounter. The entire group will take some damage from {spell:15587}, and melee will take damage from {spell:15588}. Be aware of everyone's health levels, and do your best to keep everyone at 100% throughout the fight.",
			},
			{
				role = TANK,
				"Tanking {npc:9502} involves positioning him near the door, mostly to avoid the off chance that any patrons will become involved. From the tanking perspective, you should only need to focus on maintaining threat, and prepare any damage mitigation cooldowns for {spell:15591}.",
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
		npcs = { 9017 },
		overview = {
			"Lord Incendius is a powerful fire elemental and a key enforcer within Blackrock Depths. Known for his destructive capabilities and his control over flames, Incendius is a formidable adversary. He is believed to have been summoned and bound to the fortress by the Dark Iron dwarves, harnessing his fiery power for their own purposes.",
			"Adventurers who delve into Blackrock Depths must face Lord Incendius's fiery wrath and his role as a guardian of the fortress. His presence within the depths serves as a testament to the Dark Iron dwarves' mastery over elemental forces and their willingness to wield such power for their own gain.",
			{ heading = "Overview" },
			"Lord Incendius is a fire elemental located at the Black Anvil on a platform surrounded by Lava. {npc:9017} can be approached from the Hall of Crafting, or from across the bridge from Bael'gar's region of the instance. Be extremely careful not to get knocked off the platform by {spell:14099} as there is not another way back up.",
			{
				role = DAMAGE,
				"Focus your damage output on {npc:9017} once the tank has established threat. Position yourself somewhere away from the edge of the platform to avoid being knocked off by {spell:14099}. Try your best to avoid {npc:9017} Area of Effect abilities, but they won't kill you if you get hit by one every now and then, If you can decurse then make sure that the tank and damage dealers are getting {spell:26977} removed off them before too many stacks are applied.",
			},
			{
				role = HEALER,
				"All members of the part will take damage throughout the fight, so be aware of who needs healing at what time. The tank should remain your main focus throughout the encounter. Position yourself somewhere away from the edge of the platform to avoid being knocked off by {spell:14099}. Try your best to avoid {npc:9017}'s Area of Effect abilities, but they won't kill you if you get hit by one every now and then. If you can decurse then make sure that the tank especially and damage dealer if you can afford it are getting {spell:26977} removed off them before too many stacks are applied.",
			},
			{
				role = TANK,
				"Tank {npc:9017} in the middle of the platform, keeping distance from the edges. Beyond that, this fight does not requrie more from you than to hold threat.",
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
		npcs = { 9056 },
		overview = {
			"Fineous Darkvire is a Dark Iron dwarf known for his role as the chief architect and overseer of the detention block within Blackrock Depths. He is responsible for the imprisonment and interrogation of captives, and his methods are known to be ruthless. Fineous's allegiance to Emperor Dagran Thaurissan and his mastery of the fortress's security make him a formidable figure within the depths.",
			"Adventurers who venture into Blackrock Depths may find themselves facing Fineous Darkvire's formidable combat abilities and his role in maintaining the detention block's defenses. His presence within the fortress highlights the Dark Iron dwarves' commitment to security and their willingness to go to great lengths to protect their interests.",
			{ heading = "Overview" },
			"Fineous Darkvire can be found patrolling the Halls of Crafting. Many groups will seek him out to try and obtain his Senior Designer's Pantaloons, which are pre-raid Best in Slot for healing classes. Be sure to clear all of the adds in the area before engaging him to avoid bringing additional mobs into the {npc:9056} encounter.",
			{
				role = DAMAGE,
				"Make it a priority to interrupt {npc:9056}'s {spell:15587} in order to keep the fight nice and short. Allow for the tank to maintain threat - Darkvire hits pretty hard and you don't want to take unnecessary damage.",
			},
			{
				role = HEALER,
				"Tank damage can be high during the encounter. Focus your healing on the tank. Some overhealing is fine if it helps avoid accidental deaths.",
			},
			{
				role = TANK,
				"Pull {npc:9056} down the ramps to an area you have cleared of additional mobs. Use any interrupt abilities to prevent him from healing with {spell:15587}. Make good use of defensive cooldowns to help your healer.",
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
		npcs = { 9041 },
		overview = {
			"Warder Stilgiss is a formidable Dark Iron dwarf who serves as the chief jailer and enforcer within Blackrock Depths. He is known for his merciless treatment of prisoners and his loyalty to Emperor Dagran Thaurissan. Stilgiss is always accompanied by his loyal pet, Verek, a fierce and deadly worg.",
			"Adventurers who delve into Blackrock Depths may cross paths with Warder Stilgiss and Verek, and they must be prepared to face the duo's formidable combat skills. Their presence within the fortress represents the unwavering commitment of the Dark Iron dwarves to maintaining control and security.",
			{ heading = "Overview" },
			"Warder Stilgiss spawns with Verek, the hound. Focus on dealing with Stilgiss first, then move on to Verek.",
			{
				role = DAMAGE,
				"Damage {npc:9041} first, then move on to {npc:9042}. Interrupt {spell:12675} if possible. Do not use Frost damaging spells against Stilgiss, as he will absorb the damage using {spell:15044}.",
			},
			{
				role = HEALER,
				"Maintain healing on the tank while aware of which other party members are taking damage. Dispel {spell:12674} from the tank if positioning is an issue.",
			},
			{
				role = TANK,
				"Maintain threat on both Verek and Stilgiss during this encounter. Warder Stigiss will be priority threat at the start. Interrupt {spell:12675} as possible.",
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
		npcs = { 9156 },
		overview = {
			"Ambassador Flamelash is a powerful fire elemental who serves as the ambassador of Ragnaros the Firelord within Blackrock Depths. Known for his control over flames and his connection to the elemental plane of fire, Flamelash is a formidable representative of the Firelord's interests. His role includes overseeing the alliance between the Dark Iron dwarves and the elemental forces.",
			"Adventurers who venture into Blackrock Depths must confront Ambassador Flamelash's fiery spells and his affiliation with the Firelord. His presence within the fortress underscores the Dark Iron dwarves' dangerous pact with elemental entities and the volatile nature of their alliance.",
			{ heading = "Overview" },
			"Ambassador Flamelash is the next mandatory boss in the instance. As the only Flame Salamander-esque Naga in the instance, he is a preview to the more powerful enemies we encounter below, in the Molten Core. The encounter is essentially a damage race - Flamelash summons adds throughout the fight who spans at the corners of the room. They slowly make their way towards their master and when they reach him they will him a damage increasing buff. {npc:9156} drops Fire Resistance gear, and a powerful trinket for caster damage dealers.",
			{
				role = DAMAGE,
				"As you engage {npc:9156}, allow for the tank to initiate threat and gain a healthy lead on the rest of the group. Begin your damage rotation until the adds begin to spawn. The adds do not have very much health, and should be focused down before they manage to reach {npc:9156}.",
			},
			{
				role = HEALER,
				"Healing this fight becomes more difficult as time goes on; when adds reach the boss he deals more damage. To deal with this, try to conserve mana and encourage your damage dealers to focus the adds down.",
			},
			{
				role = TANK,
				"Engage {npc:9156} where he stands, and get a strong lead on threat. Beyond this, thanking the fight does not require you to do anything more than maintaining your position on the threat table. {npc:9156} will deal more damage as the fight goes on, as he becomes more powerful when adds reach him. Save your damage mitigation cooldowns for the end of the fight, when he is dealing the most damage.",
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
		npcs = { 9034, 9035, 9036, 9037, 9038, 9039, 9040 },
		overview = {
			"The Chest of The Seven is a mysterious and heavily guarded vault within Blackrock Depths. It is rumored to contain powerful artifacts and treasures belonging to the seven Dark Iron clans of the past. The chest is protected by a complex set of traps and guardians, making it a challenging prize for those who seek its contents.",
			"Adventurers who dare to unlock the secrets of the Chest of The Seven must navigate its defenses and overcome the guardians that protect it. The presence of this vault within Blackrock Depths adds an element of intrigue and the allure of untold riches to the depths of the fortress.",
			{ heading = "Overview" },
			"Within the Summoner's Tomb you engage with seven dwarven spirits. Each of the NPC's reflects a different class and has abilities unique to that class. The Seven in order of appearance are named: {npc:9034}, {npc:9035}, {npc:9036}, {npc:9037}, {npc:9038}, {npc:9039}, and {npc:9040}. During the encounter you will fight each of the spirits one at a time. They are not particularly challegning but the encounter can last a long time. If your group's damage is low, you may have one dwarf spawn before the previous is already down. If you kill the spirits quickly, you may have enough time to exist combat to use food and water. The Chest of the Seven is unlocked after all seven dwarves are defeated, and holds some valuable loot. In particular, the Hammer of Grace is a commonly sought after pre-raid Best in Slot healing mace. ",
			{
				role = DAMAGE,
				"Allow the tank to engage whichever spirit spawns, then being damaging the target without generating more threat than the tank. Use abilities like interrupts and stuns whenever possible to help make the encounter easy. Your shorter cooldowns should be available again during the fight. {npc:9039} is the Warlock type Dwarf and summons some demon adds. Focus down the boss then switch to the adds. Warlocks can utilize {spell:710} in an emergency.",
			},
			{
				role = HEALER,
				"This fight should not be too healing intensive at any time, but you may run out of mana due to the length of the encounter. Try to drink in between each Dwarf spirit, or use an early mana poistion in hopes to get another off by the last spawn. There are some stairs in the middle of the room, but they don't typically present line of sight issues.",
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 9938 },
		overview = {
			"Magmus is a formidable fire elemental known for his role as the elemental lord of Blackrock Depths. He is a loyal servant of Ragnaros the Firelord and oversees the alliance between the Dark Iron dwarves and the elemental forces. Magmus's control over fire and his connection to the Firelord make him a formidable figure within the depths.",
			"Adventurers who delve into Blackrock Depths must confront Magmus's fiery power and his position as the elemental lord. His presence within the fortress highlights the dangerous pact between the Dark Iron dwarves and the elemental entities, as well as the volatile forces at play.",
			{ heading = "Overview" },
			"Magmus is a Fire Giant who stands at the end of a glame-blasting hallway after the Lyceum. Avoid the fires that fill the room, looking to the sides to see where they are coming from. The trick during the encounter is all in the positioning. If the group can avoid the flames in a nice stack behind the boss while the tank sits in the corner you should find success.",
			{
				role = DAMAGE,
				"Stack up on the back or side of {npc:9938} and maintain steady damage output while avoiding the rows of fire behind you. Be aware of the stun from {spell:15593}, and use any self healing capabilities you have to take stress off of your healer.",
			},
			{
				role = HEALER,
				"Your main focus during the fight with {npc:9938} is the tank, who will be taking consistent damage. The reason that other members of your group will take damage is from being in the path of the fire that sweeps across the room. Hopefully everyone is positioned well, but if a group member gets hit by the fire try to keep them up. The flames deal an incredible amount of damage. Be aware that {spell:24375} will stun you if you are in range, and interrupt you if you are mid-cast.",
			},
			{
				role = TANK,
				"This fight is about positioning. Run up to {npc:9938} and pull him to the right. Tuck yourself into a corner to avoid the flames, leaving room for your party members to find a safe place on the other side of {npc:9938}.",
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
		npcs = { 9019 },
		overview = {
			"Princess Moira Bronzebeard is a central figure in the lore of Blackrock Depths. She was originally a member of the Bronzebeard clan but was kidnapped and forced into marriage with Emperor Dagran Thaurissan, uniting the Dark Iron and Bronzebeard clans. Moira's presence within the fortress represents a complex political and personal history.",
			"Adventurers who venture into Blackrock Depths may encounter Princess Moira Bronzebeard and must navigate the intricate web of alliances, betrayals, and family ties that surround her. Her presence in the depths underscores the rich storytelling and political intrigue found within the fortress.",
			{ heading = "Overview" },
			"Princess Moria Bronzebear and Emperor Dagran Thaurissan is unquestionably, the most difficult encounter of the dungeon, so be prepared for a fun fight. There are two strategies to choose from, you can either save Princess Moria Bronzebeard, or defeat her. If you are choosing to save Princess Moira Bronzebeard, then your strategy is to keep her occupied with an off-tank, or someone who can interrupt her casts. Because she can be fairly squishy. Further, she assists Emperor Dagran Thaurissan within the fight, so you can't allow her to simply free cast the entire encounter. As soon as Emperor Dagran Thaurissan has been defeated, she breaks free from the mind control she was under to become friendly. However, if your intention is to kill Princess Moira Bronzebeard, then you burn her before killing Emperor Dagran Thaurissan. Make sure you have some form of interrupt because she can do a fair amount of damage, which can be hard to heal through coupled with the damage output of Emperor Dagran Thaurissan.",
			{
				role = DAMAGE,
				"If your group chooses to save {npc:8929}, then one damage dealer will off tank her. It is important to interrupt her casting abilities, so a Rogue or Warrior are optiomal. If you have chosen to defeat the princess, then make her the focus for all damage dealers, then switch over to {npc:} when she is down.",
			},
			{
				role = HEALER,
				"If you are saving {npc:8929}, healing this fight will be strenuous as both the tank and off tank will need your attention. If your group has chosen to defeat the princess, use all healing cooldowns at the beginning of the fight in order to keep your tank up while damage dealers bring her down.",
			},
			{
				role = TANK,
				"Allow a melee damage dealer to off tank {npc:8929} if you intend to save her. A Rogue or Warrior are a good choice, and can use their interrupts to keep her from healing too much or using her other abilities. These two classes also have some defensive abilities they can employ. If you are off tanking the Princess, you can kite her up the ramp to the throne and back off the ledge a few times to try and keep her running around and not using her abilities. This can give you a little reprieve from taking as much damage too. Tanking {npc:} is not too challenging. Just pull him away from the rest of the group",
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
		npcs = { 8929 },
		overview = {
			"Emperor Dagran Thaurissan is the sovereign ruler of the Dark Iron dwarves within Blackrock Depths, an imposing fortress. He is a significant figure in the lore, known for his role in sparking the War of Three Hammers. Thaurissan united the Dark Iron clan and claimed leadership, seeking to unite all dwarves under his rule.",
			"Adventurers who delve into Blackrock Depths must ultimately confront Emperor Dagran Thaurissan, whose presence looms over the fortress. His character represents the history and ambitions of the Dark Iron dwarves, making him a central figure in the depths and a formidable adversary for those who dare to challenge him.",
			{ heading = "Overview" },
			"Princess Moria Bronzebear and Emperor Dagran Thaurissan is unquestionably, the most difficult encounter of the dungeon, so be prepared for a fun fight. There are two strategies to choose from, you can either save Princess Moria Bronzebeard, or defeat her. If you are choosing to save Princess Moira Bronzebeard, then your strategy is to keep her occupied with an off-tank, or someone who can interrupt her casts. She assists Emperor Dagran Thaurissan within the fight, so you can't allow her to simply free cast the entire encounter. As soon as Emperor Dagran Thaurissan has been defeated, she breaks free from the mind control she was under to become friendly. However, if your intention is to defeat Princess Moira Bronzebeard, then you focus her down before switching to Emperor Dagran Thaurissan. Make sure you have some form of interrupt because she can do a fair amount of damage, which can be hard to heal through coupled with the damage output of Emperor Dagran Thaurissan.",
			{
				role = DAMAGE,
				"If your group chooses to save {npc:8929}, then one damage dealer will off tank her. It is important to interrupt her casting abilities, so a Rogue or Warrior are optiomal. If you have chosen to defeat the princess, then make her the focus for all damage dealers, then switch over to {npc:} when she is down.",
			},
			{
				role = HEALER,
				"If you are saving {npc:8929}, healing this fight will be strenuous as both the tank and off tank will need your attention. If your group has chosen to defeat the princess, use all healing cooldowns at the beginning of the fight in order to keep your tank up while damage dealers bring her down.",
			},
			{
				role = TANK,
				"Allow a melee damage dealer to off tank {npc:8929} if you intend to save her. A Rogue or Warrior are a good choice, and can use their interrupts to keep her from healing too much or using her other abilities. These two classes also have some defensive abilities they can employ. If you are off tanking the Princess, you can kite her up the ramp to the throne and back off the ledge a few times to try and keep her running around and not using her abilities. This can give you a little reprieve from taking as much damage too. Tanking {npc:} is not too challenging. Just pull him away from the rest of the group",
			}
		},
		abilities = {
			
		}
	},
})
