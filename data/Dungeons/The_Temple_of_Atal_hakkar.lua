--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "The Temple of Atal'hakkar",
	instanceID = 237,
	thumbnail = 608217,
	icon = 136360,
	splash = 608256,
	mapID = 109,
	season = false,
	overview = "Thousands of years ago, the Gurubashi empire was plunged into a civil war by a powerful sect of priests, the Atal'ai, who sought to summon to Azeroth an avatar of their god of blood, Hakkar the Soulflayer. The Gurubashi people exiled the Atal'ai to the Swamp of Sorrows, where the priests built the Temple of Atal'Hakkar. Ysera, Aspect of the green dragonflight, sank the temple beneath the swamp and assigned wardens to ensure that the summoning rituals never be performed again.",
	-- {
	-- 	name = "Gasher",
	-- 	encounterID = 5713,
	-- 	portrait = I.UIEJBossGasher,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Gasher is one of the vicious troll guardians that protects The Temple of Atal'Hakkar, also known as the Sunken Temple. His relentless aggression and ferocious nature make him a formidable adversary. Gasher's presence in the temple signifies the determination of the Atal'ai trolls to safeguard their dark secrets.",
	-- 		"As one of the initial challenges that adventurers face within the temple's depths, Gasher's strength and combat prowess serve as a grim reminder of the dangers that lie ahead. Those who seek to uncover the secrets hidden within the Sunken Temple must first contend with his savage fury.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	-- {
	-- 	name = "Hukku",
	-- 	encounterID = 5715,
	-- 	portrait = I.UIEJBossHukku,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Hukku is another formidable troll guardian within The Temple of Atal'Hakkar, tasked with defending the sacred grounds from intruders. His cunning and stealthy nature make him a challenging foe to confront. Hukku's presence within the temple underscores the resourcefulness of the Atal'ai trolls in protecting their treasures.",
	-- 		"Hukku's role in guarding the temple's inner chambers requires adventurers to exercise caution and vigilance. His ability to strike from the shadows and use poison as a weapon adds an element of surprise to the encounters within the Sunken Temple.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	-- {
	-- 	name = "Loro",
	-- 	encounterID = 5714,
	-- 	portrait = I.UIEJBossLoro,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Loro is a troll guardian who stands as one of the many obstacles within The Temple of Atal'Hakkar. Known for his ability to summon the spirits of fallen warriors, he adds a supernatural element to the temple's challenges. Loro's presence underscores the mystical and arcane forces that are intertwined with the temple's history.",
	-- 		"As adventurers delve deeper into the Sunken Temple, Loro's summoning abilities become a significant challenge. The spirits he calls upon can complicate encounters and test the mettle of those who seek to unravel the temple's mysteries.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	-- {
	-- 	name = "Mijan",
	-- 	encounterID = 5717,
	-- 	portrait = I.UIEJBossMijan,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Mijan is a troll guardian who watches over the secrets hidden within The Temple of Atal'Hakkar. He possesses the ability to transform into a massive serpent, making him a formidable and unpredictable opponent. Mijan's presence in the temple symbolizes the shapeshifting powers that the Atal'ai trolls have harnessed.",
	-- 		"Adventurers exploring the depths of the Sunken Temple must be prepared for Mijan's ability to assume different forms during battle. His serpentine nature adds an element of mystique to the encounters, challenging adventurers to adapt to his ever-changing tactics.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	-- {
	-- 	name = "Zolo",
	-- 	encounterID = 5712,
	-- 	portrait = I.UIEJBossZolo,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Zolo is a troll guardian who serves as a sentinel within The Temple of Atal'Hakkar. His unyielding loyalty to the Atal'ai trolls is matched only by his formidable combat skills. Zolo's presence in the temple signifies the unwavering determination of the trolls to protect their sacred domain.",
	-- 		"As one of the temple's guardians, Zolo stands as a stalwart defender, challenging adventurers who seek to penetrate its depths. His combat abilities and resilience make him a formidable adversary in the ongoing battle for control of the Sunken Temple.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	-- {
	-- 	name = "Zul'Lor",
	-- 	encounterID = 5716,
	-- 	portrait = I.UIEJBossZulLor,
	-- 	loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Zul'Lor is a troll guardian who commands the spirits of the temple's ancient defenders. His connection to the spectral realm makes him a unique and challenging foe within The Temple of Atal'Hakkar. Zul'Lor's presence underscores the deep spiritual ties that bind the Atal'ai trolls to the temple.",
	-- 		"Adventurers venturing into the depths of the Sunken Temple must contend with Zul'Lor's ability to call upon the spirits of the past. These spectral allies can turn the tide of battle, testing the skill and determination of those who seek to uncover the temple's secrets.",
	-- 		{ heading = "Overview" },
	-- 		"information goes here..",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	{
		name = "Atal'alarion",
		encounterID = 8580,
		portrait = I.UIEJBossAtalalarion,
		loot = { 10798, 10800, 10799 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Atal'alarion is a powerful and vengeful spirit bound within The Temple of Atal'Hakkar. Once a guardian of the temple, he has been corrupted by dark forces and now seeks to defend it with a malevolent rage. Atal'alarion's presence within the temple signifies the tragic fall of an ancient protector.",
			"As adventurers delve deeper into the Sunken Temple, they must confront the twisted spirit of Atal'alarion. His wrathful attacks and ability to command dark magic make him a formidable adversary, representing the maleficence that has tainted the temple's history.",
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
		name = "Jammal'an the Prophet",
		encounterID = 5710,
		portrait = 607665,
		loot = { 10808, 10807, 10806,  },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jammal'an the Prophet is a high-ranking Atal'ai priest within The Temple of Atal'Hakkar. His mastery of shadow magic and his devotion to the dark god Hakkar make him a formidable adversary. Jammal'an's presence in the temple highlights the Atal'ai trolls' commitment to serving the bloodthirsty deity.",
			"Adventurers seeking to uncover the secrets of the Sunken Temple must face Jammal'an's formidable powers. His ability to call upon the shadowy forces of Hakkar and manipulate dark magic tests the resolve of those who dare to challenge him.",
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
		name = "Ogom the Wretched",
		encounterID = 5711,
		portrait = I.UIEJBossOgomTheWretched,
		loot = { 10805, 10803, 10804 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ogom the Wretched is a troll warlock who has embraced the dark powers of fel magic within The Temple of Atal'Hakkar. His thirst for forbidden knowledge and power has led him down a treacherous path. Ogom's presence within the temple serves as a cautionary tale of the dangers of delving too deeply into the arcane.",
			"Adventurers navigating the depths of the Sunken Temple must confront Ogom's mastery of fel magic. His sinister spells and demonic minions make him a formidable adversary, representing the allure and corruption of forbidden magical arts.",
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
		name = "Dreamscythe",
		encounterID = 5721,
		portrait = 608311,
		loot = { 12243, 10797, 12463, 10796, 10795, 12465, 12464, 12466 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Dreamscythe is a malevolent entity that lurks within The Temple of Atal'Hakkar. A manifestation of the dark and twisted dreams that haunt the temple's depths, Dreamscythe embodies the surreal and nightmarish aspects of the Sunken Temple. Its presence serves as a reminder of the eerie and otherworldly forces at play.",
			"Adventurers who venture into the Sunken Temple must confront the unsettling and surreal nature of Dreamscythe. Its ability to manipulate reality and create nightmarish illusions challenges the perceptions and sanity of those who seek to unveil the temple's mysteries.",
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
		name = "Weaver",
		encounterID = 5720,
		portrait = 608311,
		loot = { 12243, 10797, 12463, 10796, 10795, 12465, 12464, 12466 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Weaver is a giant spider that dwells within The Temple of Atal'Hakkar, spinning webs of deception and treachery. Its predatory nature and silk-spinning abilities make it a formidable guardian. Weaver's presence in the temple symbolizes the dangers that lurk within its shadowy corners.",
			"As adventurers explore the Sunken Temple, they must contend with Weaver's web-based traps and its ability to ensnare prey. Its cunning and predatory instincts add an element of danger to the encounters within the temple's depths.",
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
		name = "Hazzas",
		encounterID = 5722,
		portrait = 608311,
		loot = { 12243, 10797, 12463, 10796, 10795, 12465, 12464, 12466 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hazzas is a malevolent spirit bound to The Temple of Atal'Hakkar, cursed to protect the temple's secrets for all eternity. His tormented existence and spectral powers make him a formidable adversary. Hazzas's presence within the temple underscores the tragic fate of those who become ensnared by its dark forces.",
			"Adventurers who seek to uncover the hidden truths of the Sunken Temple must face the spectral wrath of Hazzas. His spectral abilities and haunting attacks test the resolve of those who dare to challenge the temple's cursed guardians.",
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
		name = "Morphaz",
		encounterID = 5719,
		portrait = 608311,
		loot = { 12243, 10797, 12463, 10796, 10795, 12465, 12464, 12466 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Morphaz is a massive serpent that dwells within The Temple of Atal'Hakkar, guarding its depths with venomous fury. His serpentine form and deadly poison make him a formidable adversary. Morphaz's presence in the temple symbolizes the ancient and primal forces that protect its secrets.",
			"As adventurers venture deeper into the Sunken Temple, they must confront the serpentine wrath of Morphaz. His venomous attacks and coiled aggression pose a significant challenge, representing the untamed and dangerous aspects of the temple's guardians.",
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
		name = "Avatar of Hakkar",
		encounterID = 8443,
		portrait = 607548,
		loot = { 10846, 10843, 10842, 10845, 10838, 10844, 12462 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Avatar of Hakkar is a manifestation of the bloodthirsty god Hakkar the Soulflayer within The Temple of Atal'Hakkar. Its malevolent power and insatiable hunger for blood make it a terrifying foe. The Avatar's presence in the temple signifies the dark deity's influence over its chambers.",
			"Adventurers who dare to enter the Sunken Temple must ultimately confront the Avatar of Hakkar, the embodiment of the temple's true malevolence. Its bloodthirsty attacks and ability to drain life force test the bravery and strength of those who seek to challenge the power of Hakkar.",
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
		name = "Shade of Eranikus",
		encounterID = 5709,
		portrait = 607768,
		loot = { 10836, 10837, 10833, 10828, 10835, 10829, 10847 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Shade of Eranikus is a corrupted green dragon who has fallen under the sway of the malevolent god Hakkar the Soulflayer within The Temple of Atal'Hakkar. Once a protector of nature, Eranikus's corruption has made him a formidable and tragic adversary. His presence in the temple highlights the destructive influence of Hakkar.",
			"As adventurers reach the heart of the Sunken Temple, they must face the corrupted Shade of Eranikus. His twisted powers and allegiance to Hakkar test the courage and resolve of those who seek to banish the darkness that has consumed the temple.",
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
