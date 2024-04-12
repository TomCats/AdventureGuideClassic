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
	season = true,
	overview = "It is said the Deadmines' gold deposits once accounted for a third of Stormwind's treasure reserves. Amid the chaos of the First War, the mines were abandoned and later thought to be haunted, leaving them relatively untouched until the Defias Brotherhood--a group of former laborers turned brigands--claimed the labyrinth as a base of operations for its subversive activities against Stormwind.",
	{
		name = "Rhahk'Zor",
		encounterID = 644,
		portrait = 607777,
		loot = { 5187, 872 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rhahk'Zor, a massive ogre, is one of the earliest challenges adventurers face within The Deadmines. Known for his immense strength and brutal tactics, he serves as a formidable guardian of the pirate-infested underground complex. Rhahk'Zor's presence in The Deadmines reflects the danger and lawlessness that have taken hold of the once-prosperous mine.",
			{ heading = "Overview" },
			"Rhak'zor, the first boss in the Deadmines, is a ogre accompanied by two Defias Watchmen who attack from range. Damage dealers should defeat the Defias Watchmen first, avoid {spell:6304} to minimize damage, and use crowd control abilities to manage the Watchmen's damage output. Healers should focus on healing the tank through the damage from {spell:6304}. Tanks should maximize threat on Rhak'zor to enable full damage output, maintain high threat, and be cautious of {spell:6304}.",
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
		loot = { 5194, 5195, 2169, 1937 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Sneed's Shredder, a hulking mechanical monstrosity, is a creation of the cunning engineer, Sneed. It guards the inner chambers of The Deadmines and represents the technological ingenuity of the Defias Brotherhood. Sneed's Shredder's presence in the mines reflects the combination of engineering prowess and criminal intent that fuels the pirate operation.",
			{ heading = "Overview" },
			"Sneed's Shredder, the second boss in The Deadmines, is a mechanical shredder piloted by Sneed. After the Shredder is defeated, Sneed is ejected and becomes the new target. Damage dealers should focus on dealing as much damage as possible to Sneed after his Shredder crumbles. Healers should concentrate their healing on the tank. Tanks should maximize threat on the boss to allow damage dealers to go all-out, maintain threat to prevent {spell:3603} on others, and be ready for {spell:676}, using weapon-independent abilities to keep threat.",
			{
				role = DAMAGE,
				"After Sneed's Shredder crumbles, focus on dealing as much damage as possible to Sneed.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank.",
			},
			{
				role = TANK,
				"Maximize threat on the boss for damage dealers to go all-out. Maintain threat to prevent {spell:3603} on others. After Sneed's Shredder falls, Sneed appears with a new threat table. {spell:355} Sneed and build threat. Be ready for {spell:676} and use weapon-independent abilities to keep threat.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Gilnid",
		encounterID = 1763,
		portrait = I.UIEJBossGilnid,
		loot = { 5199, 1156 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Gilnid, a cunning and ruthless foreman, oversees the operations within The Deadmines. He is known for his sadistic methods and willingness to exploit the mine's laborers. Gilnid's presence reflects the oppressive rule of the Defias Brotherhood over their captive workers.",
			{ heading = "Overview" },
			"Gilnid, the third boss in The Deadmines, is a level 20 elite goblin accompanied by Goblin Craftsmen and Engineers. Damage dealers should focus on the adds before engaging Gilnid, being careful not to generate too much threat or aggro other mobs. Healers should be aware of {spell:5213} on the tank, providing overhealing when necessary and watching healing aggro at the start of the fight. Tanks should also be aware of {spell:5213}, which significantly reduces threat generation, and should clear the room of adds before engaging Gilnid.",
			{
				role = DAMAGE,
				"Focus on the adds before engaging Gilnid, beware of generating too much threat. Often the room is crowded so it is critical for damage dealers to not aggro other mobs.",
			},
			{
				role = HEALER,
				"Before of {spell:5213} debugg on the tank, provide overhealing when the tank is afflicted by this debuff. Watch healing aggro at the start of the fight while the tank picks up the adds.",
			},
			{
				role = TANK,
				"Beware of the {spell:5213} debuff, while afflicted by it you will generate significantly less threat. Players should clear the room of adds first, before engaging Gilnid.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Mr. Smite",
		encounterID = 646,
		portrait = I.UIEJBossMrSmite,
		loot = { 7230, 5196, 5192 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mr. Smite is a hulking pirate enforcer who serves as the muscle behind the Defias Brotherhood's operations within The Deadmines. Known for his love of melee combat and brute force, he represents the brawn that keeps the pirates in control. Mr. Smite's presence reflects the reliance of the Defias Brotherhood on physical strength and intimidation.",
			{ heading = "Overview" },
			"Mr. Smite, the fourth boss in The Deadmines, is a Tauren pirate accompanied by two stealthed level 19 elite Defias Blackguards. Damage dealers should focus on the Defias Blackguards before engaging Mr. Smite. Healers should manage their mana pool while damage dealers fight off the Defias Blackguards, noting that the tank will take significantly more damage in the second phase of the fight when Mr. Smite switches to dual wield. Tanks should maximize threat so damage dealers can go all-out, keeping defensive cooldowns for the second phase when Mr. Smite deals significantly increased damage while dual-wielding.",
			{
				role = DAMAGE,
				"Focus on both Defias Blackguard before engaging Mr. Smite.",
			},
			{
				role = HEALER,
				"Manage your mana pool while damage dealers fight off the Defias Blackguard. Note that the tank will take significantly more damage in the second phase of the fight, when Mr. Smite switches to dual wield.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible, so the damage dealers can go all-out. The encounter has three phases, each of them having {spell:6432} as a transition window. Keep your defensive cooldowns for the second phase, as Mr. Smite deals significantly increased damage while dual-wielding.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Captain Greenskin",
		encounterID = 647,
		portrait = I.UIEJBossCaptainGreenSkin,
		loot = { 5201, 5200, 10403 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Captain Greenskin is a notorious pirate captain who commands the pirates of The Deadmines. With a penchant for combat and leadership, he stands as a central figure in the Defias Brotherhood's hierarchy. Captain Greenskin's presence reflects the authority and danger posed by the pirate captain at the heart of the operation.",
			{ heading = "Overview" },
			"Captain Greenskin, the fifth boss in The Deadmines, is a level 20 elite goblin pirate accompanied by a level 20 elite Defias Squallshaper, a level 20 elite Defias Pirate, and a level 15 non-elite Defias Companion. Damage dealers should focus on the two adds before dealing damage to Captain Greenskin. Healers should manage their mana pool while damage dealers fight off the adds. Tanks should maximize threat so damage dealers can go all-out. Be careful when approaching Captain Greenskin's location, as it is very easy to pull him accidentally, likely resulting in a wipe.",
			{
				role = DAMAGE,
				"Focus on the two adds before dealing damage to Captain Greenskin.",
			},
			{
				role = HEALER,
				"Manage your mana pool while damag dealers fight off the adds.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible, so the damage dealers can go all-out.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Edwin VanCleef",
		encounterID = 639,
		portrait = I.UIEJBossEdwinVanCleef,
		loot = { 5193, 5202, 5191, 10399 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Edwin VanCleef, the mastermind behind the Defias Brotherhood, is the final boss of The Deadmines. Once a skilled architect who oversaw the construction of Stormwind, he turned to a life of crime after his services were undervalued. VanCleef's presence in the mines reflects the calculated and vengeful nature of the Defias Brotherhood's leader.",
			{ heading = "Overview" },
			"Edwin VanCleef, the final boss in The Deadmines, is a human pirate accompanied by stealthed Defias Blackguards. Two more Blackguards appear during the fight. Damage dealers should focus on the first set of adds, then burn VanCleef when he reaches half health, ignoring the second set of adds. Healers should manage their mana due to the fight's length. Tanks should be aware of VanCleef's high damage, use {spell:355} on the first set of adds, and maintain aggro while damage dealers kill them. The second set of adds should be crowd controlled or ignored while the group focuses on VanCleef.",
			{
				role = DAMAGE,
				"Damage dealers should focus on killing the first set of adds that spawn when Edwin VanCleef is engaged. VanCleef will cast {spell:5200} to spawn a new set of adds when he reaches half health. Burn the boss instead of the adds.",
			},
			{
				role = HEALER,
				"Healers should try to manage their mana, since the fight is quite long.",
			},
			{
				role = TANK,
				"Tanks should beware of his high damage. VanCleef spawns four total adds during the duration of the fight. {spell:355} the first set of two adds and maintain aggro while damage dealers kill them. The second set of adds should be crowd controlled or ignored, while the group focuses on burning VanCleef.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Cookie",
		encounterID = 645,
		portrait = 522210,
		loot = { 5198, 5197,  },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cookie is an unusual resident of The Deadmines, a friendly and affable goblin who serves as the chef for the pirate crew. Despite his culinary skills, he remains loyal to the Defias Brotherhood's cause. Cookie's presence in the mines reflects the unexpected and quirky elements of the pirate operation.",
			{ heading = "Overview" },
			"Cookie, an optional boss in The Deadmines, can be found after defeating Mr. Smite or VanCleef. He is known for his wand drop, Cookie's Stirring Rod, which is highly desired by casters. Damage dealers should interrupt {spell:5174} to prevent Cookie from healing. Healers should focus their healing on the tank. Tanks should maximize threat so damage dealers can go all-out and interrupt {spell:5174} when possible.",
			{
				role = DAMAGE,
				"Damage dealers should take into consideration the fact that they can interrupt {spell:5174} in order to prevent him from healing.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank.",
			},
			{
				role = TANK,
				"Focus on doing as much threat as possible, so the damage dealers can go all-out. Look out for the cast {spell:5174} and try to interrupt it.",
			}
		},
		abilities = {
			
		}
	},
})
