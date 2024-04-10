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
		loot = { 13969, 13960, 13956, 13955, 14024, 13967, 13957, 13983, 16734 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"irtonos the Herald is a powerful necromancer and a key figure within Scholomance, where he practices dark and forbidden magics. He is known for his role in summoning and controlling the undead, furthering the twisted experiments of Scholomance. Kirtonos's presence within the academy highlights the depths of the dark arts studied within its halls and the danger it poses to the living.",
			{ heading = "Overview" },
			"Kirtonos alternates between Gargoyle and Human forms, each with unique tactics. Damage dealers should manage positioning to avoid frontal attacks and AoE spells. Healers need to be ready for steady healing and decursing. Tanks should position Kirtonos strategically to counter knockbacks and maintain aggro during form changes.",
			{
				role = DAMAGE,
				"Avoid Kirtonos's frontal attacks in Gargoyle form. Decurse party members when necessary. Focus on positional awareness to mitigate the effects of {spell:12882} and {spell:5708}.",
			},
			{
				role = HEALER,
				"Maintain steady healing, especially on the tank. Be prepared to adjust if party members are affected by positional abilities. Keep everyone's health topped up.",
			},
			{
				role = TANK,
				"Position Kirtonos with your back against a wall to counter his knockback. Manage aggro effectively, especially during his form changes, to maintain focus on you and keep party members safe from {spell:5708}.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Jandice Barov",
		encounterID = 10503,
		portrait = 607666,
		loot = { 18690, 18689, 14548, 14545, 14543, 16701, 14541, 22394 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jandice Barov is a cunning illusionist and a member of the Barov family, known for their twisted experiments and involvement with the Scourge. She resides within Scholomance, using her illusionary magic to deceive and confound intruders. Jandice's presence in the academy reflects the Barov family's dark legacy and their willingness to employ deception to protect their secrets.",
			{ heading = "Overview" },
			"Jandice's illusions require damage dealers to identify and focus on the real Jandice while managing the adds. Healers should stay at a safe distance, cleansing and decursing as needed. Tanks must mark Jandice for tracking and maintain threat on her amidst her illusions.",
			{
				role = DAMAGE,
				"Identify and focus on the real Jandice. Spread out to manage the illusions and resume damage on the true Jandice when identified.",
			},
			{
				role = HEALER,
				"Cleanse and decurse as needed, staying at a safe distance to avoid illusions. Focus healing on the tank and manage mana efficiently.",
			},
			{
				role = TANK,
				"Mark Jandice to track her among illusions. Maintain threat on her and manage the illusions effectively.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Rattlegore",
		encounterID = 11622,
		portrait = 607755,
		loot = { 18686, 14539, 14537, 14538, 14531, 14528, 16711 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rattlegore is a massive and fearsome skeletal monstrosity created through dark experiments within Scholomance. He is a guardian of the academy, tasked with defending its halls and preventing intruders from reaching its inner sanctum. Rattlegore's presence within Scholomance represents the horrors of necromantic experimentation and the lengths to which its inhabitants will go to protect their secrets.",
			{ heading = "Overview" },
			"Rattlegore comes with a single add and potent knockback abilities. Damage dealers should prioritize the add first, then focus on Rattlegore at a safe distance. Healers must focus on the tank, especially during the initial phase. Tanks need to manage both Rattlegore and the add, positioning carefully to counter knockbacks.",
			{
				role = DAMAGE,
				"Eliminate the add first, then focus on Rattlegore. Maintain a safe distance and manage threat levels carefully.",
			},
			{
				role = HEALER,
				"Prioritize healing on the tank, especially during the initial phase. Stay alert to positional threats.",
			},
			{
				role = TANK,
				"Control both Rattlegore and the add. Position strategically to manage Rattlegore's knockback abilities effectively.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Marduk Blackpool",
		encounterID = 10433,
		portrait = 607709,
		loot = { 18692, 14576 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Marduk Blackpool is a formidable warlock who resides within Scholomance, where he delves into dark magic and demonology. He serves as a key figure in the academy's research, conducting experiments and summoning demons to further the Scourge's goals. Marduk's presence in Scholomance reflects the alliance between dark magic and the undead, and the danger it poses to the world.",
			{ heading = "Overview" },
			"Marduk employs dark magic and demonology. Ranged damage dealers should keep their distance, while melee attackers must be cautious under his {spell:12040}. Healers should focus on healing the tank and dispelling {spell:6215}. Tanks need to position Marduk away from the group to manage threat and avoid facing him towards party members.",
			{
				role = DAMAGE,
				"Ranged attackers maintain distance. Melee attackers avoid damaging Marduk while his {spell:12040} is active.",
			},
			{
				role = HEALER,
				"Manage healing across the party, especially focusing on the tank. Dispel {spell:6215} when possible.",
			},
			{
				role = TANK,
				"Position Marduk away from ranged party members. Manage threat and avoid facing him towards the group.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Vectus",
		encounterID = 10432,
		portrait = 607804,
		loot = { 18691, 14577 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Vectus is a skilled alchemist and necromancer who conducts vile experiments within Scholomance, seeking to create powerful undead minions. He is known for his role in furthering the Scourge's agenda through his twisted research. Vectus's presence in the academy highlights the fusion of alchemy and necromancy, resulting in abominable creations.",
			{ heading = "Overview" },
			"Vectus specializes in alchemy and necromancy. Damage dealers should maintain spacing to avoid AoE damage, especially ranged attackers. Healers need to focus on the tank and stay clear of fire and AoE range. Tanks should position Vectus strategically to manage AoE threats effectively.",
			{
				role = DAMAGE,
				"Maintain spacing to mitigate {spell:10216}. Ranged attackers should keep a safe distance from Vectus.",
			},
			{
				role = HEALER,
				"Focus on healing the tank and staying away from fire and the range of {spell:13021}.",
			},
			{
				role = TANK,
				"Tank Vectus strategically, keeping him at a distance from ranged attackers. Manage positioning to avoid {spell:10216}.",
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Ras Frostwhisper",
		encounterID = 10508,
		portrait = 607754,
		loot = { 13314, 14487, 14525, 14503, 14340, 14502, 13952, 18696, 14522, 16689, 18694, 18693, 18695 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ras Frostwhisper is a formidable lich and one of the leaders of Scholomance. He is a master of frost magic and a powerful necromancer, dedicated to furthering the Scourge's goals within the academy. Ras's presence in Scholomance reflects the academy's ties to the Scourge and the dark magics that sustain its inhabitants.",
			{ heading = "Overview" },
			"Ras, a master of frost magic, requires damage dealers to focus on spell interruptions and consistent damage. Healers should heal from a distance, dispelling {spell:6215} when it affects the party. Tanks must clear adds first, using an interrupt rotation to mitigate Ras's spellcasting.",
			{
				role = DAMAGE,
				"Stay at range and focus on interrupting Ras's spells. Be prepared for consistent damage output.",
			},
			{
				role = HEALER,
				"Heal from a distance, managing group health. Dispel {spell:6215} when it affects party members.",
			},
			{
				role = TANK,
				"Tank Ras strategically. Clear adds first and use an interrupt rotation to mitigate his spellcasting."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Instructor Malicia",
		encounterID = 10505,
		portrait = 607661,
		loot = { 23201, 23200, 16710, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Instructor Malicia is a sadistic and enigmatic figure within Scholomance, responsible for training students in dark magic and necromancy. She revels in tormenting her students and has a deep affinity for the necromantic arts. Malicia's presence in the academy highlights the twisted education offered within its walls and the cruelty of its instructors.",
			{ heading = "Overview" },
			"Facing Malicia, damage dealers should focus on interrupting her spells. Healers can expect minimal damage with successful spell interruptions. Tanks have a straightforward role focusing on spell interruption to simplify the encounter.",
			{
				role = DAMAGE,
				"Interrupt Malicia's spells to simplify the encounter.",
			},
			{
				role = HEALER,
				"Expect minimal damage if spells are successfully interrupted.",
			},
			{
				role = TANK,
				"A straightforward tanking encounter. Focus on spell interruption."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Doctor Theolen Krastinov",
		encounterID = 11261,
		portrait = 607586,
		loot = { 23201, 23200, 16684, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Doctor Theolen Krastinov, also known as the Butcher, is a horrifying and brutal creation within Scholomance. He was once a healer and a victim of dark experiments, transformed into a monstrous abomination with an insatiable appetite for violence. Krastinov's presence in the academy serves as a grim testament to the horrors of necromantic experimentation.",
			{ heading = "Overview" },
		    "Krastinov is known for high damage output. Damage dealers should avoid aggro and increase damage at 50% health. Healers must maintain distance, focusing on the tank and preparing for intense healing. Tanks should expect high damage, using defensive cooldowns strategically, especially past 50% health.",
			{
				role = DAMAGE,
				"Avoid aggro; Krastinov can one-shot less armored players. Increase damage output at 50% health.",
			},
			{
				role = HEALER,
				"Maintain distance. Focus on the tank, and be prepared for intense healing. Sacrifice damage dealers if needed.",
			},
			{
				role = TANK,
				"Expect high damage. Use defensive cooldowns strategically, especially past 50% health."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Lorekeeper Polkelt",
		encounterID = 10901,
		portrait = 607700,
		loot = { 23201, 23200, 16705, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lorekeeper Polkelt is a scholar and historian within Scholomance, responsible for maintaining the academy's vast collection of knowledge. He is dedicated to preserving the secrets and lore of the Scourge. Polkelt's presence in the academy reflects the importance of knowledge within Scholomance and the lengths its inhabitants go to protect it.",
			{ heading = "Overview" },
			"Polkelt guards Scholomance's knowledge. Damage dealers should handle him like other pulls in the area, being cautious of exploding adds. Healers need to stay at a safe distance during the fight. Tanks must manage Polkelt and adds simultaneously, preparing for exploding corpses.",
			{
				role = DAMAGE,
				"Handle Polkelt like other pulls in the area. Be cautious of exploding adds.",
			},
			{
				role = HEALER,
				"Maintain a safe distance during the fight to avoid damage from defeated adds.",
			},
			{
				role = TANK,
				"Manage Polkelt and adds simultaneously. Be ready for exploding corpses."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "The Ravenian",
		encounterID = 10507,
		portrait = 607791,
		loot = { 23201, 23200, 16716, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Ravenian is a sinister and agile figure within Scholomance, known for his ability to transform into a raven and stalk his prey. He is a guardian of the academy, tasked with patrolling its halls and hunting intruders. The Ravenian's presence in Scholomance symbolizes the cunning and stealth employed by its defenders.",
			{ heading = "Overview" },
			"The Ravenian uses stealth and cunning in his attacks. Damage dealers should position carefully to avoid knockback into adds. Healers need to stay at a safe distance, focusing on maintaining the tank's health. Tanks should be mindful of positioning due to knockback and clear the room first to prevent accidental pulls.",
			{
				role = DAMAGE,
				"Position carefully to avoid knockback into adds.",
			},
			{
				role = HEALER,
				"Stay at a safe distance. Focus on maintaining the tank's health.",
			},
			{
				role = TANK,
				"Be mindful of positioning due to knockback. Clear the room first to prevent accidental pulls."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Lord Alexei Barov",
		encounterID = 10504,
		portrait = 607691,
		loot = { 23201, 23200, 16722, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Alexei Barov is a member of the Barov family, known for their involvement with the Scourge and their twisted experiments. He resides within Scholomance, where he continues to conduct dark research and protect the secrets of the academy. Lord Barov's presence reflects the Barov family's dark legacy and their commitment to furthering the Scourge's goals.",
			{ heading = "Overview" },
			"Lord Barov wields dark magic. Damage dealers should focus on Barov, then adds, using crowd control and decursing {spell:17820} effectively. Healers face a challenging task due to {spell:28340}, using {spell:11444} on adds and decursing {spell:17820}. Tanks should finalize crowd control plans, focusing on Barov while managing adds.",
			{
				role = DAMAGE,
				"Focus on Barov, then adds. Use crowd control and decurse {spell:17820} effectively.",
			},
			{
				role = HEALER,
				"Challenging healing due to {spell:28340}. Use {spell:11444} on adds and decurse {spell:17820}.",
			},
			{
				role = TANK,
				"Finalize crowd control plans. Focus on Barov while managing adds."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Lady Illucia Barov",
		encounterID = 10502,
		portrait = 607681,
		loot = { 23201, 23200, 16722, 18681, 18680, 18682, 18683, 18684 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lady Illucia Barov, a member of the Barov family, is a powerful necromancer who resides within Scholomance. She is dedicated to the study of necromantic magic and serves as a guardian of the academy. Lady Barov's presence in Scholomance reflects the Barov family's dark lineage and their involvement with the Scourge.",
			{ heading = "Overview" },
			"Lady Barov poses a straightforward challenge with her control abilities. Damage dealers should engage in a straightforward fight, focusing on consistent damage and interrupting spells. Healers must monitor the fight for controlled players, managing healing across the party. Tanks need to maintain high threat to allow damage dealers to attack freely.",
			{
				role = DAMAGE,
				"Engage in a straightforward fight. Focus on consistent damage and interrupt spells when possible.",
			},
			{
				role = HEALER,
				"Monitor the fight for controlled players. Manage healing across the party, focusing on any controlled allies.",
			},
			{
				role = TANK,
				"Maintain high threat to allow damage dealers to attack freely. Monitor the fight for spell interruptions."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Darkmaster Gandling",
		encounterID = 1853,
		portrait = 607582,
		loot = { 22433, 13937, 13950, 13964, 13398, 13951, 13938, 13953, 13944, 16693, 16698, 16720, 16677, 16731, 16686, 16707, 16727, 16667 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Darkmaster Gandling is the ultimate authority within Scholomance, responsible for overseeing the academy's operations and maintaining its dark curriculum. He is a formidable necromancer and a key figure in the Scourge's plans within the academy. Gandling's presence reflects the academy's role as a center for the study of dark magic and necromancy.",
			{ heading = "Overview" },
			"Gandling's challenge lies in his teleportation tactics. Damage dealers should focus on Gandling, managing threat levels, and be prepared to deal with adds if teleported. Healers must concentrate on the tank and quickly eliminate adds if teleported. Tanks should tank Gandling in the center and adapt to the teleportation mechanic.",
			{
				role = DAMAGE,
				"Focus on Gandling, managing threat levels. Be prepared to quickly deal with adds if teleported.",
			},
			{
				role = HEALER,
				"Concentrate healing on the tank. If teleported, quickly eliminate adds and return to the main fight.",
			},
			{
				role = TANK,
				"Tank Gandling in the center. Adapt to the teleportation mechanic by quickly re-engaging upon return."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
})
