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
		name = "Bloodmage Thalnos",
		encounterID = 4543,
		portrait = 607557,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bloodmage Thalnos is a formidable spellcaster within the Scarlet Crusade, specializing in the destructive power of fire magic. He serves as a key member of the Crusade within the Scarlet Monastery, using his fiery abilities to incinerate any who oppose the order. Thalnos's presence in the Monastery symbolizes the fanatical devotion of the Scarlet Crusade and their willingness to employ dark magic to further their cause.",
			"Thalnos's mastery of fire magic and his role as a prominent member of the Scarlet Crusade's leadership make him a dangerous foe for those who venture into the Monastery. His existence serves as a reminder of the formidable magical forces that support the Crusade's mission.",
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
		name = "Houndmaster Loksey",
		encounterID = 3974,
		portrait = 607648,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Houndmaster Loksey is a ruthless enforcer of the Scarlet Crusade who commands the ferocious hunting hounds within the Scarlet Monastery. His skill in training and controlling the beasts is matched only by his unwavering loyalty to the Crusade's cause. Loksey's presence in the Monastery represents the Crusade's brutal methods and their use of loyal animals as weapons.",
			"Loksey's mastery over the hunting hounds and his role as a key figure within the Scarlet Crusade's hierarchy make him a formidable adversary for those who enter the Monastery. His position highlights the Crusade's willingness to employ both human and beast to maintain their control.",
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
		name = "Arcanist Doan",
		encounterID = 6487,
		portrait = 607545,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Arcanist Doan is a powerful mage within the Scarlet Crusade who guards the library of the Scarlet Monastery. His extensive knowledge of arcane magic and his dedication to the Crusade's ideals have made him a crucial figure within the order. Doan's presence in the Monastery reflects the Scarlet Crusade's use of magic to further their goals.",
			"Doan's mastery of arcane spells and his role as the guardian of the library make him a formidable foe for those who explore the Monastery. His existence serves as a reminder of the formidable magical forces that support the Scarlet Crusade.",
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
		name = "Herod",
		encounterID = 3975,
		portrait = 607640,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Herod is a fearsome warrior who has earned a reputation for his deadly combat skills and his loyalty to the Scarlet Crusade. He serves as a champion and gladiator within the Scarlet Monastery, entertaining the Crusade's followers with brutal combat displays. Herod's presence in the Monastery represents the Crusade's martial prowess and their use of champions to maintain control.",
			"Herod's combat abilities and his role as a gladiator make him a formidable adversary for those who venture into the Monastery. His position highlights the Scarlet Crusade's use of spectacle and violence to maintain the devotion of their followers.",
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
		name = "Scarlet Commander Mograine",
		encounterID = 3976,
		portrait = 607764,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Scarlet Commander Mograine is a high-ranking officer within the Scarlet Crusade and a member of the Mograine family, known for their involvement in the order. He holds a commanding position within the Scarlet Monastery, overseeing the Crusade's operations and enforcing its doctrine. Mograine's presence in the Monastery symbolizes the Crusade's determination to eradicate perceived threats and maintain their hold on the land.",
			"Mograine's leadership within the Scarlet Crusade and his role as the Monastery's commander make him a formidable adversary for those who enter the Monastery. His existence serves as a reminder of the Crusade's unwavering commitment to their cause.",
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
		name = "High Inquisitor Whitemane",
		encounterID = 3977,
		portrait = 607643,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Whitemane is a revered and powerful figure within the Scarlet Crusade, known for her unwavering faith and formidable combat abilities. She stands as a central figure within the Scarlet Monastery, guiding the Crusade's efforts and leading their spiritual endeavors. Whitemane's presence in the Monastery represents the Crusade's religious fervor and their commitment to eradicating all who oppose them.",
			"Whitemane's martial and spiritual powers, as well as her role as the Monastery's high inquisitor, make her a formidable and zealous adversary for those who explore the Monastery. Her existence serves as a reminder of the Scarlet Crusade's dogmatic beliefs and their readiness to defend them.",
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
		name = "High Inquisitor Fairbanks",
		encounterID = 4542,
		portrait = 607642,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Fairbanks was once a devoted member of the Scarlet Crusade but grew disillusioned with the order's extreme methods and fanaticism. He now opposes the Crusade's ideals and works to expose their corruption from within the Scarlet Monastery. Fairbanks's presence in the Monastery symbolizes the internal conflicts and dissent within the Scarlet Crusade's ranks.",
			"Fairbanks's decision to stand against the Crusade and his efforts to reveal their dark secrets make him a unique figure within the Monastery. His existence serves as a reminder that not all who serve the Crusade do so willingly, and that there are those who seek to resist its tyranny from within.",
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
