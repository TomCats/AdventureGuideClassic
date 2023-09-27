--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Razorfen Kraul",
	instanceID = 234,
	thumbnail = 608213,
	icon = 136353,
	splash = 608252,
	mapID = 47,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Many quilboar have taken up residence in the largest cluster of giant thorns, the Razorfen, which they revere as Agamaggan's resting place.",
	{
		name = "Roogug",
		encounterID = 6168,
		portrait = 607760,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Roogug is a massive and ferocious quillboar chieftain who rules over the hordes within Razorfen Kraul. His immense size and brutal leadership have made him a central figure in the quillboar's hierarchy. Roogug's presence in Razorfen Kraul symbolizes the relentless aggression and power struggle among the quillboar clans.",
			"Roogug's savage nature and his role as the chieftain highlight the ongoing conflicts within the heart of Razorfen Kraul. He serves as a formidable obstacle for those who seek to navigate the treacherous tunnels of the quillboar lair.",
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
		name = "Aggem Thorncurse",
		encounterID = 4424,
		portrait = 607531,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Aggem Thorncurse is a malevolent and powerful warlock who has established a stronghold within the depths of Razorfen Kraul. His dark sorcery and mastery over demonic forces have corrupted the quillboar lair. Aggem's presence in Razorfen Kraul represents the sinister influences that have taken root within the quillboar's tunnels.",
			"Aggem's command over dark magic and his oppressive rule over the quillboar lair highlight the malevolent forces at work in Razorfen Kraul. He serves as a grim reminder of the dangers posed by warlocks who traffic with demons and use forbidden magic.",
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
		name = "Death Speaker Jargba",
		encounterID = 4428,
		portrait = 607584,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Death Speaker Jargba is a sinister and necromantic quillboar who has risen to power within Razorfen Kraul. His mastery over necromancy and his dark rituals have corrupted the lair. Jargba's presence in Razorfen Kraul signifies the unholy and necrotic forces that have infested the quillboar tunnels.",
			"Jargba's command over necromantic magic and his role as the Death Speaker highlight the malevolent influences that have taken hold in Razorfen Kraul. He serves as a chilling reminder of the dangers posed by those who wield the powers of death and undeath.",
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
		name = "Overlord Ramtusk",
		encounterID = 4420,
		portrait = 607736,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Overlord Ramtusk is a formidable quillboar chieftain who commands the warbands within Razorfen Kraul. His martial prowess and ruthless leadership have solidified his position as a central figure in the quillboar hierarchy. Ramtusk's presence in Razorfen Kraul represents the unyielding aggression and territorial control of the quillboar clans.",
			"Ramtusk's relentless nature and his role as the Overlord highlight the constant power struggles within the heart of Razorfen Kraul. He serves as a formidable adversary for those who seek to challenge the quillboar's dominance in the lair.",
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
		name = "Agathelos the Raging",
		encounterID = 4422,
		portrait = 607530,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Agathelos the Raging is a massive and enraged quillboar who has taken up residence within the depths of Razorfen Kraul. His uncontrollable fury and overwhelming strength have turned the quillboar lair into a chaotic battleground. Agathelos's presence within Razorfen Kraul reflects the primal and destructive forces that lurk in the quillboar tunnels.",
			"Agathelos's berserk rage and his relentless attacks make him a formidable and unpredictable foe for those who venture into Razorfen Kraul. His existence serves as a testament to the untamed and volatile nature of the quillboar.",
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
		name = "Charlga Razorflank",
		encounterID = 4421,
		portrait = 607563,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Charlga Razorflank is a cunning and ruthless quillboar matriarch who holds sway over the quillboar clans within Razorfen Kraul. Her mastery of druidic magic and her command over the Thornweavers have corrupted the lair. Charlga's presence in Razorfen Kraul signifies the twisted and unnatural influences that have infested the quillboar tunnels.",
			"Charlga's control over druidic magic and her role as the matriarch highlight the malevolent forces at play in Razorfen Kraul. She serves as a grim reminder of the dangers posed by those who misuse nature's gifts and twist them for their own ends.",
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
