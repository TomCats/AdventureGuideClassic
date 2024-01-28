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
			"Interrogator Vishas is a sadistic member of the Scarlet Crusade known for his brutal methods of extracting information from prisoners. He plays a key role within the Scarlet Monastery, using his dark techniques to interrogate and torment those captured by the Crusade. Vishas's presence in the Monastery highlights the ruthless and fanatical nature of the Scarlet Crusade as they seek to eradicate all perceived threats.",
			{ heading = "Overview" },
			"Vishas is notorious for his brutal methods. Damage dealers should eliminate adds first, maintaining threat awareness. Healers focus on the tank, especially during the add phase, and assist others if needed. Tanks use AoE abilities for adds before engaging Vishas, managing aggro effectively.",
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
			"Bloodmage Thalnos is a formidable spellcaster within the Scarlet Crusade, specializing in the destructive power of fire magic. He serves as a key member of the Crusade within the Scarlet Monastery, using his fiery abilities to incinerate any who oppose the order. Thalnos's presence in the Monastery symbolizes the fanatical devotion of the Scarlet Crusade and their willingness to employ dark magic to further their cause.",
			{ heading = "Overview" },
			"Thalnos, a master of fire magic, requires damage dealers to manage threat while avoiding AoE spells like {spell:12470}. Healers should maintain a safe distance and focus on healing those affected by AoE. Tanks engage Thalnos, managing positioning to avoid spells and keeping him focused.",
			{
				role = DAMAGE,
				"Focus on Thalnos while managing threat. Stay clear of his AoE spells, particularly {spell:12470}.",
			},
			{
				role = HEALER,
				"Maintain a safe distance to avoid AoE damage. Focus on healing the tank and any damage dealers affected by Thalnos's spells.",
			},
			{
				role = TANK,
				"Engage Thalnos and manage your positioning to avoid {spell:8814}. Keep him focused on you, allowing damage dealers to attack safely."
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
			"Houndmaster Loksey is a ruthless enforcer of the Scarlet Crusade who commands the ferocious hunting hounds within the Scarlet Monastery. His skill in training and controlling the beasts is matched only by his unwavering loyalty to the Crusade's cause. Loksey's presence in the Monastery represents the Crusade's brutal methods and their use of loyal animals as weapons.",
			{ heading = "Overview" },
			"Loksey commands hounds in the Scarlet Monastery Library. Damage dealers use AoE to manage hounds before focusing on Loksey, using offensive dispels on {spell:6742}. Healers keep the tank healed during the hound phase and assist damage dealers if needed. Tanks prioritize hound threat with AoE and manage cooldowns against Loksey and buffed hounds.",
			{
				role = DAMAGE,
				"Utilize AoE spells to manage the hounds. Focus on Loksey after the hounds are dealt with. Use offensive dispels on {spell:6742} when possible.",
			},
			{
				role = HEALER,
				"Keep the tank healed, especially during the initial hound phase. Be prepared to assist damage dealers if they draw aggro. Use dispels on {spell:6742} if available.",
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
			"Arcanist Doan is a powerful mage within the Scarlet Crusade who guards the library of the Scarlet Monastery. His extensive knowledge of arcane magic and his dedication to the Crusade's ideals have made him a crucial figure within the order. Doan's presence in the Monastery reflects the Scarlet Crusade's use of magic to further their goals.",
			{ heading = "Overview" },
			"Doan is known for his arcane magic. The fight revolves around managing his AoE abilities, especially {spell:9435}. Damage dealers should focus on mana-draining and avoid AoE. Healers need to dispel {spell:8988} and heal from a distance. Tanks use defensive cooldowns and reposition during AoE phases.",
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
			"Herod is a fearsome warrior who has earned a reputation for his deadly combat skills and his loyalty to the Scarlet Crusade. He serves as a champion and gladiator within the Scarlet Monastery, entertaining the Crusade's followers with brutal combat displays. Herod's presence in the Monastery represents the Crusade's martial prowess and their use of champions to maintain control.",
			{ heading = "Overview" },
			"Herod is known for his deadly combat skills. Damage dealers should deal high damage and avoid {spell:8989}, preparing for additional enemies post-fight. Healers focus on the tank's health and manage post-fight healing. Tanks maintain threat on Herod, avoid damage during {spell:8989}, and prepare for extra enemies.",
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
			"High Inquisitor Fairbanks was once a devoted member of the Scarlet Crusade but grew disillusioned with the order's extreme methods and fanaticism. He now opposes the Crusade's ideals and works to expose their corruption from within the Scarlet Monastery. Fairbanks's presence in the Monastery symbolizes the internal conflicts and dissent within the Scarlet Crusade's ranks.",
			{ heading = "Overview" },
			"Fairbanks, a former Scarlet Crusade member, requires damage dealers to focus on him, interrupting heals. Healers heal the tank and party, preparing for sleep or fear effects and dispelling {spell:15090}. Tanks engage Fairbanks, interrupting heals and managing threat.",
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
			"Scarlet Commander Mograine is a high-ranking officer within the Scarlet Crusade and a member of the Mograine family, known for their involvement in the order. He holds a commanding position within the Scarlet Monastery, overseeing the Crusade's operations and enforcing its doctrine. Mograine's presence in the Monastery symbolizes the Crusade's determination to eradicate perceived threats and maintain their hold on the land.",
			{ heading = "Overview" },
			"Mograine leads the Cathedral with martial prowess. Damage dealers focus on Mograine, then Whitemane in phase two, managing threat. Healers heal the tank, managing mana for the two-phase fight. Tanks maintain threat on Mograine and Whitemane in phase two, preparing for increased intensity.",
			{
				role = DAMAGE,
				"Focus on Mograine, then Whitemane in the second phase. Manage threat throughout.",
			},
			{
				role = HEALER,
				"Heal the tank, managing mana for the two-phase fight. Assist damage dealers as needed.",
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
			"High Inquisitor Whitemane is a revered and powerful figure within the Scarlet Crusade, known for her unwavering faith and formidable combat abilities. She stands as a central figure within the Scarlet Monastery, guiding the Crusade's efforts and leading their spiritual endeavors. Whitemane's presence in the Monastery represents the Crusade's religious fervor and their commitment to eradicating all who oppose them.",
			{ heading = "Overview" },
			"Whitemane, known for her zeal, presents a two-phase challenge. Damage dealers focus on Mograine, then Whitemane, managing threat and avoiding sleep spells. Healers heal the tank and manage mana for the two-phase fight. Tanks maintain threat on Mograine and Whitemane, preparing for increased combat intensity.",
			{
				role = DAMAGE,
				"Focus on Mograine, then Whitemane in the second phase. Manage threat and avoid her sleep spells.",
			},
			{
				role = HEALER,
				"Heal the tank, managing mana for the two-phase fight. Assist damage dealers as needed.",
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
