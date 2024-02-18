--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "The Deadmines",
	instanceID = 63,
	thumbnail = 522352,
	icon = 136332,
	splash = 526404,
	mapID = 36,
	overview = "It is said the Deadmines' gold deposits once accounted for a third of Stormwind's treasure reserves. Amid the chaos of the First War, the mines were abandoned and later thought to be haunted, leaving them relatively untouched until the Defias Brotherhood--a group of former laborers turned brigands--claimed the labyrinth as a base of operations for its subversive activities against Stormwind.",
	{
		name = "Rhahk'Zor",
		encounterID = 644,
		portrait = 607777,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rhahk'Zor, a massive ogre, is one of the earliest challenges adventurers face within The Deadmines. Known for his immense strength and brutal tactics, he serves as a formidable guardian of the pirate-infested underground complex. Rhahk'Zor's presence in The Deadmines reflects the danger and lawlessness that have taken hold of the once-prosperous mine.",
			{ heading = "Overview" },
			"Rhak'zor, the first boss in the Deadmines, is a level 19 elite ogre accompanied by two level 17 elite Defias Watchmen who attack from range. Damage dealers should defeat the Defias Watchmen first, avoid {spell:6304} to minimize damage, and use crowd control abilities to manage the Watchmen's damage output. Healers should focus on healing the tank through the damage from {spell:6304}. Tanks should maximize threat on Rhak'zor to enable full damage output, maintain high threat, and be cautious of {spell:6304}.",
			{
				role = DAMAGE,
				"Defeat the Defias Watchmen before targeting Rhahk'zor. Avoid {spell:6304} to minimize damage taken. Use crowd control abilities to manage the Defias Watchmen's damage output.",
			},
			{
				role = HEALER,
				"Heal the tank through the damage from {spell:6304}.",
			},
			{
				role = TANK,
				"Maximize threat on the boss to enable full damage output. Maintain high threat and be cautious of {spell:6304}.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Sneed's Shredder",
		encounterID = 642,
		portrait = I.UIEJBossSneedsShredder,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Sneed's Shredder, a hulking mechanical monstrosity, is a creation of the cunning engineer, Sneed. It guards the inner chambers of The Deadmines and represents the technological ingenuity of the Defias Brotherhood. Sneed's Shredder's presence in the mines reflects the combination of engineering prowess and criminal intent that fuels the pirate operation.",
			"As a testament to Sneed's engineering skills, the Shredder poses a unique challenge for adventurers. Its mechanical nature and destructive capabilities make it a formidable adversary deep within The Deadmines.",
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
		name = "Gilnid",
		encounterID = 1763,
		portrait = I.UIEJBossGilnid,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Gilnid, a cunning and ruthless foreman, oversees the operations within The Deadmines. He is known for his sadistic methods and willingness to exploit the mine's laborers. Gilnid's presence reflects the oppressive rule of the Defias Brotherhood over their captive workers.",
			"As the leader of The Deadmines' workforce, Gilnid wields authority and cruelty in equal measure. Adventurers must confront him to strike at the heart of the pirate operation and free the miners from his oppressive rule.",
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
		name = "Mr. Smite",
		encounterID = 646,
		portrait = I.UIEJBossMrSmite,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mr. Smite is a hulking pirate enforcer who serves as the muscle behind the Defias Brotherhood's operations within The Deadmines. Known for his love of melee combat and brute force, he represents the brawn that keeps the pirates in control. Mr. Smite's presence reflects the reliance of the Defias Brotherhood on physical strength and intimidation.",
			"As a formidable melee combatant, Mr. Smite stands as a challenging adversary within The Deadmines. His imposing figure and combat skills make him a powerful obstacle for adventurers seeking to thwart the pirate operation.",
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
		name = "Captain Greenskin",
		encounterID = 647,
		portrait = I.UIEJBossCaptainGreenSkin,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Captain Greenskin is a notorious pirate captain who commands the pirates of The Deadmines. With a penchant for combat and leadership, he stands as a central figure in the Defias Brotherhood's hierarchy. Captain Greenskin's presence reflects the authority and danger posed by the pirate captain at the heart of the operation.",
			"As the leader of the pirate crew, Captain Greenskin is a formidable adversary who must be confronted to disrupt the Defias Brotherhood's activities. His cunning tactics and combat expertise make him a challenging foe for adventurers.",
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
		name = "Edwin VanCleef",
		encounterID = 639,
		portrait = I.UIEJBossEdwinVanCleef,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Edwin VanCleef, the mastermind behind the Defias Brotherhood, is the final boss of The Deadmines. Once a skilled architect who oversaw the construction of Stormwind, he turned to a life of crime after his services were undervalued. VanCleef's presence in the mines reflects the calculated and vengeful nature of the Defias Brotherhood's leader.",
			"As the ultimate challenge within The Deadmines, Edwin VanCleef is a formidable adversary. His strategic brilliance, engineering prowess, and determination to exact revenge on Stormwind make him a central figure in the Defias Brotherhood's plot.",
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
		name = "Cookie",
		encounterID = 645,
		portrait = 522210,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cookie is an unusual resident of The Deadmines, a friendly and affable goblin who serves as the chef for the pirate crew. Despite his culinary skills, he remains loyal to the Defias Brotherhood's cause. Cookie's presence in the mines reflects the unexpected and quirky elements of the pirate operation.",
			"As a unique encounter within The Deadmines, Cookie provides adventurers with a brief respite from the otherwise dangerous environment. His culinary talents and friendly demeanor make him a memorable character in the midst of the Defias Brotherhood's treachery.",
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
