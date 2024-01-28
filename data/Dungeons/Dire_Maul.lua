--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Dire Maul",
	instanceID = 230,
	thumbnail = 608200,
	icon = 136333,
	splash = 608239,
	mapID = 429,
	overview = "Built thousands of years ago to house the kaldorei's arcane secrets, the formerly great city of Eldre'Thalas now lies in ruin, writhing with warped, twisted forces. Competing covens once fought for control of Dire Maul's corrupted energy, but they have since settled into uneasy truces, choosing to exploit the power within their own territories rather than continue to battle over the entire complex.",
	{
		name = "Pusillin",
		encounterID = 14327,
		portrait = 521744,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 14354 },
		overview = {
			"Pusillin is a cunning and elusive imp who resides within the heart of Dire Maul East, a place teeming with magic and untold secrets. His role within the tainted halls of the Eldre'Thalas complex is that of a mischievous trickster and a self-proclaimed guardian of arcane knowledge. Pusillin's mysterious nature and his ability to manipulate the intricate magical barriers of Dire Maul make him a unique and enigmatic presence.",
			{ heading = "Overview" },
			"Pusillin deals with his tricks and adds. Damage dealers should focus on the Wildspawn Imps Pusillin summons. Healers need to be alert to heal those targeted by the imps. Tanks should gain control over Pusillin and his minions, while players should interrupt Pusillin's {spell:15242} and {spell:17145}.",
			{
				role = DAMAGE,
				"Target and eliminate Wildspawn Imps quickly. Use interrupts to stop Pusillin's {spell:15242} and {spell:17145} spells."
			},
			{
				role = HEALER,
				"Provide sustained healing, especially to those under imp attacks. Watch for Pusillin's spells and help with dispelling when necessary."
			},
			{
				role = TANK,
				"Focus on aggroing Pusillin and the Imps, maintaining control. Be ready to interrupt {spell:15242} and {spell:17145}."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Lethtendris",
		encounterID = 14327,
		portrait = 607686,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lethtendris is a high-ranking Highborne sorceress who has succumbed to the corruptive influence of Dire Maul. She wields powerful arcane magic and guards the East Wing of the ruins. Lethtendris's tragic transformation serves as a stark reminder of the ancient conflicts that have scarred these once-great halls.",
			{ heading = "Overview" },
			"Prioritize Lethtendris's imp minion Plimgib before focusing on her. Damage dealers should interrupt her dangerous spells while healers manage party health and dispel effects. Tanks need to establish and maintain threat on Lethtendris using abilities to manage Plimgib.",
			{
				role = DAMAGE,
				"Eliminate Plimgib first. Interrupt Lethtendris's {spell:22709}, {spell:14887}, and {spell:20787}. Mages and Druids should decurse {spell:13338} and {spell:16247}."
			},
			{
				role = HEALER,
				"Manage mana, heal party members, particularly the tank. Dispel {spell:20787} and decurse {spell:13338} and {spell:16247} as needed."
			},
			{
				role = TANK,
				"Establish threat on Lethtendris, manage Plimgib. Be ready to interrupt key spells from Lethtendris."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Hydrospawn",
		encounterID = 13280,
		portrait = 607653,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hydrospawn is a colossal water elemental found in Dire Maul's East Wing. His watery form and mastery over water magic make him a formidable guardian of the ruins. Hydrospawn's existence within Dire Maul is a reflection of the elemental forces that have been harnessed by those who seek to desecrate its sanctity.",
			{ heading = "Overview" },
			"Manage Hydroling adds effectively while focusing on Hydrospawn. Damage dealers should work with tanks to handle the adds either focusing them down or managing them after Hydrospawn. Healers need to provide consistent group healing focusing on the tank during add spawns.",
			{
				role = DAMAGE,
				"Coordinate with the tank on Hydroling add strategy. Focus on adds or Hydrospawn based on group's AoE or single-target strength."
			},
			{
				role = HEALER,
				"Spread healing, prioritize the tank during add spawns. Be prepared for group-wide damage."
			},
			{
				role = TANK,
				"Coordinate add management with damage dealers. Focus on either adds or Hydrospawn based on the group's strength."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Zevrim Thornhoof",
		encounterID = 11490,
		portrait = 607824,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Zevrim Thornhoof is a satyr sorcerer who lurks within Dire Maul's Warpwood Quarter. He is known for his mastery of dark magic and his allegiance to the corrupted satyrs. Thornhoof's presence within the once-sacred halls of Dire Maul is a testament to the foul influence that has taken root within the ancient elven ruins.",
			{ heading = "Overview" },
			"Focus on preventing Zevrim's sacrificial attempts. Damage dealers should concentrate on Thornhoof avoiding overtaking the tank's threat and managing teleports to the sacrificial altar. Healers must focus on significant healing for teleported party members. Tanks maintain primary threat and manage Thornhoof's abilities.",
			{
				role = DAMAGE,
				"Focus on Zevrim, avoid threat overtaking. Use class abilities to escape altar teleport. Enslave adds if possible and dispel {spell:22478} debuff."
			},
			{
				role = HEALER,
				"Provide significant healing to altar teleported members. Use major cooldowns for survival. Dispel {spell:22478} if possible."
			},
			{
				role = TANK,
				"Maintain primary threat on Zevrim. Manage boss abilities and teleports effectively."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Alzzin the Wildshaper",
		encounterID = 11492,
		portrait = 607533,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Alzzin the Wildshaper, a druid corrupted by dark forces, resides in Dire Maul's Warpwood Quarter. He has the ability to shape-shift into various animal forms, making him a versatile and unpredictable foe. Alzzin's presence within Dire Maul represents the corruption that has seeped into the heart of the natural world.",
			{ heading = "Overview" },
			"Alzzin the Wildshaper involves adapting to his different animal forms. Damage dealers should focus on Alzzin managing adds at 35%. Healers need to provide consistent healing especially when Alzzin is in his Dire Wolf form. Tanks should reestablish threat after each shapeshift.",
			{
				role = DAMAGE,
				"Maintain damage on Alzzin, manage adds at 35% with AoE. Adapt tactics based on his current form."
			},
			{
				role = HEALER,
				"Provide continuous healing, focus on the tank during Alzzin's Dire Wolf form."
			},
			{
				role = TANK,
				"Reestablish threat after each of Alzzin's shapeshifts. Focus on controlling the adds during the encounter."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Guard Mol'dar",
		encounterID = 14326,
		portrait = 607630,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Mol'dar is a formidable ogre enforcer who commands the Gordok forces within Dire Maul's North Wing. His brute strength and unwavering loyalty to the Gordok tribe make him a key defender of their territory. Mol'dar's presence within Dire Maul represents the might and tenacity of the ogres who have claimed this part of the ruins.",
			{ heading = "Overview" },
			"For those attempting the Dire Maul Tribute Run, avoid engaging Mol'dar. In regular runs, he's a straightforward fight. Damage dealers should attack from a distance, while healers focus on the tank. Tanks need to control Mol'dar, especially when he enrages.",
			{
				role = DAMAGE,
				"Attack from a safe distance, avoid his {spell:10101} and {spell:15749}."
			},
			{
				role = HEALER,
				"Prioritize healing on the tank, especially during Mol'dar's enrage phase."
			},
			{
				role = TANK,
				"Tank Mol'dar against a wall, manage enrage with defensive cooldowns."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Stomper Kreeg",
		encounterID = 14322,
		portrait = 607777,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Stomper Kreeg is a massive, ale-loving ogre who resides within Dire Maul's North Wing. He is known for his insatiable appetite for alcohol and his formidable strength. Kreeg's presence within the ruins is a reflection of the unique character and challenges found within the North Wing.",
			{ heading = "Overview" },
			"Kreeg can be bypassed in the Tribute Run. If engaging, damage dealers should handle his debuffs and stay at range. Healers need to focus on keeping melee damage dealers and the tank alive. Tanks should maintain the primary threat and manage Kreeg's abilities.",
			{
				role = DAMAGE,
				"Manage {spell:22833} debuff, maintain range to avoid {spell:15577} and {spell:16740}."
			},
			{
				role = HEALER,
				"Keep melee damage dealers and tank healed, particularly during Kreeg's heavy damage abilities."
			},
			{
				role = TANK,
				"Engage Kreeg, maintaining threat. Use defensive cooldowns during his enrage."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Guard Fengus",
		encounterID = 14321,
		portrait = 607629,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Fengus is a powerful ogre enforcer responsible for overseeing the Gordok forces within Dire Maul's North Wing. He is known for his unwavering loyalty to the Gordok tribe and his formidable combat skills. Fengus's presence within Dire Maul serves as a symbol of the ogres' dominance in this part of the ruins.",
			{ heading = "Overview" },
			"In the Tribute Run, bypass Fengus or defeat him for his loot. Damage dealers should maintain a safe distance to avoid his abilities. Healers focus on the tank, and tanks should position Fengus strategically to control the encounter.",
			{
				role = DAMAGE,
				"Stay at maximum range to avoid {spell:10101} and {spell:15749}."
			},
			{
				role = HEALER,
				"Concentrate healing on the tank, dealing with occasional party damage."
			},
			{
				role = TANK,
				"Position Fengus against a wall, manage his abilities and enrage phases."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Guard Slip'kik",
		encounterID = 14323,
		portrait = 607631,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guard Slip'kik is a vigilant ogre enforcer responsible for maintaining order within Dire Maul's North Wing. His loyalty to the Gordok tribe and his relentless dedication to their cause make him a formidable defender of their territory. Slip'kik's presence within Dire Maul reflects the Gordok ogres' unwavering hold on this part of the ruins.",
			{ heading = "Overview" },
			"For the Tribute Run, trap Slip'kik using a Thorium Widget and Frost Oil. In regular encounters, damage dealers should attack from range, while healers focus on the tank. Tanks need to control Slip'kik, especially during his enrage phase.",
			{
				role = DAMAGE,
				"Maintain maximum range to avoid {spell:10101} and {spell:15749}."
			},
			{
				role = HEALER,
				"Concentrate on healing the tank, managing occasional damage to others."
			},
			{
				role = TANK,
				"Position Slip'kik against a wall, manage enrage with defensive cooldowns."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Captain Kromcrush",
		encounterID = 14325,
		portrait = 607560,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Captain Kromcrush is a fearsome ogre commander who leads the Gordok forces within Dire Maul's North Wing. His formidable strength and tactical prowess make him a key figure in the defense of their territory. Kromcrush's presence within Dire Maul exemplifies the might and leadership of the Gordok tribe in this part of the ruins.",
			{ heading = "Overview" },
			"Kromcrush can be bypassed in the Tribute Run or defeated for loot. Damage dealers should control adds and break fear effects. Healers must manage healing debuffs. Tanks need to gain threat on adds and manage Kromcrush effectively.",
			{
				role = DAMAGE,
				"Control reaver adds, break fear from {spell:19134}, and avoid {spell:22859}."
			},
			{
				role = HEALER,
				"Manage healing debuff from {spell:22859} on the tank."
			},
			{
				role = TANK,
				"Gain threat on Gordok Reaver adds, handle Kromcrush's abilities."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Cho'Rush the Observer",
		encounterID = 14324,
		portrait = 607565,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cho'Rush the Observer is a mysterious ogre mage who holds a prominent position within Dire Maul's North Wing. His command of arcane magic and enigmatic presence make him a unique and formidable figure. Cho'Rush's role within Dire Maul reflects the complex and arcane nature of the ruins.",
			{ heading = "Overview" },
			"For the Tribute Run, keep Cho'Rush alive. Damage dealers should focus on Gordok, interrupting Cho'Rush. Healers must balance healing between tank and the damage dealers. Tanks should establish and maintain threat on King Gordok, managing Cho'Rush's abilities.",
			{
				role = DAMAGE,
				"Focus on Gordok, interrupt Cho'Rush's {spell:11642} and {spell:17194}."
			},
			{
				role = HEALER,
				"Heal tank and the damage dealers, manage fear with abilities like {spell:6346} or {spell:8143}."
			},
			{
				role = TANK,
				"Maintain threat on Gordok, focus on Cho'Rush if not attempting Tribute Run."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "King Gordok",
		encounterID = 11501,
		portrait = 607673,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"King Gordok is the reigning monarch of the Gordok ogres and the ruler of Dire Maul's North Wing. His immense size and might, combined with his ruthless authority, make him a formidable figure within the ruins. King Gordok's presence exemplifies the Gordok ogres' dominance over this part of Dire Maul.",
			{ heading = "Overview" },
			"In the Tribute Run, keep Cho'Rush alive while defeating Gordok. Damage dealers should focus on Gordok, handling Cho'Rush's interrupts. Healers need to balance healing the tank and damage dealers. Tanks should establish and maintain threat on Gordok.",
			{
				role = DAMAGE,
				"Focus on Gordok, interrupt Cho'Rush's abilities if not attempting the Tribute Run."
			},
			{
				role = HEALER,
				"Focus on healing the tank, manage fear and maintain group health."
			},
			{
				role = TANK,
				"Maintain threat on Gordok, manage Cho'Rush if killing him."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Tendris Warpwood",
		encounterID = 11489,
		portrait = 607785,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tendris Warpwood is a malevolent treant corrupted by dark forces, found within Dire Maul's Warpwood Quarter. He is known for his mastery of fel magic and his allegiance to the twisted beings that have overtaken the area. Tendris's presence within Dire Maul serves as a grim reminder of the corruptive influence that has befallen the once-sacred elven ruins.",
			{ heading = "Overview" },
			"Before engaging Tendris, clear wandering Ancients. Damage dealers must manage his AoE knockdown. Healers focus on the tank and melee. Tanks should initiate the encounter and control Tendris, keeping him away from ranged DPS and healers.",
			{
				role = DAMAGE,
				"Manage {spell:5568} AoE knockdown, focus on Tendris."
			},
			{
				role = HEALER,
				"Heal tank and melee, particularly during Tendris's AoE knockdown."
			},
			{
				role = TANK,
				"Initiate encounter, establish threat, and position Tendris strategically."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Magister Kalendris",
		encounterID = 11487,
		portrait = 607703,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Magister Kalendris is a Highborne elf who has embraced the arcane arts within Dire Maul's Capital Gardens. He is known for his formidable magical abilities and unwavering loyalty to the corrupted Highborne cause. Kalendris's presence within Dire Maul represents the tragic legacy of a once-great civilization now steeped in darkness.",
			{ heading = "Overview" },
			"Kalendris is a Shadow Priest with mind control abilities. Damage dealers should interrupt his spells and manage mind-controlled players. Healers should reduce party damage taken and dispel debuffs. Tanks need to engage Kalendris, interrupting key spells and maintaining threat.",
			{
				role = DAMAGE,
				"Interrupt {spell:15587} and {spell:22919}, control mind-controlled players."
			},
			{
				role = HEALER,
				"Use shadow protection, dispel debuffs, and keep all players healthy."
			},
			{
				role = TANK,
				"Engage and pull Kalendris away, interrupt spells, and maintain threat."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Illyanna Ravenoak",
		encounterID = 11488,
		portrait = 607656,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Illyanna Ravenoak is a treant corrupted by the malevolent forces within Dire Maul's Warpwood Quarter. Once a guardian of nature, she now serves the twisted beings that have taken control of the area. Illyanna's fall from grace is a tragic example of the ruinous power that has overtaken the ancient ruins.",
			{ heading = "Overview" },
			"Damage dealers should focus on Illyanna, utilizing crowd control on Ferra. Healers need to manage healing, focusing on the tank and using sleep on Ferra if possible. Tanks should engage both Illyanna and Ferra, maintaining threat and managing their positioning.",
			{
				role = DAMAGE,
				"Use crowd control on Ferra, focus on Illyanna, manage {spell:22910}."
			},
			{
				role = HEALER,
				"Sleep Ferra if possible, focus healing on the tank, and manage group health."
			},
			{
				role = TANK,
				"Engage both Illyanna and Ferra, maintain threat and control their positioning."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Immol'thar",
		encounterID = 11496,
		portrait = 607657,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Immol'thar, a monstrous voidwalker, is imprisoned within Dire Maul's Capital Gardens. His immense power and dark nature make him a formidable guardian of the arcane secrets contained within the ruins. Immol'thar's captivity is a testament to the lengths the Highborne went to protect their knowledge, even if it meant imprisoning a powerful entity.",
			{ heading = "Overview" },
			"Immol'thar requires management of adds and teleportation. Damage dealers should focus on Immol'thar while managing Eyes. Healers need to keep the group healed and manage enrage. Tanks should control Immol'thar, especially when teleported, regaining threat quickly.",
			{
				role = DAMAGE,
				"Focus on Immol'thar, destroy summoned Eyes, manage teleportation."
			},
			{
				role = HEALER,
				"Keep group healed, especially during Immol'thar's enrage. Manage {spell:16128} on the tank."
			},
			{
				role = TANK,
				"Position Immol'thar strategically, manage aggro loss from teleportation."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},
	{
		name = "Prince Tortheldrin",
		encounterID = 11486,
		portrait = 607745,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Prince Tortheldrin is a malevolent Highborne elf who rules over Dire Maul's Athenaeum. He is a master of arcane magic and serves as the final guardian of the ancient Highborne knowledge contained within. Tortheldrin's presence within Dire Maul is a reflection of the corruptive influence that has pervaded the once-noble Highborne civilization.",
			{ heading = "Overview" },
			"Battle against Tortheldrin involves managing his knockback and threat reset. Damage dealers should focus on Tortheldrin, managing threat resets. Healers need to heal melee players and manage debuffs. Tanks should position Tortheldrin strategically and reestablish threat post-knockback.",
			{
				role = DAMAGE,
				"Focus on Tortheldrin, manage threat after {spell:22920} knockback."
			},
			{
				role = HEALER,
				"Heal melee and tank, manage debuffs from Tortheldrin."
			},
			{
				role = TANK,
				"Position Tortheldrin in a corner, manage knockback and threat reset."
			}
		},
		abilities = {
			-- Abilities details go here
		}
	},	
})
