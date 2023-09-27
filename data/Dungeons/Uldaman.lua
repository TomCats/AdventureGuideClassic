--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Uldaman",
	instanceID = 239,
	thumbnail = 608225,
	icon = 136363,
	splash = 608264,
	mapID = 70,
	overview = "Uldaman is an ancient titan vault buried deep within the earth. It is said the titans sealed away a failed experiment there and then moved on to a new project, related to the genesis of the dwarves. Tales of a fabled treasure containing great knowledge have enticed would-be treasure hunters to dig deeper into the secrets of Uldaman, a task made perilous by the presence of stone defenders, savage troggs, Dark Iron invaders, and other dangers lurking in the lost city.",
	{
		name = "Revelosh",
		encounterID = 6910,
		portrait = 607757,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Revelosh is an ancient and enigmatic stone golem that guards the depths of Uldaman. Crafted by the titans in ages past, he stands as a sentinel over the secrets hidden within the ancient vaults. Revelosh's presence in Uldaman signifies the enduring power of the titans' creations.",
			"As adventurers delve into the depths of Uldaman, they must confront the formidable Revelosh. His stone form and devastating blows make him a formidable guardian, challenging those who seek to uncover the ancient mysteries buried within the vaults.",
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
		name = "Baelog",
		encounterID = 6906,
		portrait = 607550,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baelog is a fierce vrykul warrior who has made Uldaman his home. His origins are shrouded in mystery, but his combat skills are undeniable. Baelog's presence within Uldaman adds an element of danger to the ancient chambers, where he seeks to defend his territory.",
			"As adventurers explore the depths of Uldaman, they must contend with Baelog's relentless pursuit. His mastery of combat and his determination to protect his domain make him a formidable adversary, representing the challenges posed by the vrykul who inhabit the ancient halls.",
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
		name = "Ironaya",
		encounterID = 7228,
		portrait = 607664,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ironaya is a fearsome stone golem that dwells deep within Uldaman. Created by the titans, she guards the inner chambers of the ancient complex. Ironaya's presence in Uldaman symbolizes the titans' dedication to safeguarding their creations.",
			"Adventurers who venture into the depths of Uldaman must confront Ironaya's formidable stone form. Her resilience and strength make her a challenging adversary, testing the mettle of those who seek to uncover the secrets hidden within the ancient vaults.",
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
		name = "Obsidian Sentinel",
		encounterID = 7023,
		portrait = 607729,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Obsidian Sentinel is an imposing construct that watches over Uldaman's inner chambers. Crafted from obsidian and enchanted by the titans, it stands as an unyielding guardian. The Obsidian Sentinel's presence underscores the enduring power of the titans' creations.",
			"As adventurers progress through Uldaman's depths, they must face the Obsidian Sentinel's formidable defenses. Its obsidian form and magical abilities make it a challenging obstacle, representing the strength and craftsmanship of the titans.",
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
		name = "Ancient Stone Keeper",
		encounterID = 7206,
		portrait = 607538,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Ancient Stone Keeper is a sentinel crafted by the titans to protect the secrets within Uldaman. Its ancient and weathered form stands as a testament to the passage of time. The presence of the Ancient Stone Keeper in Uldaman signifies the enduring legacy of the titans.",
			"Adventurers who delve into Uldaman must confront the Ancient Stone Keeper's formidable defenses. Its ancient powers and guardianship of the ancient vaults make it a formidable adversary, testing the resolve of those who seek to uncover the mysteries hidden within.",
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
		name = "Galgann Firehammer",
		encounterID = 7291,
		portrait = 607606,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Galgann Firehammer is a formidable Dark Iron dwarf who has taken up residence within Uldaman. His allegiance to the Dark Iron clan and his mastery of fire magic make him a formidable adversary. Galgann's presence within Uldaman adds an element of danger to the ancient chambers.",
			"As adventurers explore the depths of Uldaman, they must contend with Galgann's fiery spells and relentless attacks. His loyalty to the Dark Iron dwarves and his determination to defend his territory make him a challenging opponent, representing the tenacity of the dwarven clans.",
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
		name = "Grimlok",
		encounterID = 4854,
		portrait = 607626,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Grimlok is a powerful and brutish trogg chieftain who has claimed a portion of Uldaman as his domain. His physical strength and leadership over the troggs make him a formidable adversary. Grimlok's presence in Uldaman signifies the diverse inhabitants that have carved out territories within the ancient complex.",
			"Adventurers who venture into Uldaman must confront Grimlok's brute force and the loyalty of his trogg followers. His dominance over his territory adds a challenging element to the encounters within the ancient halls.",
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
		name = "Archaedas",
		encounterID = 2748,
		portrait = 607546,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archaedas is a colossal and ancient stone golem that guards the deepest chambers of Uldaman. Crafted by the titans themselves, he stands as a sentinel over the most sacred secrets of the complex. Archaedas's presence in Uldaman signifies the pinnacle of the titans' creations.",
			"As adventurers reach the heart of Uldaman, they must face the monumental Archaedas. His colossal form and formidable powers make him an awe-inspiring but challenging guardian, representing the ultimate challenge for those who seek to uncover the ancient mysteries hidden within the vaults.",
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
