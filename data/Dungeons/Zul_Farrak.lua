--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Zul'Farrak",
	instanceID = 241,
	thumbnail = 608230,
	icon = 136368,
	splash = 608267,
	mapID = 209,
	overview = "Zul'Farrak was once the shining jewel of Tanaris, ferociously protected by the cunning Sandfury tribe. Despite the trolls' tenacity, this isolated group was forced to surrender much of its territory throughout history. Now, it appears that Zul'Farrak's inhabitants are creating a horrific army of undead trolls to conquer the surrounding region. Other disturbing rumors tell of an ancient creature sleeping within the city--one that, if awakened, will rain death and destruction across Tanaris.",
	{
		name = "Antu'sul",
		encounterID = 8127,
		portrait = 607541,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Antu'sul is a powerful sand troll and a guardian of Zul'Farrak, a vast troll city in the Tanaris Desert. His role within the city is tied to the preservation of its ancient secrets and the protection of its inhabitants. Antu'sul's formidable presence and mastery over earth magic make him a significant figure in the troll hierarchy.",
			"Adventurers who venture into Zul'Farrak must face Antu'sul's earth-shattering attacks and his deep connection to the desert's power. His role as a guardian underscores the importance of preserving the city's history and safeguarding its hidden knowledge.",
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
		name = "Theka the Martyr",
		encounterID = 7272,
		portrait = 607793,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Theka the Martyr is a revered figure among the sand trolls of Zul'Farrak. His devotion to the ancient rituals and traditions of his people has earned him a special place within the city. Theka's resilience and his mastery of protective magic make him a central figure in the troll hierarchy.",
			"Adventurers who delve into the heart of Zul'Farrak must confront Theka the Martyr's unwavering dedication and his formidable defenses. His role as a guardian reflects the sand trolls' commitment to their traditions and the protection of their city's sacred sites.",
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
		name = "Witch Doctor Zum'rah",
		encounterID = 7271,
		portrait = 607819,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Witch Doctor Zum'rah is a cunning practitioner of dark voodoo magic within Zul'Farrak. His role within the city is to invoke the power of the loa and provide spiritual guidance to the sand troll community. Zum'rah's mystical abilities and connection to the spirit world make him a prominent figure in the troll hierarchy.",
			"Adventurers who venture into Zul'Farrak must face Witch Doctor Zum'rah's dark voodoo spells and his ability to call upon the aid of powerful spirits. His role as a spiritual leader underscores the significance of voodoo magic in the sand trolls' culture and their reverence for the loa.",
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
		name = "Nekrum Gutchewer",
		encounterID = 7796,
		portrait = 607723,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Nekrum Gutchewer is a ruthless troll warrior who serves as a protector of Zul'Farrak. His role within the city involves defending it from intruders and maintaining its security. Nekrum's combat prowess and unyielding dedication make him a formidable enforcer in the troll hierarchy.",
			"Adventurers who venture into Zul'Farrak must confront Nekrum Gutchewer's relentless attacks and his unwavering loyalty to his people. His role as a guardian highlights the sand trolls' commitment to defending their city and its secrets.",
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
		name = "Shadowpriest Sezz'ziz",
		encounterID = 7275,
		portrait = 607770,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Shadowpriest Sezz'ziz is a malevolent troll who has delved into the darker aspects of voodoo magic within Zul'Farrak. His role within the city involves wielding shadowy powers and maintaining control over sinister forces. Sezz'ziz's mastery of dark magic and his malevolent nature make him a feared figure in the troll hierarchy.",
			"Adventurers who delve into Zul'Farrak must confront Shadowpriest Sezz'ziz's shadowy spells and his ability to manipulate dark energies. His role as a practitioner of forbidden magic underscores the dangers that lurk within the city and the power of the shadow loa.",
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
		name = "Sergeant Bly",
		encounterID = 7604,
		portrait = I.UIEJBossSergeantBly,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Sergeant Bly is a battle-hardened troll warrior who has risen through the ranks within Zul'Farrak. His role involves training and leading the troll forces in defense of the city. Bly's combat expertise and unwavering loyalty to his people make him a crucial figure in the troll hierarchy.",
			"Adventurers who venture into Zul'Farrak must contend with Sergeant Bly's tactical brilliance and his formidable combat skills. His role as a military leader underscores the sand trolls' readiness to defend their city from any threat.",
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
		name = "Hydromancer Velratha",
		encounterID = 7795,
		portrait = 607652,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hydromancer Velratha is a master of water and frost magic among the sand trolls of Zul'Farrak. Her role within the city involves harnessing the power of water and maintaining control over its elemental forces. Velratha's mastery of elemental magic and her connection to the waters make her a significant figure in the troll hierarchy.",
			"Adventurers who delve into Zul'Farrak must face Hydromancer Velratha's watery spells and her ability to command the elemental forces of the desert. Her role as a manipulator of water highlights the sand trolls' affinity for the elemental powers of their arid homeland.",
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
		name = "Chief Ukorz Sandscalp",
		encounterID = 7267,
		portrait = 607564,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Chief Ukorz Sandscalp is the formidable leader of the sand trolls within Zul'Farrak. His role involves overseeing the city's operations and ensuring the welfare of his people. Ukorz's strength, wisdom, and unwavering dedication make him the highest authority in the troll hierarchy.",
			"Adventurers who venture into Zul'Farrak must confront Chief Ukorz Sandscalp's formidable combat skills and his determination to protect his city. His role as the leader underscores the sand trolls' resilience and their determination to safeguard their ancient home.",
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
		name = "Ruuzlu",
		encounterID = 7797,
		portrait = 607762,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ruuzlu is a menacing basilisk that dwells within the depths of Zul'Farrak. His presence in the city represents the diverse array of creatures that have found refuge in its labyrinthine passages. Ruuzlu's petrifying gaze and stone-shattering attacks make him a formidable inhabitant of this underground realm.",
			"As adventurers delve deeper into Zul'Farrak, they must confront Ruuzlu's petrifying abilities and his role as a guardian of the subterranean ecosystem. His presence adds an element of danger to the already treacherous city's depths.",
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
