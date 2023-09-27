--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Stratholme",
	instanceID = 236,
	thumbnail = 608216,
	icon = 136359,
	splash = 608255,
	mapID = 329,
	overview = "Stratholme was once the jewel of northern Lordaeron, but today it is remembered for its harrowing fall to ruin. It was here that Prince Arthas turned his back on the noble paladin Uther Lightbringer, slaughtering countless residents believed to be infected with the horrific plague of undeath. Ever since, cursed Stratholme has been marred by death, betrayal, and hopelessness.",
	{
		name = "Skul",
		encounterID = 10393,
		portrait = 607804,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Skul, the Necropolis' caretaker, is a loyal servant of the Scourge and is responsible for overseeing the undead within Stratholme. He is known for his eerie demeanor and his role as a sentinel of the cursed city. Skul's presence within Stratholme reflects the grim authority of the Scourge over the city's ruins.",
			"Skul's spectral nature and his role as the caretaker make him a haunting adversary for those who venture into Stratholme. His existence serves as a chilling reminder of the city's fall to the Scourge.",
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
		name = "Hearthsinger Forresten",
		encounterID = 10558,
		portrait = I.UIEJBossHearthsingerForresten,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hearthsinger Forresten was once a renowned bard and entertainer in Stratholme before its fall. However, he succumbed to the plague and now roams the city as a tormented spirit, seeking to relive his past glory. Forresten's presence within Stratholme reflects the tragedy and despair that befell its inhabitants.",
			"Forresten's spectral form and his longing for his former life make him a melancholic adversary for those who explore Stratholme. His existence serves as a reminder of the city's lost culture and its descent into darkness.",
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
		name = "The Unforgiven",
		encounterID = 10516,
		portrait = 607792,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Unforgiven is a vengeful spirit who dwells within Stratholme, driven by a burning desire for retribution against those he deems responsible for his suffering. His presence reflects the lingering torment and anger that permeate the cursed city.",
			"The Unforgiven's spectral form and his thirst for vengeance make him a relentless adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the consequences of the city's fall.",
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
		name = "Postmaster Malown",
		encounterID = 11143,
		portrait = I.UIEJBossPostmasterMalown,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Postmaster Malown was once responsible for Stratholme's mail service before its fall to the Scourge. He has been transformed into a malevolent undead postmaster who now haunts the city's post office. Malown's presence reflects the perversion of everyday life within Stratholme by the Scourge.",
			"Malown's eerie role as a postmaster and his spectral form make him a unique and unsettling adversary for those who explore Stratholme. His existence serves as a reminder of the mundane aspects of life that have been twisted by the curse.",
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
		name = "Timmy the Cruel",
		encounterID = 10808,
		portrait = 607795,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Timmy the Cruel is a tormented child spirit who wanders the streets of Stratholme, consumed by the darkness that plagues the city. His presence reflects the tragedy of innocent lives lost during the city's fall to the Scourge.",
			"Timmy's spectral form and his role as a child make him a haunting and empathetic adversary for those who venture into Stratholme. His existence serves as a reminder of the innocence that was snuffed out in the city's darkest hours.",
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
		name = "Malor the Zealous",
		encounterID = 11032,
		portrait = I.UIEJBossMalorTheZealous,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Malor the Zealous is a fanatical undead priest who now serves the Scourge within Stratholme. He is devoted to the dark cause and is known for his ruthless dedication to the undead. Malor's presence reflects the perversion of faith and devotion by the Scourge.",
			"Malor's spectral form and his role as a zealous priest make him a formidable and relentless adversary for those who explore Stratholme. His existence serves as a chilling reminder of the corruption of once-holy places.",
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
		name = "Cannon Master Willey",
		encounterID = 10997,
		portrait = I.UIEJBossCannonMasterWilley,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cannon Master Willey was once a skilled engineer in Stratholme, responsible for the city's defenses. In undeath, he has been transformed into a fearsome cannon master who guards the city's gates. Willey's presence reflects the militarization and fortification of Stratholme by the Scourge.",
			"Willey's mastery of cannons and his role as a defender of the gates make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a reminder of the city's tragic fall and its transformation into a bastion of the Scourge.",
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
		name = "Crimson Hammersmith",
		encounterID = 11120,
		portrait = I.UIEJBossCrimsonHammersmith,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Crimson Hammersmith is a blacksmith who was once skilled in crafting weapons and armor in Stratholme. In undeath, he has become a malevolent hammersmith who forges weapons for the Scourge. His presence reflects the perversion of craftsmanship by the dark forces that now control the city.",
			"The Crimson Hammersmith's role as a weapon forger and his spectral form make him a formidable and unsettling adversary for those who explore Stratholme. His existence serves as a chilling reminder of the twisted industry that now drives the city.",
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
		name = "Archivist Galford",
		encounterID = 10811,
		portrait = I.UIEJBossArchivistGalford,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archivist Galford was once a scholar and historian in Stratholme, responsible for preserving its knowledge and history. In undeath, he has been transformed into a malevolent archivist who guards the city's secrets. Galford's presence reflects the corruption of knowledge and the manipulation of history by the Scourge.",
			"Galford's role as an archivist and his spectral form make him a formidable adversary for those who venture into Stratholme. His existence serves as a reminder of the city's lost wisdom and the dark forces that seek to control its past.",
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
		name = "Balnazzar",
		encounterID = 10813,
		portrait = 607551,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Balnazzar is a powerful dreadlord and one of the dreadlords who manipulated the events that led to Stratholme's fall. He serves as a central figure in the Scourge's control of the city and its undead inhabitants. Balnazzar's presence reflects the malevolent influence of the Nathrezim over Stratholme.",
			"Balnazzar's mastery of demonic magic and his role as a puppeteer behind the city's fall make him a formidable and cunning adversary for those who challenge the Scourge within Stratholme. His existence serves as a chilling reminder of the dreadlords' role in the city's downfall.",
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
		name = "Magistrate Barthilas",
		encounterID = 10435,
		portrait = 607704,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Magistrate Barthilas was once a lawkeeper in Stratholme, responsible for maintaining order and justice. In undeath, he has become a malevolent magistrate who enforces the twisted laws of the Scourge. Barthilas's presence reflects the perversion of justice and order within the cursed city.",
			"Barthilas's role as a magistrate and his spectral form make him a formidable and relentless adversary for those who explore Stratholme. His existence serves as a chilling reminder of the city's descent into chaos and tyranny.",
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
		name = "Stonespine",
		encounterID = 10809,
		portrait = 607675,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Stonespine is a monstrous and undead giant who guards the corridors of Stratholme with brute strength. He is known for his formidable presence and his role as a sentinel of the city's depths. Stonespine's presence reflects the overwhelming power of the Scourge within the cursed city.",
			"Stonespine's colossal stature and his role as a guardian make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the indomitable forces that protect the city's secrets.",
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
		name = "Nerub'enkan",
		encounterID = 10437,
		portrait = 607724,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Nerub'enkan is an undead nerubian who has been twisted and enslaved by the Scourge to guard Stratholme's inner chambers. He is known for his ruthless nature and his role as a sentinel of the city's depths. Nerub'enkan's presence reflects the corruption of the nerubian race by the dark forces that control the city.",
			"Nerub'enkan's formidable nerubian abilities and his role as a guardian make him a relentless adversary for those who explore Stratholme. His existence serves as a reminder of the nerubians' tragic fate and their transformation into tools of the Scourge.",
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
		name = "Black Guard Swordsmith",
		encounterID = 11121,
		portrait = I.UIEJBossBlackGuardSwordsmith,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Black Guard Swordsmith is an undead blacksmith who forges deadly weapons for the Scourge within Stratholme. He is known for his skill in crafting blades of death and his role as a weapon forger. The Swordsmith's presence reflects the Scourge's relentless pursuit of arms and power within the city.",
			"The Swordsmith's mastery of weapon crafting and his role as a forger make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a reminder of the deadly arsenal that fuels the Scourge's dominion over the city.",
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
		name = "Maleki the Palid",
		encounterID = 10438,
		portrait = 607707,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Maleki the Pallid is a sinister and powerful undead sorcerer who serves as a guardian of Stratholme's inner chambers. He is known for his mastery of dark magic and his role as a sentinel of the city's depths. Maleki's presence reflects the malevolent and arcane forces that infest the cursed city.",
			"Maleki's formidable arcane abilities and his role as a guardian make him a formidable adversary for those who explore Stratholme. His existence serves as a chilling reminder of the dark and arcane secrets that lie hidden within the city.",
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
		name = "Baroness Anastari",
		encounterID = 10436,
		portrait = 607553,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baroness Anastari is an elegant and deadly undead noble who was once a prominent figure in Stratholme's aristocracy. In undeath, she has become a malevolent baroness who commands the undead with regal authority. Anastari's presence reflects the perversion of nobility and power by the Scourge.",
			"Anastari's mastery of necromancy and her role as a baroness make him a formidable and regal adversary for those who venture into Stratholme. Her existence serves as a chilling reminder of the aristocracy's fall and the rise of dark nobility within the city.",
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
		name = "Ramstein the Gorger",
		encounterID = 10439,
		portrait = 607752,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ramstein the Gorger is a monstrous and grotesque abomination who dwells within the depths of Stratholme. He is known for his insatiable appetite for flesh and his role as a guardian of the city's catacombs. Ramstein's presence reflects the grotesque and horrifying creations of the Scourge.",
			"Ramstein's ravenous hunger and his role as a guardian make him a formidable and repulsive adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the grotesque experiments that occur within the city's depths.",
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
		name = "Baron Rivendare",
		encounterID = 10440,
		portrait = I.UIEJBossBaronRivendare,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baron Rivendare is a powerful and ruthless undead noble who serves as the master of Stratholme. He is responsible for maintaining the Scourge's control over the cursed city. Rivendare's presence reflects the central authority of the Scourge within Stratholme.",
			"Rivendare's mastery of necromancy and his role as the ruler of Stratholme make him a formidable and cunning adversary for those who challenge the Scourge's dominion. His existence serves as a chilling reminder of the dark lord who holds the city in his grip.",
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
