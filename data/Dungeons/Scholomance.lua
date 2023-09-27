--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Scholomance",
	instanceID = 246,
	thumbnail = 608215,
	icon = 136355,
	splash = 608254,
	mapID = 1007,
	overview = "Individuals seeking to master the powers of undeath know well of Scholomance, the infamous school of necromancy located in the dark and foreboding crypts beneath Caer Darrow. In recent years, several of the instructors have changed, but the institution remains under the control of Darkmaster Gandling, a particularly sadistic and insidious practitioner of necromantic magic.",
	{
		name = "Kirtonos the Herald",
		encounterID = 10506,
		portrait = 607675,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Kirtonos the Herald is a powerful necromancer and a key figure within Scholomance, where he practices dark and forbidden magics. He is known for his role in summoning and controlling the undead, furthering the twisted experiments of Scholomance. Kirtonos's presence within the academy highlights the depths of the dark arts studied within its halls and the danger it poses to the living.",
			"Kirtonos's mastery over necromancy and his position as a herald of the undead make him a formidable adversary for those who venture into Scholomance. His existence serves as a reminder of the horrors that can be unleashed through the pursuit of forbidden knowledge.",
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
		name = "Jandice Barov",
		encounterID = 10503,
		portrait = 607666,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jandice Barov is a cunning illusionist and a member of the Barov family, known for their twisted experiments and involvement with the Scourge. She resides within Scholomance, using her illusionary magic to deceive and confound intruders. Jandice's presence in the academy reflects the Barov family's dark legacy and their willingness to employ deception to protect their secrets.",
			"Jandice's mastery over illusions and her role as a guardian of Scholomance's mysteries make her a challenging adversary for those who explore the academy. Her existence serves as a reminder of the treacherous illusions that lurk within its corridors.",
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
		name = "Rattlegore",
		encounterID = 11622,
		portrait = 607755,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rattlegore is a massive and fearsome skeletal monstrosity created through dark experiments within Scholomance. He is a guardian of the academy, tasked with defending its halls and preventing intruders from reaching its inner sanctum. Rattlegore's presence within Scholomance represents the horrors of necromantic experimentation and the lengths to which its inhabitants will go to protect their secrets.",
			"Rattlegore's immense size and his role as a protector of Scholomance make him a formidable adversary for those who dare to enter the academy. His existence serves as a chilling testament to the twisted creations that emerge from its laboratories.",
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
		name = "Marduk Blackpool",
		encounterID = 10433,
		portrait = 607709,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Marduk Blackpool is a formidable warlock who resides within Scholomance, where he delves into dark magic and demonology. He serves as a key figure in the academy's research, conducting experiments and summoning demons to further the Scourge's goals. Marduk's presence in Scholomance reflects the alliance between dark magic and the undead, and the danger it poses to the world.",
			"Marduk's mastery of warlock powers and his role as a practitioner of forbidden magics make him a formidable adversary for those who venture into Scholomance. His existence serves as a reminder of the corrupting influence of dark forces within the academy.",
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
		name = "Vectus",
		encounterID = 10432,
		portrait = 607804,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Vectus is a skilled alchemist and necromancer who conducts vile experiments within Scholomance, seeking to create powerful undead minions. He is known for his role in furthering the Scourge's agenda through his twisted research. Vectus's presence in the academy highlights the fusion of alchemy and necromancy, resulting in abominable creations.",
			"Vectus's expertise in alchemy and necromancy, as well as his role as an experimenter, make him a challenging adversary for those who explore Scholomance. His existence serves as a grim reminder of the grotesque experiments that take place within its walls.",
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
		name = "Ras Frostwhisper",
		encounterID = 10508,
		portrait = 607754,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ras Frostwhisper is a formidable lich and one of the leaders of Scholomance. He is a master of frost magic and a powerful necromancer, dedicated to furthering the Scourge's goals within the academy. Ras's presence in Scholomance reflects the academy's ties to the Scourge and the dark magics that sustain its inhabitants.",
			"Ras's mastery of frost magic and necromancy, as well as his position as a leader within Scholomance, make him a formidable and malevolent adversary for those who dare to enter the academy. His existence serves as a reminder of the chilling power that pervades its halls.",
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
		name = "Instructor Malicia",
		encounterID = 10505,
		portrait = 607661,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Instructor Malicia is a sadistic and enigmatic figure within Scholomance, responsible for training students in dark magic and necromancy. She revels in tormenting her students and has a deep affinity for the necromantic arts. Malicia's presence in the academy highlights the twisted education offered within its walls and the cruelty of its instructors.",
			"Malicia's mastery over dark magic and her role as an instructor make her a formidable adversary for those who explore Scholomance. Her existence serves as a chilling reminder of the indoctrination and malevolence that characterize the academy's teachings.",
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
		name = "Doctor Theolen Krastinov",
		encounterID = 11261,
		portrait = 607586,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Doctor Theolen Krastinov, also known as the Butcher, is a horrifying and brutal creation within Scholomance. He was once a healer and a victim of dark experiments, transformed into a monstrous abomination with an insatiable appetite for violence. Krastinov's presence in the academy serves as a grim testament to the horrors of necromantic experimentation.",
			"Krastinov's immense strength and his role as a savage butcher within Scholomance make him a terrifying adversary for those who enter the academy. His existence serves as a chilling reminder of the monstrous creations born of dark magic.",
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
		name = "Lorekeeper Polkelt",
		encounterID = 10901,
		portrait = 607700,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lorekeeper Polkelt is a scholar and historian within Scholomance, responsible for maintaining the academy's vast collection of knowledge. He is dedicated to preserving the secrets and lore of the Scourge. Polkelt's presence in the academy reflects the importance of knowledge within Scholomance and the lengths its inhabitants go to protect it.",
			"Polkelt's expertise in scholarly pursuits and his role as the keeper of arcane knowledge make him a formidable adversary for those who venture into Scholomance. His existence serves as a reminder of the academic pursuits that drive the academy's inhabitants.",
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
		name = "The Ravenian",
		encounterID = 10507,
		portrait = 607791,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Ravenian is a sinister and agile figure within Scholomance, known for his ability to transform into a raven and stalk his prey. He is a guardian of the academy, tasked with patrolling its halls and hunting intruders. The Ravenian's presence in Scholomance symbolizes the cunning and stealth employed by its defenders.",
			"The Ravenian's shapeshifting abilities and his role as a guardian make him a formidable adversary for those who dare to enter the academy. His existence serves as a reminder of the dangers that lurk in the shadows of Scholomance.",
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
		name = "Lord Alexei Barov",
		encounterID = 10504,
		portrait = 607691,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Alexei Barov is a member of the Barov family, known for their involvement with the Scourge and their twisted experiments. He resides within Scholomance, where he continues to conduct dark research and protect the secrets of the academy. Lord Barov's presence reflects the Barov family's dark legacy and their commitment to furthering the Scourge's goals.",
			"Lord Barov's mastery of dark magic and his role as a guardian of Scholomance's mysteries make him a formidable adversary for those who explore the academy. His existence serves as a reminder of the malevolent forces that seek to control the academy.",
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
		name = "Lady Illucia Barov",
		encounterID = 10502,
		portrait = 607681,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lady Illucia Barov, a member of the Barov family, is a powerful necromancer who resides within Scholomance. She is dedicated to the study of necromantic magic and serves as a guardian of the academy. Lady Barov's presence in Scholomance reflects the Barov family's dark lineage and their involvement with the Scourge.",
			"Lady Barov's mastery of necromancy and her role as a guardian make her a formidable adversary for those who venture into the academy. Her existence serves as a reminder of the formidable magical forces that support the Scourge's goals within Scholomance.",
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
		name = "Darkmaster Gandling",
		encounterID = 1853,
		portrait = 607582,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Darkmaster Gandling is the ultimate authority within Scholomance, responsible for overseeing the academy's operations and maintaining its dark curriculum. He is a formidable necromancer and a key figure in the Scourge's plans within the academy. Gandling's presence reflects the academy's role as a center for the study of dark magic and necromancy.",
			"Gandling's mastery of necromantic arts and his position as the academy's darkmaster make him a formidable and malevolent adversary for those who enter Scholomance. His existence serves as a chilling reminder of the pervasive darkness that engulfs the academy's halls.",
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
