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
			"Kirtonos the Herald, a necromancer in Scholomance, can be summoned using the Blood of Innocents. He transforms between Gargoyle and Human forms, each with unique abilities and challenges.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Jandice Barov, an illusionist in Scholomance, creates deceptive copies of herself during the fight. Clearing the room of adds is essential before engaging her.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rattlegore, a skeletal guardian in Scholomance, is known for his strength and single add. Clear surrounding enemies before engaging.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Marduk Blackpool, a warlock in Scholomance, employs dark magic and demonology. He's accessible only through a questline.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Vectus, a necromancer in Scholomance, is a neutral boss accessible through a questline. He specializes in alchemy and necromancy.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ras Frostwhisper, a master of frost magic and necromancy, is a lich and leader in Scholomance.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Instructor Malicia, a practitioner of dark magic and necromancy, trains students in Scholomance.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Doctor Theolen Krastinov, known as the Butcher, is a brutal creation within Scholomance.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Avoid aggro; Krastinov can one-shot less armored players. Increase damage output at 50% health.",
			},
			{
				role = HEALER,
				"Maintain distance. Focus on the tank, and be prepared for intense healing. Sacrifice DPS if needed.",
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lorekeeper Polkelt, a scholar in Scholomance, guards the academy's knowledge.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Ravenian, a guardian of Scholomance, uses stealth and cunning in his attacks.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Simple encounter. Position carefully to avoid knockback into adds.",
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Alexei Barov, a member of the Barov family, wields dark magic in Scholomance.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lady Illucia Barov, a powerful necromancer in Scholomance, poses a straightforward challenge with her ability to control players.",
			{ heading = "Overview" },
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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Darkmaster Gandling, the final boss of Scholomance, challenges players with teleportation tactics and a central role in the academy's operations.",
			{ heading = "Overview" },
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
