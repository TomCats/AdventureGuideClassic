--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Wailing Caverns",
	instanceID = 240,
	thumbnail = 608229,
	icon = 136364,
	splash = 608313,
	mapID = 43,
	overview = "Years ago, the famed druid Naralex and his followers descended into the shadowy Wailing Caverns, named for the mournful cry one hears when steam bursts from the cave system's fissures. Naralex planned to use the underground springs to restore lushness to the arid Barrens. But upon entering the Emerald Dream, he saw his vision of regrowth turn into a waking nightmare, one that has plagued the caverns ever since.",
	{
		name = "Kresh",
		encounterID = 3653,
		portrait = 607676,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Kresh is a massive and territorial snapping turtle that dwells deep within the Wailing Caverns. His presence in the caverns represents the diverse array of creatures that have taken refuge in this sprawling subterranean labyrinth. Kresh's imposing size and armored shell make him a formidable resident of the Wailing Caverns, challenging those who dare to venture into his territory.",
			"As adventurers delve deeper into the Wailing Caverns, they must confront Kresh's powerful attacks and tenacious nature. His role as a guardian of the underground ecosystem adds an element of danger to the already treacherous caverns.",
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
		name = "Lady Anacondra",
		encounterID = 3671,
		portrait = 607680,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lady Anacondra is a formidable naga sorceress who has established herself as a resident of the Wailing Caverns. Her presence within the caverns adds a magical dimension to the already mysterious and perilous environment. Lady Anacondra's mastery of arcane magic and serpentine nature make her a unique and dangerous adversary.",
			"Adventurers who explore the depths of the Wailing Caverns must face Lady Anacondra's arcane spells and cunning tactics. Her role as a guardian of this subterranean realm highlights the variety of threats lurking within the caverns.",
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
		name = "Lord Cobrahn",
		encounterID = 3669,
		portrait = 607693,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Cobrahn is a cunning and agile naga lord who has taken up residence within the Wailing Caverns. His presence adds an element of stealth and deception to the already complex ecosystem of the caverns. Lord Cobrahn's serpentine form and venomous attacks make him a dangerous inhabitant of this underground realm.",
			"As adventurers venture deeper into the Wailing Caverns, they must contend with Lord Cobrahn's stealthy movements and venomous strikes. His role as a guardian of the caverns underscores the challenges posed by the naga and their mastery of subterfuge.",
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
		name = "Lord Pythas",
		encounterID = 3670,
		portrait = 607696,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Pythas is a powerful naga lord who has made the Wailing Caverns his domain. His presence adds a touch of arcane mystique to the already enigmatic caverns. Lord Pythas's formidable magical abilities and commanding presence make him a noteworthy adversary within the subterranean labyrinth.",
			"Adventurers who explore the depths of the Wailing Caverns must face Lord Pythas's arcane spells and mystical powers. His role as a guardian of this underground realm highlights the diversity of threats hidden within the caverns' twisting passages.",
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
		name = "Skum",
		encounterID = 3674,
		portrait = 607775,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Skum is a monstrous murloc who resides in the watery depths of the Wailing Caverns. His presence within the caverns represents the wide array of creatures that have found refuge in its labyrinthine passages. Skum's ferocity and aquatic nature make him a formidable resident of this underground realm.",
			"As adventurers delve deeper into the Wailing Caverns, they must confront Skum's frenzied attacks and his mastery of aquatic combat. His role as a guardian of the subterranean ecosystem adds a unique challenge to those who seek to navigate the treacherous caverns.",
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
		name = "Lord Serpentis",
		encounterID = 3673,
		portrait = 607698,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Serpentis is a cunning naga lord who has established himself as a resident of the Wailing Caverns. His presence within the caverns adds a touch of intrigue and danger to the underground labyrinth. Lord Serpentis's serpentine form and mastery of venomous attacks make him a dangerous adversary lurking in the shadows.",
			"Adventurers who explore the depths of the Wailing Caverns must be prepared to confront Lord Serpentis's stealthy movements and deadly strikes. His role as a guardian of this subterranean realm underscores the challenges posed by the naga and their expertise in covert warfare.",
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
		name = "Verdan the Everliving",
		encounterID = 5775,
		portrait = 607805,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Verdan the Everliving is an ancient and colossal serpent who has taken root within the Wailing Caverns. His presence in the caverns signifies the enduring power of nature and the intricate web of life within this underground ecosystem. Verdan's immense size and regenerative abilities make him a legendary inhabitant of the caverns, a living testament to the forces of nature.",
			"As adventurers venture deeper into the Wailing Caverns, they must face Verdan's formidable defenses and the tenacity of an Everliving creature. His role as a guardian of this underground realm adds an awe-inspiring challenge to those who seek to unravel the secrets hidden within its depths.",
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
		name = "Mutanus the Devourer",
		encounterID = 3654,
		portrait = 607721,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mutanus the Devourer is a monstrous hydra that lurks in the watery recesses of the Wailing Caverns. His presence within the caverns represents the primal and ferocious aspects of the underground ecosystem. Mutanus's multiple heads and insatiable appetite make him a terrifying resident of this labyrinthine realm.",
			"Adventurers who delve deeper into the Wailing Caverns must confront Mutanus's relentless attacks and his voracious hunger. His role as a guardian of the subterranean waters adds a harrowing element to the challenges faced within the caverns.",
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
