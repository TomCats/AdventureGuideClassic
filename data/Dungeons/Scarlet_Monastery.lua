--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Scarlet Monastery",
	instanceID = 316,
	thumbnail = 608214,
	icon = 136354,
	splash = 608253,
	mapID = 1004,
	overview = "The Crusade's fanatical leaders direct their followers from the Scarlet Cathedral, at the heart of the monastery grounds. This heavily guarded location functions as the order's headquarters, and some of the most zealous and intolerant crusaders roam the halls of this once-hallowed place.",
	{
		name = "Interrogator Vishas",
		encounterID = 3983,
		portrait = 607662,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Interrogator Vishas is a sadistic member of the Scarlet Crusade known for his brutal methods of extracting information from prisoners. He plays a key role within the Scarlet Monastery, using his dark techniques to interrogate and torment those captured by the Crusade. Vishas's presence in the Monastery highlights the ruthless and fanatical nature of the Scarlet Crusade as they seek to eradicate all perceived threats.",
			"Vishas's reputation for cruelty and his position as an enforcer of the Scarlet Crusade's ideology make him a fearsome adversary for those who intrude upon the Monastery. His actions serve as a reminder of the depths to which the Crusade is willing to go in their quest to purge the land of perceived heresy.",
			{ heading = "Overview" },
			"Interrogator Vishas is the first boss you will encounter in Scarlet Monastery Graveyard. Vishas is accompanied by several other members of the Scarlet Crusade that need to be defeated first before engaging him.",
			{
				role = DAMAGE,
				"This fight is a simple encounter, you should do as much damage as possible while watching your threat. Damage dealers should focus on killing the adds before engaging Interrogator Vishas.",
			},
			{
				role = HEALER,
				"Focus healing on your tank, but be ready to quickly heal any damage dealer that pulls aggro.",
			},
			{
				role = TANK,
				"Use area of effect abilities to generate threat on all the adds that accompany Interrogator Vishas. Mark adds with Skull and Cross and prioritize threat on those targets.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Bloodmage Thalnos",
		encounterID = 4543,
		portrait = 607557,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bloodmage Thalnos is a formidable spellcaster within the Scarlet Crusade, specializing in the destructive power of fire magic. He serves as a key member of the Crusade within the Scarlet Monastery, using his fiery abilities to incinerate any who oppose the order. Thalnos's presence in the Monastery symbolizes the fanatical devotion of the Scarlet Crusade and their willingness to employ dark magic to further their cause.",
			"Thalnos's mastery of fire magic and his role as a prominent member of the Scarlet Crusade's leadership make him a dangerous foe for those who venture into the Monastery. His existence serves as a reminder of the formidable magical forces that support the Crusade's mission.",
			{ heading = "Overview" },
			"Bloodmage Thalnos is the last boss of Scarlet Monastery Graveyard. He can be found at the very bottom of the crypt, he is also not accompanied by any other adds, but in order to reach him you will have to clear the entire crypt.",
			{
				role = DAMAGE,
				"This is a simple encounter, you should do as much damage as possible while watching your threat. Bloodmage Thalnos casts {spell:9613} and {spell:12470}, make sure you are out of range of Thalnos's {spell:12470}. ",
			},
			{
				role = HEALER,
				"Be sure to stand as far away from the boss as possible to avoid getting hit by {spell:8814} and {spell:12470}.",
			},
			{
				role = TANK,
				"This is a simple encounter, you should focus on doing as much threat as possible on Thalnos, so the damage dealers can focus all their damage on Thalnos. Make sure to move out of {spell:8814}.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Houndmaster Loksey",
		encounterID = 3974,
		portrait = 607648,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Houndmaster Loksey is a ruthless enforcer of the Scarlet Crusade who commands the ferocious hunting hounds within the Scarlet Monastery. His skill in training and controlling the beasts is matched only by his unwavering loyalty to the Crusade's cause. Loksey's presence in the Monastery represents the Crusade's brutal methods and their use of loyal animals as weapons.",
			"Loksey's mastery over the hunting hounds and his role as a key figure within the Scarlet Crusade's hierarchy make him a formidable adversary for those who enter the Monastery. His position highlights the Crusade's willingness to employ both human and beast to maintain their control.",
			{ heading = "Overview" },
			"Houndmaster Loksey is the first boss of Scarlet Monastery Library. He is accompanied by three Scarlet Tracking Hounds.",
			{
				role = DAMAGE,
				"This is a simple encounter, you should do as much damage as possible while watching your threat. Houndmaster Loksey is accompanied by a pack of Scarlet Hounds that need to be focused first. Area of effect spells and abilities are highly useful in this encounter, but be sure to give your tank some time to generate threat before focusing all your damage. If your class has an offensive dispel such as {spell:1333} or {spell:15090}, use it to dispel the {spell:6742} buff on Loksey and his hounds.",
			},
			{
				role = HEALER,
				"This fight is a simple encounter, so you should focus your healing on the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive. Houndmaster Loksey deals high amounts of damage and the fight is relatively long, so amanage your mana. If you are a shaman or a priest, use {spell:1333} or {spell:15090} to remove the {spell:6742} effect off both the boss and his hounds.",
			},
			{
				role = TANK,
				"Mark the hounds with a Skull and Cross and prioritize threat on those targets. Use any area of effect abilities you have to maintain threat on all of the hounds, and Loksey. Beware that when Loksey and his hounds are under the effect of {spell:6742}, they will do a lot of damage. Use defensive cooldowns, health potions and healthstones if you get low.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Arcanist Doan",
		encounterID = 6487,
		portrait = 607545,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Arcanist Doan is a powerful mage within the Scarlet Crusade who guards the library of the Scarlet Monastery. His extensive knowledge of arcane magic and his dedication to the Crusade's ideals have made him a crucial figure within the order. Doan's presence in the Monastery reflects the Scarlet Crusade's use of magic to further their goals.",
			"Doan's mastery of arcane spells and his role as the guardian of the library make him a formidable foe for those who explore the Monastery. His existence serves as a reminder of the formidable magical forces that support the Scarlet Crusade.",
			{ heading = "Overview" },
			"Arcanist Doan is the last boss of Scarlet Monastery Library. Doan is not accompanied by any adds but in order to reach him you must clear the instance to get to his chamber.",
			{
				role = DAMAGE,
				"This encounter requires tactical maneuvering, mana management, and a great deal of caution. Arcanist Doan possesses several abilities that will hinder damage dealers. Doan's abilities cannot be interrupted. Damage dealers along with the tank and healer should get out of the room when Arcanist Doan casts {spell:9435} and his next to the walls of his chamber. Arcanist Doan can be mana drained in order to stop him from casting his spells.",
			},
			{
				role = HEALER,
				"This encounter requires tactical maneuvering, mana management, and a great deal of caution. Arcanist Doan will frequently apply {spell:8988} on the players. Keep your party's health topped up at all times while managing your mana. When Arcanist Doan casts {spell:9435}, move outside his room and hide next to the walls of his chamber. Arcanist Doan's {spell:13323} can be avoided if you place yourself 30 yards away from him.",
			},
			{
				role = TANK,
				"This encounter requires tactical maneuvering, cooldown management, and a great deal of caution. Arcanist Doan is not accompanied by any adds but poses great danger alone, use your defensive cooldowns cautiously. Beware of losing threat, as Arcanist Doan can easily kill your damage dealers. When Arcanist Doan casts {spell:9435}, move outside his room and hide next to the walls of his chamber.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Herod",
		encounterID = 3975,
		portrait = 607640,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Herod is a fearsome warrior who has earned a reputation for his deadly combat skills and his loyalty to the Scarlet Crusade. He serves as a champion and gladiator within the Scarlet Monastery, entertaining the Crusade's followers with brutal combat displays. Herod's presence in the Monastery represents the Crusade's martial prowess and their use of champions to maintain control.",
			"Herod's combat abilities and his role as a gladiator make him a formidable adversary for those who venture into the Monastery. His position highlights the Scarlet Crusade's use of spectacle and violence to maintain the devotion of their followers.",
			{ heading = "Overview" },
			"Herod is the only boss enounter of Scarlet Monastery Armory. Herod is not accompanied by any adds but in order to reach him you need to clear the entire instance. Upon his death, a large group of Scarlet Monastery Acolytes will rush to his chambers so be prepared to continue combat after defeating him.",
			{
				role = DAMAGE,
				"This is a simple encounter, you should do as much damage as possible while watching your threat. While casting {spell:8989}, Herod is immune to damage while also dealing heavy area of effect damage to anyone around him. As a melee damage dealer, you should move a few yards from him to avoid taking unnecessary damage. After Herod has been defeated, Scarlet Crusaders will storm the room. Allow your tank a few moments to generate threat on them before using any area of effect abilities.",
			},
			{
				role = HEALER,
				"This is a simple encounter, you should focus your healing on the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive. After Herod has been defeated, Scarlet Crusaders will storm the room. Allow your tank a few moments to generate threat on them before healing.",
			},
			{
				role = TANK,
				"This is a simple encounter, you should focus on doing as much threat as possible on Herod, so the damage dealers can focus all of their damage onto Herod. You should move a few yards from him when he is casting {spell:8989} to avoid taking unnecessary damage. After Herod has been defeated, Scarlet Crusaders will storm the room. Quickly walk up to the entrance of Herod's room and be ready to use area of effect abilities to pick them up.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "High Inquisitor Fairbanks",
		encounterID = 4542,
		portrait = 607642,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Fairbanks was once a devoted member of the Scarlet Crusade but grew disillusioned with the order's extreme methods and fanaticism. He now opposes the Crusade's ideals and works to expose their corruption from within the Scarlet Monastery. Fairbanks's presence in the Monastery symbolizes the internal conflicts and dissent within the Scarlet Crusade's ranks.",
			"Fairbanks's decision to stand against the Crusade and his efforts to reveal their dark secrets make him a unique figure within the Monastery. His existence serves as a reminder that not all who serve the Crusade do so willingly, and that there are those who seek to resist its tyranny from within.",
			{ heading = "Overview" },
			"High Inquisitor Fairbanks is the first boss encounter of Scarlet Monastery Cathedral. Fairbanks can be found in a hidden room on the right side of the cathedral. Fairbanks is not accompanied by any other adds, but in order to reach him the party must clear all the adds found inside the cathedral.",
			{
				role = DAMAGE,
				"This is a simple encounter, so you should do as much damage as possible while watching your threat. High Inquisitor Fairbanks will attempt to heal himself when he is low on health. You can interrupt his {spell:15586} spell. High Inquisitor Fairbanks will attempt to cast a variety of spells which are all interruptible.",
			},
			{
				role = HEALER,
				"This is a simple encounter, so you should focus your healing on the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive. Keep your tank and party members health up at all times, in case you are slept or feared. High Inquisitor Fairbanks will {spell:15090} frequently on the tank.",
			},
			{
				role = TANK,
				"This is a simple encounter, so you should focus on doing as much threat as possible on High Inquisitor Fairbanks, so the damage dealers can focus all of their damage onto Fairbanks. High Inquisitor Fairbanks will attempt to heal himself when he is low on health. You can interrupt his {spell:15586} spell. High Inquisitor Fairbanks will cast a variety of spells which can all be interrupted. Fairbanks will {spell:15090} frequently on the tank.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Scarlet Commander Mograine",
		encounterID = 3976,
		portrait = 607764,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Scarlet Commander Mograine is a high-ranking officer within the Scarlet Crusade and a member of the Mograine family, known for their involvement in the order. He holds a commanding position within the Scarlet Monastery, overseeing the Crusade's operations and enforcing its doctrine. Mograine's presence in the Monastery symbolizes the Crusade's determination to eradicate perceived threats and maintain their hold on the land.",
			"Mograine's leadership within the Scarlet Crusade and his role as the Monastery's commander make him a formidable adversary for those who enter the Monastery. His existence serves as a reminder of the Crusade's unwavering commitment to their cause.",
			{ heading = "Overview" },
			"Mograine is encountered alongside Whitemane as the last encounter of Scarlet Monastery Cathedral. Mograine is always resurrected after being defeated the first time, and fights alongside Whitemane for the second half of the encounter.",

			{
				role = DAMAGE,
				"Scarlet Commander Mograine is the last encounter of Scarlet Monastery Cathedral, the encounter is a two phase fight. Damage dealers should focus on dealing as much damage as possible without producting too much threat. In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine.",
			},
			{
				role = HEALER,
				"Healers should focus on healing the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive. Mana management will be the key to defeating Scarlet Commander Mograine since this encounter has two phases. In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine in battle.",
			},
			{
				role = TANK,
				"In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine in battle. Be ready to quickly generate threat as you enter the second phase of the encounter.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "High Inquisitor Whitemane",
		encounterID = 3977,
		portrait = 607643,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Whitemane is a revered and powerful figure within the Scarlet Crusade, known for her unwavering faith and formidable combat abilities. She stands as a central figure within the Scarlet Monastery, guiding the Crusade's efforts and leading their spiritual endeavors. Whitemane's presence in the Monastery represents the Crusade's religious fervor and their commitment to eradicating all who oppose them.",
			"Whitemane's martial and spiritual powers, as well as her role as the Monastery's high inquisitor, make her a formidable and zealous adversary for those who explore the Monastery. Her existence serves as a reminder of the Scarlet Crusade's dogmatic beliefs and their readiness to defend them.",
			{ heading = "Overview" },
			"Mograine is encountered alongside Whitemane as the last encounter of Scarlet Monastery Cathedral. Mograine is always resurrected after being defeated the first time, and fights alongside Whitemane for the second half of the encounter.",

			{
				role = DAMAGE,
				"Scarlet Commander Mograine is the last encounter of Scarlet Monastery Cathedral, the encounter is a two phase fight. Damage dealers should focus on dealing as much damage as possible without producting too much threat. In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine.",
			},
			{
				role = HEALER,
				"Healers should focus on healing the tank. In case any of your damage dealers take aggro from your tank, you should prioritize keeping them alive. Mana management will be the key to defeating Scarlet Commander Mograine since this encounter has two phases. In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine in battle.",
			},
			{
				role = TANK,
				"In the second phase of the encounter, High Inquisitor Whitemane will join Scarlet Commander Mograine in battle. Be ready to quickly generate threat as you enter the second phase of the encounter.",
			}
		},
		abilities = {
			
		}
	},
})
