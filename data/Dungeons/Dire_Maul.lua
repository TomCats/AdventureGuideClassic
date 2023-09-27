--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Dire Maul",
	instanceID = 230,
	thumbnail = 608200,
	icon = 136333,
	splash = 608239,
	mapID = 429,
	overview = "Built thousands of years ago to house the kaldorei's arcane secrets, the formerly great city of Eldre'Thalas now lies in ruin, writhing with warped, twisted forces. Competing covens once fought for control of Dire Maul's corrupted energy, but they have since settled into uneasy truces, choosing to exploit the power within their own territories rather than continue to battle over the entire complex.",
	{
		name = "Lethtendris",
		encounterID = 14327,
		portrait = 607686,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lethtendris is a high-ranking Highborne sorceress who has succumbed to the corruptive influence of Dire Maul. She wields powerful arcane magic and guards the East Wing of the ruins. Lethtendris's tragic transformation serves as a stark reminder of the ancient conflicts that have scarred these once-great halls.",
			"Once a proud practitioner of arcane arts, Lethtendris's fall into darkness mirrors the downfall of the Highborne civilization. Her magic, now corrupted, is a dangerous force within the East Wing, a testament to the tragic history of Dire Maul.",
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
		name = "Hydrospawn",
		encounterID = 13280,
		portrait = 607653,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hydrospawn is a colossal water elemental found in Dire Maul's East Wing. His watery form and mastery over water magic make him a formidable guardian of the ruins. Hydrospawn's existence within Dire Maul is a reflection of the elemental forces that have been harnessed by those who seek to desecrate its sanctity.",
			"As an elemental of great power, Hydrospawn's presence highlights the corruptive touch that has gripped Dire Maul. He stands as a formidable sentinel, a guardian of secrets that are now tainted by dark forces.",
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
		name = "Zevrim Thornhoof",
		encounterID = 11490,
		portrait = 607824,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Zevrim Thornhoof is a satyr sorcerer who lurks within Dire Maul's Warpwood Quarter. He is known for his mastery of dark magic and his allegiance to the corrupted satyrs. Thornhoof's presence within the once-sacred halls of Dire Maul is a testament to the foul influence that has taken root within the ancient elven ruins.",
			"Origins shrouded in darkness, Thornhoof's transformation into a satyr reflects the malevolent forces that have permeated Dire Maul. His arcane powers and dedication to the satyr cause make him a formidable adversary, standing as a symbol of the ruin that has befallen this sacred place.",
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
		name = "Alzzin the Wildshaper",
		encounterID = 11492,
		portrait = 607533,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Alzzin the Wildshaper, a druid corrupted by dark forces, resides in Dire Maul's Warpwood Quarter. He has the ability to shape-shift into various animal forms, making him a versatile and unpredictable foe. Alzzin's presence within Dire Maul represents the corruption that has seeped into the heart of the natural world.",
			"Once a guardian of nature's balance, Alzzin's transformation into a twisted servant of darkness is a tragic tale. His mastery over shape-shifting and the wilds has been tainted, now serving the malevolent forces that have overtaken the ruins.",
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
		name = "Guard Mol'dar",
		encounterID = 14326,
		portrait = 607630,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Mol'dar is a formidable ogre enforcer who commands the Gordok forces within Dire Maul's North Wing. His brute strength and unwavering loyalty to the Gordok tribe make him a key defender of their territory. Mol'dar's presence within Dire Maul represents the might and tenacity of the ogres who have claimed this part of the ruins.",
			"Mol'dar's rise to prominence among the Gordok ogres is a testament to his leadership and martial prowess. He stands as a stalwart guardian, ensuring the Gordok tribe's dominance within the North Wing and serving as a symbol of their dominance in Dire Maul.",
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
		name = "Stomper Kreeg",
		encounterID = 14322,
		portrait = 607777,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Stomper Kreeg is a massive, ale-loving ogre who resides within Dire Maul's North Wing. He is known for his insatiable appetite for alcohol and his formidable strength. Kreeg's presence within the ruins is a reflection of the unique character and challenges found within the North Wing.",
			"Kreeg's joviality and love for ale make him an unusual figure in the somber halls of Dire Maul. However, his immense strength and unpredictable behavior can pose a formidable challenge to those who dare to face him within the North Wing's chambers.",
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
		name = "Guard Fengus",
		encounterID = 14321,
		portrait = 607629,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Fengus is a powerful ogre enforcer responsible for overseeing the Gordok forces within Dire Maul's North Wing. He is known for his unwavering loyalty to the Gordok tribe and his formidable combat skills. Fengus's presence within Dire Maul serves as a symbol of the ogres' dominance in this part of the ruins.",
			"Fengus's rise to authority among the Gordok ogres is a testament to his martial prowess and dedication. He stands as a vigilant protector, ensuring that the North Wing remains firmly under the control of the Gordok tribe and representing their strength within Dire Maul.",
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
		name = "Guard Slip'kik",
		encounterID = 14323,
		portrait = 607631,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Slip'kik is a vigilant ogre enforcer responsible for maintaining order within Dire Maul's North Wing. His loyalty to the Gordok tribe and his relentless dedication to their cause make him a formidable defender of their territory. Slip'kik's presence within Dire Maul reflects the Gordok ogres' unwavering hold on this part of the ruins.",
			"Slip'kik's role as a guardian and enforcer highlights his commitment to the Gordok tribe's dominance. He stands as a stalwart protector, ensuring that the North Wing remains firmly under their control and symbolizing the ogres' authority within Dire Maul.",
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
		name = "Captain Kromcrush",
		encounterID = 14325,
		portrait = 607560,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Captain Kromcrush is a fearsome ogre commander who leads the Gordok forces within Dire Maul's North Wing. His formidable strength and tactical prowess make him a key figure in the defense of their territory. Kromcrush's presence within Dire Maul exemplifies the might and leadership of the Gordok tribe in this part of the ruins.",
			"Kromcrush's ascent to the rank of captain among the Gordok ogres is a testament to his martial skill and strategic acumen. He stands as a formidable defender, ensuring that the North Wing remains firmly under Gordok control and representing their unwavering authority within Dire Maul.",
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
		name = "Cho'Rush the Observer",
		encounterID = 14324,
		portrait = 607565,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cho'Rush the Observer is a mysterious ogre mage who holds a prominent position within Dire Maul's North Wing. His command of arcane magic and enigmatic presence make him a unique and formidable figure. Cho'Rush's role within Dire Maul reflects the complex and arcane nature of the ruins.",
			"Cho'Rush's mastery of arcane arts sets him apart from the other ogres within the North Wing. His enigmatic presence and command of magical forces are a testament to the diverse challenges and mysteries that adventurers encounter within Dire Maul.",
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
		name = "King Gordok",
		encounterID = 11501,
		portrait = 607673,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"King Gordok is the reigning monarch of the Gordok ogres and the ruler of Dire Maul's North Wing. His immense size and might, combined with his ruthless authority, make him a formidable figure within the ruins. King Gordok's presence exemplifies the Gordok ogres' dominance over this part of Dire Maul.",
			"King Gordok's ascent to the throne is a testament to his strength and command over the Gordok tribe. He stands as the unchallenged ruler, ensuring that the North Wing remains under Gordok control and representing the unrivaled authority of his tribe within Dire Maul.",
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
		name = "Tendris Warpwood",
		encounterID = 11489,
		portrait = 607785,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tendris Warpwood is a malevolent treant corrupted by dark forces, found within Dire Maul's Warpwood Quarter. He is known for his mastery of fel magic and his allegiance to the twisted beings that have overtaken the area. Tendris's presence within Dire Maul serves as a grim reminder of the corruptive influence that has befallen the once-sacred elven ruins.",
			"Once a protector of the natural world, Tendris's fall into darkness mirrors the desecration of Dire Maul. His mastery over fel magic and his role in guarding the Warpwood Quarter highlight the tragic transformation of a guardian now serving malevolent forces within the ruins",
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
		name = "Magister Kalendris",
		encounterID = 11487,
		portrait = 607703,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Magister Kalendris is a Highborne elf who has embraced the arcane arts within Dire Maul's Capital Gardens. He is known for his formidable magical abilities and unwavering loyalty to the corrupted Highborne cause. Kalendris's presence within Dire Maul represents the tragic legacy of a once-great civilization now steeped in darkness.",
			"Kalendris's mastery of the arcane reflects the Highborne's descent into darkness. His loyalty to the corrupted cause and his formidable magical prowess make him a formidable guardian of the Capital Gardens, where secrets of the past are marred by the present.",
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
		name = "Illyanna Ravenoak",
		encounterID = 11488,
		portrait = 607656,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Illyanna Ravenoak is a treant corrupted by the malevolent forces within Dire Maul's Warpwood Quarter. Once a guardian of nature, she now serves the twisted beings that have taken control of the area. Illyanna's fall from grace is a tragic example of the ruinous power that has overtaken the ancient ruins.",
			"A once-proud protector of the natural world, Illyanna's corruption is a somber reflection of the desecration of Dire Maul. Her presence, now aligned with dark forces, stands as a stark reminder of the devastation that has befallen these once-sacred woods.",
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
		name = "Immol'thar",
		encounterID = 11496,
		portrait = 607657,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Immol'thar, a monstrous voidwalker, is imprisoned within Dire Maul's Capital Gardens. His immense power and dark nature make him a formidable guardian of the arcane secrets contained within the ruins. Immol'thar's captivity is a testament to the lengths the Highborne went to protect their knowledge, even if it meant imprisoning a powerful entity.",
			"The presence of Immol'thar, a voidwalker of immense power, is a haunting reminder of the desperate measures taken to safeguard the arcane knowledge within Dire Maul. Bound and contained, his existence within the ruins speaks to the dangers of what lies hidden within these ancient halls.",
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
		name = "Prince Tortheldrin",
		encounterID = 11486,
		portrait = 607745,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Prince Tortheldrin is a malevolent Highborne elf who rules over Dire Maul's Athenaeum. He is a master of arcane magic and serves as the final guardian of the ancient Highborne knowledge contained within. Tortheldrin's presence within Dire Maul is a reflection of the corruptive influence that has pervaded the once-noble Highborne civilization.",
			"Tortheldrin, once a noble Highborne, has become a malevolent ruler within Dire Maul's Athenaeum. His mastery of arcane magic and his role as the final guardian of knowledge speak to the tragic transformation of the Highborne, who were once stewards of wisdom but are now agents of darkness.",
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
