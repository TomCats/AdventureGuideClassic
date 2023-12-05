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
			"Roogug is the first boss you will encounter in Razorfen Kraul. Roogug is accompanied by a Death's Head Seer and a Stone Rumbler elemental that he summons.",
			{
				role = DAMAGE,
				"If your group is using crowd control on the adds, ignore them and damage Roogug. If your group is not crowd controlling the adds, focus them down first, staring with the Death's Head Seer. Pay close attention to your threat, as your tank might struggle to hold aggro on 3 different mobs.",
			},
			{
				role = HEALER,
				"Wait a few moments before you cast your healing spells when the fight begins, or you may pull threat on the adds. You will need to react quickly if one of the damage dealers get aggro on one of the mobs and starts taking damage, as they can die very quickly.",
			},
			{
				role = TANK,
				"Make sure you have marked the mobs so everyone in your group knows which one to attack, which one to crowd control. Use your area of effect abilities to hold threat on secondary targets while your group kills the primary target. The Death's Head Seer is the most dangerous, so mark him with a skull.",
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
			"Aggem Thorncurse is the second boss you will encounter in Razorfen Kraul. Aggem will repeatedly summon boar spirits to aid him in combat throughout the encounter.",
			{
				role = DAMAGE,
				"Quickly switch your focus to the boar spirits that Aggem summons and kill them - they have very low hit points.",
			},
			{
				role = HEALER,
				"If you get aggro on one of the summoned spirit boars, run towards the tank and melee damage dealers so they can kill it for you.",
			},
			{
				role = TANK,
				"The spirit boars that Aggem summons have very low hit points, so there is no point trying to build threat on them. If they run towards a healer, consider taunting if from them.",
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
			"Death Speaker Jargba is the thid boss you will encounter in Razorfen Kraul. Jargba is accompanied by a Death's Head Acolyte and a Razorfen Groundshaker.",
			{
				role = DAMAGE,
				"Defeat the Death's Head Acolyte first, then the Razorfen Groundshaker, and finally Jargba himself. Interrupt the Death's Head Acolyte's {spell:10876} cast.",
			},
			{
				role = HEALER,
				"Stay far away from the Razorfen Groundshaker in order to avoid his area of effect sun. Stay for away from Death Speaker Jargba in order to avoid being targeted by his {spell:14515} ability. Priest and Shaman healers can use {spell:527} and {spell:370} respectively to dispel Jargba's {spell:14515}.",
			},
			{
				role = TANK,
				"Let your damage dealers deal with the Death's Head Acolyte while you build threat on the Razorfen Groundshaker and Jargba himself. Keep the Razorfen Groundshaker and Jargba himself away from your healer, so they cannot be affected by their stun and mind control abilities. Jargba will spam his {spell:9613} Shadow Bolt ability if nobody is within his melee range, causing him to deal a lot more damage. So make sure you're always close to him.",
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
			"Overlord Ramtusk is the fourth boss you will encounter in Razorfen Kraul. Ramtusk is accompanied by two Razorfen Spearhides.",
			{
				role = DAMAGE,
				"If your groups is using crowd control on the adds, ignore them and damage Ramtusk. If your group is not crowd controlling the adds, focus them down first, starting with the mob that was marked with skull. Pay close attention to your threat, as your tank might struggle to hold aggro on three different mobs. Melee damage dealers should move away from the spearhides while they are doing their spinning ainimation, signifying that they are about to cost their powerful {spell:8259} area of effect spell.",
			},
			{
				role = HEALER,
				"Wait a few moments before you cast your healing spells when the fight begins, or you may pull aggro. There is a high likelihood that several of your damage dealers will be hit by the Spearhides' {spell:8259} area of effect ability. It deals a moderate amount of damage, so you will need to be quick with healing them in that event. Make sure you're for away from the Spearhides, so you don't get hit by the {spell:8259} yourself - it can take you down very easily.",
			},
			{
				role = TANK,
				"Make sure you have marked the mobs so everyone in your knows which one to attack, which one to crowd control, etc. Use your area of effect abilities to hold threat on secondary targets while your group kills the primary target, which should be marked skull. Pull the Razorfen Spearhides away from your healer and casters, as their {spell:8259} area of effect ability deals a lot of damage.",
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
			"Agathelos the Raging is the fifth boss you will encounter in Razorfen Kraul. Before you can fight Agathelos, you must first defeat the mobs that are keeping him sealed: a Death's Head Seer and two Ward Guardians.",
			{
				role = DAMAGE,
				"Agathelos deals a very high amount of damage, so be very careful to not overtake your tank on threat. Be sure to stay in melee range of Agathelos even if you are a caster to avoid {spell:8260} ability. If he seems to randomly die before his health points reaches 0, he is feigning death. You need to keep dealing damage to him, or else he will come back stronger.",
			},
			{
				role = HEALER,
				"Agathelos deals a very high amount of damage, so keeping the tank alive will be your number one priority. Only heal other players if the tank is looking healthy. Be sure to stay in melee range of Agathelos to avoid his {spell:8260} ability.",
			},
			{
				role = TANK,
				"Be prepared to use a potion or healthstone if you ever find yourself dropping low on health. Agathelos does a very high amount of damage, and an unlucky crit can kill you even at relatively high health. Be sure to stay in melee range of Agathelos avoid his {spell:8260} ability. If Agathelos seems to randomly die before his health points reaches 0, he is feigning death. You need to keep dealing damage to him, or else he will come back stronger.",
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
			"Charlga Razorflank is the sixth and final boss you will encounter in Razorfen Kraul.",
			{
				role = DAMAGE,
				"Ranged damage dealers should stay far away from other players in the group to avoid chaining Charlga's {spell:8292}. Do not bother apply any magical debuggs or damage over time spells on Charlga. She will constantly dispel all of them with her {spell:8361} spell. Charlga is invulnerable to all damage while {spell:8361} is active.",
			},
			{
				role = HEALER,
				"Stand away from other players to avoid getting hit by her {spell:8292} ability. Your melee damage dealers will need healing throughout this fight, as they will likely get hit by her {spell:8292} repeatedly.",
			},
			{
				role = TANK,
				"Tank Charlga in the middle of the ramp outside her but. She teleports back to her hut occasionally, so you will have to be quick with grabbing her again.",
			}
		},
		abilities = {
			
		}
	},
})
