--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Blackfathom Deeps",
	instanceID = 227,
	thumbnail = 608195,
	icon = 136325,
	splash = 608234,
	mapID = 48,
	overview = "Once dedicated to the night elves' goddess Elune, Blackfathom Deeps was thought to have been destroyed during the Sundering, lost beneath the ocean. Millennia later, members of the Twilight's Hammer cult were drawn to the temple by whispers and foul dreams. After sacrificing untold numbers of innocents, the cult was rewarded with a new task: to protect one of the Old Gods' most cherished creatures, a pet that is still in need of nurturing before he can unleash his dark powers on the world.",
	{
		name = "Ghamoo-Ra",
		encounterID = 4887,
		portrait = 607613,
		instance = "Blackfathom Deeps",
		loot = { 6908, 6907 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ghamoo-Ra is a massive and ancient turtle residing deep within Blackfathom Deeps. This aquatic behemoth is considered a guardian of the subterranean waters and the creatures that dwell within them. Ghamoo-Ra's immense size and formidable defenses make it a fearsome inhabitant of the underground aquatic realm.",
			{ heading = "Overview" },
			"Ghamoo-Ra is the first boss in Blackfathom Deeps. Ghamoo-Ra has high amount of armor, and will {spell:5568} a random party member.",
			{
				role = DAMAGE,
				"Ghamoo-Ra has only one ability {spell:5568}. Ghamoo-Ra can be stunned and feared.",
			},
			{
				role = HEALER,
				"Maintain healing on your tank from maximum range, make sure keep all party members health up as they may take damage from {spell:5568} at any moment.",
			},
			{
				role = TANK,
				"Face the boss away from the group and maintain threat. Reposition after {spell:5568}.",
			},
		},
		abilities = {
			{
				spell = 12345,
				icons = { IMPORTANT },
				"Chargath hurls a Grounding Spear at a random player, inflicting 4,459 Physical damage...",
				{
					spell = 12345,
					"Magma erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
				},
				{
					npc = 12345,
					"Grounding Chain erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
					{
						spell = 12345,
						"If Chargath trips on Grounding Chain, it breaks, knocking him down for 2 sec.",
					},
					{
						spell = 12345,
						"Inflicts 1,254 Fire damage to all players and an additional 836 Fire Damage every 1 sec",
					}
				},
			},
			{
				spell = 12345,
				icons = { TANK, BLEED },
				"Chargath hurls a Grounding Spear at a random player, inflicting 4,459 Physical damage...",
				{
					spell = 12345,
					"Magma erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
				},
				{
					spell = 12345,
					"Grounding Chain erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
					{
						spell = 12345,
						"If Chargath trips on Grounding Chain, it breaks, knocking him down for 2 sec.",
					},
					{
						spell = 12345,
						"Inflicts 1,254 Fire damage to all players and an additional 836 Fire Damage every 1 sec",
					}
				},
			}
		},
	},
	{
		name = "Lady Sarevess",
		encounterID = 4837,
		portrait = 607682,
		loot = { 888, 11121, 3078 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lady Sarevess is a naga sorceress who has claimed Blackfathom Deeps as her lair. She is known for her mastery of water-based magic and her allegiance to the naga forces that seek to expand their dominion beneath the waves. Lady Sarevess's control over the aquatic environment and her cunning tactics make her a formidable adversary in the depths.",
			{ heading = "Overview" },
			"Lady Sarevess is the second boss encountered in Blackfathom Deeps, and is accompanied by two adds. Lady Sarvess uses {spell:8435} that will hit all players in front of her.",
			{
				role = DAMAGE,
				"Interrupt Lady Sarevess' {spell:8435} to prevent her from casting {spell:865}. Stay spread to avoid chaining from her frontal cone {spell:8435}. She casts {spell:246} if kited. Crowd control one guard, then focus the other before Lady Sarevess.",
			},
			{
				role = HEALER,
				"Spread out to avoid being hit with {spell:8435}. Maintain healing on the tank.",
			},
			{
				role = TANK,
				"Tank all three of the mobs as the encounter starts. To make the fight easier, have one of the adds Crowd Controlled while tanking and focus damage on the other one.",
			},
		},
		abilities = {
			{
				spell = 12345,
				icons = { IMPORTANT },
				"Chargath hurls a Grounding Spear at a random player, inflicting 4,459 Physical damage...",
				{
					spell = 12345,
					"Magma erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
				},
				{
					npc = 12345,
					"Grounding Chain erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
					{
						spell = 12345,
						"If Chargath trips on Grounding Chain, it breaks, knocking him down for 2 sec.",
					},
					{
						spell = 12345,
						"Inflicts 1,254 Fire damage to all players and an additional 836 Fire Damage every 1 sec",
					}
				},
			},
			{
				spell = 12345,
				icons = { TANK, BLEED },
				"Chargath hurls a Grounding Spear at a random player, inflicting 4,459 Physical damage...",
				{
					spell = 12345,
					"Magma erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
				},
				{
					spell = 12345,
					"Grounding Chain erupts out of the ground around the spear, inflicting 3,000 Fire damage...",
					{
						spell = 12345,
						"If Chargath trips on Grounding Chain, it breaks, knocking him down for 2 sec.",
					},
					{
						spell = 12345,
						"Inflicts 1,254 Fire damage to all players and an additional 836 Fire Damage every 1 sec",
					}
				},
			}
		},
	},
	{
		name = "Gelihast",
		encounterID = 6243,
		portrait = 607609,
		loot = { 6906, 6905 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Gelihast is a fearsome murloc warrior who has established a stronghold within Blackfathom Deeps. He commands a tribe of murlocs and is known for his ruthless tactics and territorial nature. Gelihast's mastery of close combat and his control over his murloc followers make him a dangerous foe in the depths.",
			{ heading = "Overview" },
			"Gelihast is an optional Murloc boss located in Blackfathom Deeps, who casts {spell:6533} against his enemies. Pull the adds in his room one at a time to clear it out, then try to pull the boss alone. Remember to click the stone behind him once he's defeated for {spell:8733}.",
			{
				role = DAMAGE,
				"Gelihast casts {spell:6533} on random targets. Targets that have been affected by {spell:6533} receive reduced threat. Ranged damage should stay close in order to get {spell:6533} to mitigate threat generation.",
			},
			{
				role = HEALER,
				"Maintain healing on the tank.",
			},
			{
				role = TANK,
				"Pull the adds one at a time before pulling Gelihast. There is no good place to Line Of Sight pull the casters, so try to pull them far back to get them a safe distance from the rest of the murlocs.",
			}
		},
		abilities = {

		}
	},
	-- {
	-- 	name = "Baron Aquanis",
	-- 	encounterID = 12876,
	-- 	portrait = 607552,
	-- 	loot = { 1155, 6903 },
	-- 	npcs = { 2135, 12456, 12314 },
	-- 	overview = {
	-- 		"Baron Aquanis is a powerful water elemental that has been summoned to Blackfathom Deeps by dark forces. This elemental entity serves as a guardian of the submerged tunnels and channels beneath the depths. Baron Aquanis's control over water magic and his formidable elemental form make him a formidable protector of the underground waters.",
	-- 		{ heading = "Overview" },
	-- 		"Baron Aquanis is another miniboss that is summoned when Horde party members loot the Fathom Stone for a dungeon quest.",
	-- 		{
	-- 			role = DAMAGE,
	-- 			"Baron Aquanis is an easy fight, let the tank pull and don't over aggro, focus damage on Baron Aquanis.",
	-- 		},
	-- 		{
	-- 			role = HEALER,
	-- 			"Maintain healing on the tank.",
	-- 		},
	-- 		{
	-- 			role = TANK,
	-- 			"Maintain aggro on Baron Aquanis and face him away from the group.",
	-- 		}
	-- 	},
	-- 	abilities = {
			
	-- 	}
	-- },
	{
		name = "Twilight Lord Kelris",
		encounterID = 4832,
		portrait = 607800,
		loot = { 1155, 6903, },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Twilight Lord Kelris is a high-ranking member of the Twilight's Hammer cult, which seeks to usher in the return of the malevolent Old Gods. Within Blackfathom Deeps, Kelris conducts dark rituals and schemes to further the cult's goals. His mastery of shadow magic and his allegiance to the Old Gods make him a formidable and sinister figure in the depths.",
			{ heading = "Overview" },
			"Twilight Lord Kelris is an Orc Warlock located in the ceremonial chamber before the final room of the instance.",
			{
				role = DAMAGE,
				"Kelris casts {spell:8399} and {spell:15587}. They cannot be interrupted. Be careful if the tank has been casted with {spell:8399} as you might be next on the threat table.  ",
			},
			{
				role = HEALER,
				"Assign a damage dealer with healing ability to help cover in the event you are targeted by {spell:8399}. Use {spell:527} to remove the sleep affect, be ready to quickly use it on your group members, especially the tank.",
			},
			{
				role = TANK,
				"Tank the boss away from the group, maintaining threat throughout the fight. If you're targeted with {spell:8399}, be ready to use high threat abilities or taunt to regain aggro.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Old Serra'kis",
		encounterID = 4830,
		portrait = 607733,
		loot = { 6901, 6902, 6904 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Old Serra'kis is a massive and ancient hydra that dwells within the watery depths of Blackfathom Deeps. This colossal creature is a testament to the primal forces of nature that still exist deep underground. Old Serra'kis's multiple heads and devastating attacks make it a formidable and iconic inhabitant of the submerged realm.",
			{ heading = "Overview" },
			"Old Serra'kis is an optional boss in Blackfathom Deeps who will periodcally heal himself when attacking. The notable aspect of this boss is that you fight him underwater.",
			{
				role = DAMAGE,
				"maximize your damage output without overthrowing the tank from the primary threat position, or running out of breath.",
			},
			{
				role = HEALER,
				"Keep your party members up and heal the tank without running out of breath.",
			},
			{
				role = TANK,
				"Maintain threat on the boss without running out of breath.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Aku'mai",
		encounterID = 4829,
		portrait = 607614,
		loot = { 6910, 6911, 6909 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Aku'mai is an immense and malevolent creature known as the Deepstrider that lurks in the darkest depths of Blackfathom Deeps. Its origins are shrouded in mystery, but it is believed to be a primeval and nightmarish entity. Aku'mai's horrifying form and deadly attacks make it the ultimate challenge for adventurers who dare to explore the deepest reaches of the submerged caverns.",
			{ heading = "Overview" },
			"Aku'mai is the final Hydra boss of Blackfathom Deeps who uses {spell:3815} to damage the group.",
			{
				role = DAMAGE,
				"{spell:3815} can be interrupted. Don't stand in {spell:3815}, Aku'mai can be stunned. You should save your stuns and crowd control effects for his {spell:3490}. While enraged, Aku'mai receives 75% increased attack speed for 5 seconds.",
			},
			{
				role = HEALER,
				"Don't stand in {spell:3815}. Your tank will need additional healing during {spell:3490}.",
			},
			{
				role = TANK,
				"Tank the boss away from the healer and ranged damage dealers. Move out of {spell:3815}. Use defensive cooldowns when he casts {spell:3490}",
			}
		},
		abilities = {
			
		}
	},
})
