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
			"Kirtonos the Herald is a boss that can be summoned on the patio using the Blood of Innocents, looted from the Blood Steward of Kirtonos. Kirtonos transforms between Gargoyle and Human forms during the fight. While in human form he will cast curses on the group, while in gargoyle form the fight is a simple encounter.",
			{
				role = DAMAGE,
				"During this fight, damage dealers should avoid being in front of Kirtonos in Gargoyle phase to avoid the {spell:12882} knockback and the stun from {spell:5708}. Mages and Druids should decurse any cursed party members.",
			},
			{
				role = HEALER,
				"Healing this fight should not require you ti take yout attention away from the tank, unless damage dealers are being affected by poistional abilities. Always try to keep everyone's health topped up.",
			},
			{
				role = TANK,
				"Tank Kirtonos with your back to a wall to avoid being thrown around by his knockback abilities, and to keep your other party members out of {spell:5708} range. Whenever Kirtonos changes form, makes sure to initiate and establish threat to keep the boss focused on you.",
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
			"Jandice is an optional boss located below the Plagued Whelpling room in Scholomance. Use the torch on the south wall to open up access to her chamber. The encounter with Jandice can be tricky, so make sure to clear the area around her of all adds to keep your focus on the boss. Jandice summons illusions of herself during the fight, so mark the Jandice to keep a sense of which copy is actually her. Make sure to click on the torch on the side wall to access extra secret loot later in the dungeon.",
			{
				role = DAMAGE,
				"Allow for your tank to establish threat, and being dealing damage to Jandice. When Jandice summons illusory images of herself, spread out and hold damage until the true version of her is clearly identified.",
			},
			{
				role = HEALER,
				"Be sure to cleanse {spell:18270} and decurse {spell:8282} whenever possible. Stay in the back of the room during the fight as to avoid being involved with any of the illusions when they are summoned.",
			},
			{
				role = TANK,
				"Mark Jandice with an icon so that you can easily pick up the realm version of her when she summons her illusions. Maintain threat especially when the illusions are summoned.",
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
			"Rattlegore is a mandatory boss located in the basement of the Great Ossuary. Rattlegore hits hard compared to others in Scholomance, and comes with one add. Be sure to clear around the boss before pulling Rattlegore in order to avoid getting more than the one add. Rattlegore drops the Viewing Room Key, which is needed to progress deeper into Scholomance.",
			{
				role = DAMAGE,
				"Focus your damage output on the add before switcing over to Rattlegore. Be extra aware of your threat level, as Rattlegore can easily deal significant damage to players with low armor class. If you are a ranged damage dealer, keep your distance to avoid being hit by {spell:11876}.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank, as they will be taking significant damage especially at the beginning of the encounter when the add is still alive. Keep your distance to avoid being hit by {spell:11876}.",
			},
			{
				role = TANK,
				"Mark the add as the primary target, and focus on Rattlegore second. Pull both of them out of their room and to the bottom of the stiars. Keep your back to a wall to avoid being thrown around by {spell:18945}.",
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
			"Marduk Blackpool can be found in the North East corner of the Viewing Room. Marduk is unable to be engaged unless someone in the party has worked on a long questline which involves defeating this boss.",
			{
				role = DAMAGE,
				"Ranged damage dealers need to stand away from the Marduk to be out of range of {spell:17695} Defiling Aura. Melee should be careful not to damage Marduk while {spell:12040} is active, as it deals damage tot the attacker while active. Stand behind Marduk to avoid damage from {spell:11609}.",
			},
			{
				role = HEALER,
				"Be aware of how much damage your damage dealers are taking from {spell:12040} and {spell:403628}. Keep your primary attention on the tank.",
			},
			{
				role = TANK,
				"Tank Marduk facing away from the group, keeping distance between Marduk and your ranged damage dealers and healer.",
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
			"Vectus is a Neutral, who is to be found in the Viewing Room. He is one of the necromancy instructors for the school. Vectus us unable to be engaged unless someone in the party has worked on a long questline which involves defeating this boss.",
			{
				role = DAMAGE,
				"Stay spread out to avoid taking damage from {spell:10216} which is targeted at one of your party members. Ranged should stand away from the boss, to keep out of range of {spell:13021}.",
			},
			{
				role = HEALER,
				"While healing the group and docusing on your tank, avoid fire on the ground and stay out of range of {spell:13021}.",
			},
			{
				role = TANK,
				"Tank the boss away from your ranged damage dealers and healer while avoiding in fire or being hit by {spell:10216}.",
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
			"Ras Frostwhisper is located in the Alchemy Labatory room in Scholomance. Other than Blackwing Lair, this is the only other Alchemy Labatory in Classic where you are able to craft flasks.",
			{
				role = DAMAGE,
				"Ranged damage dealers should stay at maximum range to avoid {spell:18099}. Interrupt as many of Ras's abilities as possible.",
			},
			{
				role = HEALER,
				"Stay at maximum range from Ras and focus on healing the tank. Damage dealers will be taking damage from the boss's abilities fairly consistency, so plan on spreading out your healing and using heal over time effects and shields. Dispel {spell:6215} if possible.",
			},
			{
				role = TANK,
				"After clearing all the adds in the room, tank Ras near the back but not behind any obstacles which will put you out of line of sight from the healer, especially when affected by {spell:6215}. Coordinate with melee damage dealers on an interrupt rotation to keep Ras from using his abilities too often.",
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
			"Instructor Malicia is located on the upper right wing of the last room. She is an easy encounter after dealing with the annoying adds before her. Malicia is a heavy magic user and interrupts make the encounter extremely simple.",
			{
				role = DAMAGE,
				"Malicia casts a lot of spells so interrupt as many as you can. Without casting spells she is a simple encounter.",
			},
			{
				role = HEALER,
				"If the party is interrupting Malicia's spells there's very little damage that goes out on this encounter.",
			},
			{
				role = TANK,
				"This is a simple tank encounter. Interrupt spells if possible.",
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
			"Doctor Theolen Krastinov is located on the upper center wing of the last room. This boss can be especially lethal to lesser armored party members. At 50% health he will {spell:425415} and will easily start one or two shotting those near him. Try to bring him down quickly before party members die.",
			{
				role = DAMAGE,
				"Krastinov hits very hard. Make sure to not get aggro or could easily be one shotted, especially if your armor is low. At 50% health he increases his attack speed, making him even more lethal.",
			},
			{
				role = HEALER,
				"Absolutely always keep distance away from Krastinov. He can easily one shot cloth armored players. Watch the tank's health as they will take a lot of damage. Damage dealers can be sacrified if they pull threat but if the tank dies it will probably be a wipe.",
			},
			{
				role = TANK,
				"Be prepared to take extra damage in this encounter. Krastinov hits very hard. At 50% he hits even harder so to help out plan on using some defnesive cooldwosn later into the encounter.",
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
			"Lorekeeper Polkelt is located on the upper left wing of the last room. Polkelt is a very squishy boss but the complication is that he almost certainly won't be able to be pulled alone. There are many zombie mobs in this room and you usually get a few when pullinh Polkelt. As long as you treat them the same way as other pulls it is easy to down him.",
			{
				role = DAMAGE,
				"Polkelt has very low health for a boss. Polkelt almost always comes with multiple adds though. Treat this pull similarly to other pulls in this room. Keep your distance when mobs are defeated to minimize explosion damage.",
			},
			{
				role = HEALER,
				"Keep your distance on the fight so that adds that are defeated and explode don't hurt you.",
			},
			{
				role = TANK,
				"Polkelt will almost certainly come with multiple adds. Keep threat on all mobs and be prepared to absorb or avoid the exploding corpses.",
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
			"The Ravenian is located on the lower right wing of the last room. This is a very simple encounter, the only complication is if you don't fully clear the room, you may get adds due to his {spell:11130}.",
			{
				role = DAMAGE,
				"This is a very simple encounter. Be aware of positioning because you can easily be knocked around into adds from {spell:11130}.",
			},
			{
				role = HEALER,
				"Keep your distance to not be affected by {spell:11130}. Make sure to keep the tank's health up.",
			},
			{
				role = TANK,
				"Be aware of positioning because you will be knocked around by {spell:11130}. If you don't clear the room it's easy to accidentally pull additional adds.",
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
			"Lord Alexei Barov is located on the lower center wing of the last room. He is arguably the hardest, if not the second hardest fight in Scholomance. The combination of his {spell:28340} and {spell:17820} in addition to two linked adds can quickly overwhelm a healer, leading to deaths. If at all possible, adds should be crowd controlled and decursing of {spell:17820} be a priority. Burn Barov and then finish up the adds.",
			{
				role = DAMAGE,
				"This is a challenging fight and if you are able to use crowd control to reduce the damage from the adds, it's advised to do so, they should be managed throughout the fight until Barov has been defeated. Focus on Barov first to minimize the nasty effect of {spell:28340}. Druids and mages need to decurse {spell:17820} throughout the fight. ",
			},
			{
				role = HEALER,
				"This is a challenging fight to heal. The constant effect of {spell:28340}  can cause a lot of party damage and slow cast speed. Priests can {spell:11444} one of the adds and should keep it controlled until Barov is dead. Druids should be decursing {spell:17820} throughout the fight.",
			},
			{
				role = TANK,
				"Make sure that crowd control plans are finalized before the pull. Controlling the adds makes the fight much easier. Keep aggro on all mobs but focus on Barov first to reducce the party wide damage from {spell:28340}.",
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
			"Lady Illucia Barov is located on the lower left wing of the last room. SHe is a simple straightforward encounter who's only complication is she will cast {spell:14515} on players.",
			{
				role = DAMAGE,
				"Lady Barov is a simple encounter. Interrupt where possible and maximize damage without overtaking the tank on threat.",
			},
			{
				role = HEALER,
				"This encounter doesn't have a lot of damage. Watch and call out if a player is affected by {spell:14515} and is attacking you so that they be crowd controlled.",
			},
			{
				role = TANK,
				"Tank the boss and maximize threat so the damage dealers can output maximum damage.",
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
			"Darkmaster Gandling is the final boss of Scholomance, who spawns in the center of the Barov Family Vault upon the defeat of the 6 chamber bosses. He is the headmaster of Necromancy at Scholomance. Be aware that he enters the room soon after the final of the 6 bosses is defeated and will be engaged immediately upon exiting the wing. Gandling will periodically teleport a player into one of the surrounding chambers where they will need to fight a few non-elite mobs to make their way back to the group. Plan for the event that your tank or healer be the one teleported.",
			{
				role = DAMAGE,
				"Melee damage dealers should focus their damage output on the boss without overtaking the primary threat position. Range damage dealers should stand on the stairs and damage the boss from maximum range. If you are teleported into one of the previous rooms, kill the adds present as quickly as possible and rejoin the encounter.",
			},
			{
				role = HEALER,
				"Focus healing output on your tank. If you are teleported into one of the previous rooms, kill the adds present and rejoin the encounter.",
			},
			{
				role = TANK,
				"Tank Darkmaster Gandling in the middle of the room where he spawns. If you are teleported into one of the previous rooms, kill the adds present and rejoin the encounter.",
			}
		},
		abilities = {
			
		}
	},
})
