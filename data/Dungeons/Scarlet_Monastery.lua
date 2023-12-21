--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Scarlet Monastery",
	instanceID = 316,
	thumbnail = 608214,
	icon = 136354,
	splash = 608253,
	mapID = 1004,
	overview = "The Crusade's fanatical leaders direct their followers from the Scarlet Cathedral, at the heart of the monastery grounds. This heavily guarded location functions as the order's headquarters, and some of the most zealous and intolerant crusaders roam the halls of this once-hallowed place.",
	{
		name = "Interrogator Vishas",
		encounterID = 3983,
		portrait = 607662,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Interrogator Vishas, a member of the Scarlet Crusade, is known for his brutal interrogation methods in the Scarlet Monastery Graveyard.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Eliminate adds first before focusing on Vishas. Maintain threat awareness throughout the fight.",
			},
			{
				role = HEALER,
				"Prioritize healing the tank, especially during the add phase. Be ready to assist others if they pull aggro.",
			},
			{
				role = TANK,
				"Use AoE abilities to gain threat on the adds. Mark priority targets and manage them effectively before engaging Vishas."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Bloodmage Thalnos",
		encounterID = 4543,
		portrait = 607557,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bloodmage Thalnos, a master of fire magic, is the last boss of the Scarlet Monastery Graveyard.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on Thalnos while managing threat. Stay clear of his AoE spells, particularly {spell:12470}.",
			},
			{
				role = HEALER,
				"Maintain a safe distance to avoid AoE damage. Focus on healing the tank and any DPS affected by Thalnos's spells.",
			},
			{
				role = TANK,
				"Engage Thalnos and manage your positioning to avoid {spell:8814}. Keep him focused on you, allowing DPS to attack safely."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Houndmaster Loksey",
		encounterID = 3974,
		portrait = 607648,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Houndmaster Loksey, a member of the Scarlet Crusade, commands the hounds within the Scarlet Monastery Library.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Utilize AoE spells to manage the hounds. Focus on Loksey after the hounds are dealt with. Use offensive dispels on {spell:6742} when possible.",
			},
			{
				role = HEALER,
				"Keep the tank healed, especially during the initial hound phase. Be prepared to assist DPS if they draw aggro. Use dispels on {spell:6742} if available.",
			},
			{
				role = TANK,
				"Prioritize threat on the hounds using AoE abilities. Manage cooldowns to handle increased damage from Loksey and hounds under {spell:6742}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Arcanist Doan",
		encounterID = 6487,
		portrait = 607545,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Arcanist Doan, a powerful mage in the Scarlet Monastery Library, is known for his arcane magic.",
			{ heading = "Overview" },
				"The fight revolves around managing Doan's AoE abilities, especially {spell:9435}. Damage dealers should focus on mana-draining and staying clear of AoE effects. Healers need to be ready with dispels for {spell:8988} and maintain distance. Tanks should use cooldowns wisely to mitigate damage and reposition during AoE phases.",
			{
				role = DAMAGE,
				"Manage positioning during {spell:9435}. Utilize mana drain abilities and stay out of AoE range.",
			},
			{
				role = HEALER,
				"Heal from a distance, dispel {spell:8988}, and avoid AoE attacks. Move out during {spell:9435}.",
			},
			{
				role = TANK,
				"Engage Doan carefully, using defensive cooldowns. Exit the room during {spell:9435} to avoid AoE damage."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Herod",
		encounterID = 3975,
		portrait = 607640,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Herod, the Scarlet Monastery Armory's champion, is known for his deadly combat skills.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Deal high damage, avoid Herod's {spell:8989}. Prepare for additional enemies after his defeat.",
			},
			{
				role = HEALER,
				"Focus on tank's health. Manage post-fight healing when additional enemies arrive.",
			},
			{
				role = TANK,
				"Maintain threat on Herod, avoid damage during {spell:8989}. Prepare for extra enemies post-fight."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "High Inquisitor Fairbanks",
		encounterID = 4542,
		portrait = 607642,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Fairbanks, a former member of the Scarlet Crusade, is found in the Scarlet Monastery Cathedral.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on Fairbanks, interrupting his healing spells. Manage threat levels.",
			},
			{
				role = HEALER,
				"Heal the tank and party, being prepared for sleep or fear effects. Dispel {spell:15090} from the tank.",
			},
			{
				role = TANK,
				"Engage Fairbanks, interrupting his heals. Manage threat and watch out for his spells."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Scarlet Commander Mograine",
		encounterID = 3976,
		portrait = 607764,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Scarlet Commander Mograine leads the Scarlet Monastery Cathedral with martial prowess.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on Mograine, then Whitemane in the second phase. Manage threat throughout.",
			},
			{
				role = HEALER,
				"Heal the tank, managing mana for the two-phase fight. Assist DPS as needed.",
			},
			{
				role = TANK,
				"Maintain threat on Mograine and Whitemane in phase two. Prepare for increased combat intensity."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "High Inquisitor Whitemane",
		encounterID = 3977,
		portrait = 607643,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"High Inquisitor Whitemane, a spiritual leader in the Scarlet Monastery Cathedral, is known for her zeal.",
			{ heading = "Overview" },
			{
				role = DAMAGE,
				"Focus on Mograine, then Whitemane in the second phase. Manage threat and avoid her sleep spells.",
			},
			{
				role = HEALER,
				"Heal the tank, managing mana for the two-phase fight. Assist DPS as needed.",
			},
			{
				role = TANK,
				"Maintain threat on Mograine and Whitemane in phase two. Prepare for increased combat intensity."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
})
