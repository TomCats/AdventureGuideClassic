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
	season = true,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Many quilboar have taken up residence in the largest cluster of giant thorns, the Razorfen, which they revere as Agamaggan's resting place.",
	{
		name = "Roogug",
		encounterID = 6168,
		portrait = 607760,
		loot = { },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Roogug is a massive and ferocious quillboar chieftain who rules over the hordes within Razorfen Kraul. His immense size and brutal leadership have made him a central figure in the quillboar's hierarchy. Roogug's presence in Razorfen Kraul symbolizes the relentless aggression and power struggle among the quillboar clans.",
			{ heading = "Overview" },
			"Manage adds, focus on Roogug. Damage dealers control adds, avoid over-aggroing. Healers delay healing, handle add aggro. Tanks mark targets, manage AoE threat.",
			{
				role = DAMAGE,
				"Handle adds first, then target Roogug. Maintain threat awareness."
			},
			{
				role = HEALER,
				"Delay initial healing, manage add aggro. React quickly to damage spikes."
			},
			{
				role = TANK,
				"Mark targets, use AoE for threat. Prioritize Death's Head Seer (marked with skull)."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Aggem Thorncurse",
		encounterID = 4424,
		portrait = 607531,
		loot = { 6681 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Aggem Thorncurse is a malevolent and powerful warlock who has established a stronghold within the depths of Razorfen Kraul. His dark sorcery and mastery over demonic forces have corrupted the quillboar lair. Aggem's presence in Razorfen Kraul represents the sinister influences that have taken root within the quillboar's tunnels.",
			{ heading = "Overview" },
			"Eliminate summoned boar spirits. Damage dealers switch to spirits, avoid aggro. Healers run to tank if targeted. Tanks ignore spirits, focus on Aggem.",
			{
				role = DAMAGE,
				"Switch to boar spirits, focus on Aggem afterwards. Avoid excess threat."
			},
			{
				role = HEALER,
				"If targeted by spirits, move to tank for assistance."
			},
			{
				role = TANK,
				"Focus on Aggem, ignore spirits. Assist healers if targeted."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Death Speaker Jargba",
		encounterID = 4428,
		portrait = 607584,
		loot = { 6682, 6685, 2816 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Death Speaker Jargba is a sinister and necromantic quillboar who has risen to power within Razorfen Kraul. His mastery over necromancy and his dark rituals have corrupted the lair. Jargba's presence in Razorfen Kraul signifies the unholy and necrotic forces that have infested the quillboar tunnels.",
			{ heading = "Overview" },
			"Prioritize Acolyte, manage Groundshaker and Jargba. Damage dealers focus Acolyte, interrupt spells. Healers dispel mind control, stay distant. Tanks build threat on Groundshaker, maintain Jargba's proximity.",
			{
				role = DAMAGE,
				"Target Acolyte first, interrupt {spell:10876}, then move to Groundshaker, Jargba."
			},
			{
				role = HEALER,
				"Dispel {spell:14515}, keep distance from Jargba and Groundshaker."
			},
			{
				role = TANK,
				"Focus Groundshaker, manage Jargba. Prevent Jargba's {spell:9613} by staying close."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Overlord Ramtusk",
		encounterID = 4420,
		portrait = 607736,
		loot = { 6686, 6687 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Overlord Ramtusk is a formidable quillboar chieftain who commands the warbands within Razorfen Kraul. His martial prowess and ruthless leadership have solidified his position as a central figure in the quillboar hierarchy. Ramtusk's presence in Razorfen Kraul represents the unyielding aggression and territorial control of the quillboar clans.",
			{ heading = "Overview" },
			"Manage Spearhides, focus on Ramtusk. Damage dealers handle adds, avoid {spell:8259}. Healers prepare for AoE damage, stay distant from Spearhides. Tanks control adds, prioritize marked targets.",
			{
				role = DAMAGE,
				"Control adds first, avoid {spell:8259}, then target Ramtusk."
			},
			{
				role = HEALER,
				"Prepare for AoE healing, avoid {spell:8259}, focus on tank and AoE-damaged players."
			},
			{
				role = TANK,
				"Mark targets, control Spearhides, avoid {spell:8259}, manage Ramtusk."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Agathelos the Raging",
		encounterID = 4422,
		portrait = 607530,
		loot = { 6690, 6691 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Agathelos the Raging is a massive and enraged quillboar who has taken up residence within the depths of Razorfen Kraul. His uncontrollable fury and overwhelming strength have turned the quillboar lair into a chaotic battleground. Agathelos's presence within Razorfen Kraul reflects the primal and destructive forces that lurk in the quillboar tunnels.",
			{ heading = "Overview" },
			"Defeat sealing mobs, then tackle Agathelos. Damage dealers maintain melee range, manage feign death. Healers prioritize tank, maintain melee range. Tanks prepare for high damage, manage feign death.",
			{
				role = DAMAGE,
				"Maintain melee range, focus on Agathelos, handle feign death. Avoid {spell:8260}."
			},
			{
				role = HEALER,
				"Focus on tank, maintain melee range. Manage high damage phases. Avoid {spell:8260}."
			},
			{
				role = TANK,
				"Manage high damage, stay in melee range. Handle feign death, maintain Agathelos's focus. Avoid {spell:8260}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Charlga Razorflank",
		encounterID = 4421,
		portrait = 607563,
		loot = { 6693, 6694, 6692 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Charlga Razorflank is a cunning and ruthless quillboar matriarch who holds sway over the quillboar clans within Razorfen Kraul. Her mastery of druidic magic and her command over the Thornweavers have corrupted the lair. Charlga's presence in Razorfen Kraul signifies the twisted and unnatural influences that have infested the quillboar tunnels.",
			{ heading = "Overview" },
			"Tackle Charlga, manage spells. Damage dealers stay distant, avoid {spell:8292}. Healers keep distance, handle AoE healing. Tanks manage positioning, control teleport.",
			{
				role = DAMAGE,
				"Maintain distance, avoid {spell:8292}, focus on Charlga. Ignore debuffs due to {spell:8361}."
			},
			{
				role = HEALER,
				"Stay distant, handle AoE healing. Focus on melee group during {spell:8292} impacts."
			},
			{
				role = TANK,
				"Control positioning, handle teleport. Tank near ramp to quickly re-engage after teleport."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	}
})
