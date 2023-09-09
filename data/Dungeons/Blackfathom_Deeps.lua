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
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"This veteran dragon hunter's title was given ages ago as a mark of legend.",
			{ heading = "Overview" },
			"As an expert in hunting winged beasts, Chargath utilizes {spell:12345} rigged with {spell:45678}",
			"Upon reaching 100 energy, Chargath unleashes {spell:12345} on his target.",
			{
				role = DAMAGE,
				"When broken, {spell:12345} will cause {spell:12345}.",
				"{spell:12345} leaves behind {spell:12345} where it strikes the floor.",
				"When broken, {spell:12345} will cause {spell:12345}.",
				"{spell:12345} leaves behind {spell:12345} where it strikes the floor.",
			},
			{
				role = HEALER,
				"When broken, {spell:12345} will cause {spell:12345}.",
				"{spell:12345} leaves behind {spell:12345} where it strikes the floor.",
			},
			{
				role = TANK,
				"When broken, {spell:12345} will cause {spell:12345}.",
				"{spell:12345} leaves behind {spell:12345} where it strikes the floor.",
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
	},
	{
		name = "Gelihast",
		encounterID = 6243,
		portrait = 607609,
	},
	{
		name = "Baron Aquanis",
		encounterID = 12876,
		portrait = 607552,
	},
	{
		name = "Twilight Lord Kelris",
		encounterID = 4832,
		portrait = 607800,
	},
	{
		name = "Old Serra'kis",
		encounterID = 4830,
		portrait = 607733,
	},
	{
		name = "Aku'mai",
		encounterID = 4829,
		portrait = 607614,
	},
})
