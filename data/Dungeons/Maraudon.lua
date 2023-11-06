--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Maraudon",
	instanceID = 232,
	thumbnail = 608209,
	icon = 136345,
	splash = 608248,
	mapID = 349,
	overview = "According to legend, Zaetar, son of Cenarius, and the earth elemental princess Theradras begot the barbaric centaur race. Shortly after the centaur's creation, the ruthless creatures murdered their father. The grief-stricken Theradras is said to have trapped her lover's spirit within Maraudon, corrupting the region. Now, vicious centaur ghosts and twisted elemental minions roam every corner of the sprawling caves.",
	{
		name = "Noxxion",
		encounterID = 13282,
		portrait = 607728,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Noxxion is a malevolent elemental lord who dwells within the putrid waters of Maraudon's inner sanctum. His watery form and toxic abilities have corrupted the once-pure waters of the cavern. Noxxion's presence in Maraudon is a stark reminder of the elemental chaos that has consumed the underground springs.",
			"Noxxion's control over the tainted waters and his relentless assault on intruders underscore the environmental devastation wrought by his presence in Maraudon. He serves as a testament to the dangers of unchecked elemental forces.",
			{ heading = "Overview" },
			"The first boss in the Ambershard side of Maraudon, Noxxion is an elemental. Noxxion is a popular kill for acquiring nature resistance gear, especially the trinket Heart of Noxxion. Noxxion will split into multiple versions of itself during the encounter that need to be defeated.",
			{
				role = DAMAGE,
				"Damage dealers should simply focus their damage output on Noxxion. When Noxxion splits into multiple smaller versions, defeat them on at a time then return to Noxxion.",
			},
			{
				role = HEALER,
				"The mechanics in this fight should simply be healed through.",
			},
			{
				role = TANK,
				"Tanking Noxxion, it is recommended to pull Noxxion out of the water and onto the land so that area of effect attacks.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Razorlash",
		encounterID = 12258,
		portrait = 607756,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Razorlash is a monstrous thorned terror that has taken root within the lush greenery of Maraudon's inner sanctum. Its massive form and deadly thorns have overrun the verdant growth, twisting it into a dangerous and chaotic realm. Razorlash's presence within Maraudon represents the perversion of nature and the struggle to contain its unchecked power.",
			"Razorlash's command over the corrupted flora and its relentless aggression against intruders emphasize the ecological disaster brought about by its presence in Maraudon. It serves as a grim reminder of the dangers that can arise when the forces of nature run amok.",
			{ heading = "Overview" },
			"Razlorash is the second boss on the Ambershard side of Maradon and is a straight forward fight.",
			{
				role = DAMAGE,
				"Melee damage dealers should be sure to stand behind Razorlash while maximizing their damage output, to avoid {spell:} Cleave. Ranged damage dealers should stand at maximum range to avoud being affected by {spell:} Puncture or {spell:} Cleave.",
			},
			{
				role = HEALER,
				"While healing, pay careful attention to who is being affected by {spell:} Puncture. It should be the tank, but if the 10 second bleed lands on another player, they will need to be your focus until the effect wears off. Stand at maximum range to avoid being affected by {spell:} Puncture or {spell:} Cleave.",
			},
			{
				role = TANK,
				"While tanking Razorlash, face it away from the other players. This is a simple tank encounter.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Lord Vyletongue",
		encounterID = 12236,
		portrait = 607699,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Vyletongue is a sinister satyr who has established a stronghold within Maraudon's inner sanctum. His dark sorcery and malevolent presence have corrupted the once-pure heart of the cavern. Lord Vyletongue's presence in Maraudon symbolizes the insidious influence of the Burning Legion on the sacred earth.",
			"Lord Vyletongue's mastery of dark magic and his oppressive rule over the inner sanctum highlight the malevolent forces at work in Maraudon. He serves as a reminder of the perilous threat posed by the Legion's agents within the sacred cavern.",
			{ heading = "Overview" },
			"Lord Vyletongue is the first boss on the Shadowshard side of Maraudon. Vyletongue is a demon, who has two elites adds with him. Vyletongue uses ranged abilities where possible. He will use Smoke Bomb to stun the group for a few seconds, and Blink away from the group to use his ranged abilities.",
			{
				role = DAMAGE,
				"Typically, the main damage focus in the fight is to handle Vyletongue first, and his two adds afterwards. If you have a Hunter or Warlock utilize crowd control on the adds until Vyletongue is defeated. Stack up on the tank so that the Vyletongue does not use his {spell:} Multi-Shot ability. When Vyletongue uses {spell:} Blink to get away, stack up on the tank again.",
			},
			{
				role = HEALER,
				"The healer should stack up with the rest of the group and focus their output on the tank. There will be some raid damage taken from {spell:} Multi-Shot and the adds, so stay aware of the party's health while focusing the tank.",
			},
			{
				role = TANK,
				"Tank Vyletongue and his adds with the rest of the group stacked on top of you. If Vyletongue {spell:} Blink away, stack right back up on him. Maintain threat on the adds while the group focuses down Vyletongue, then switch to the adds.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Celebras the Cursed",
		encounterID = 12225,
		portrait = 607562,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Celebras the Cursed is a tragic figure who was once a guardian of Maraudon but has been twisted by corruption. His existence within the sacred cavern is a poignant reminder of the cataclysmic events that have befallen the area. Celebras's presence in Maraudon symbolizes the desperate struggle to restore balance and purity to the cavern's depths.",
			"Celebras's inner turmoil and his role as a guardian-turned-cursed entity highlight the tragic consequences of the elemental and demonic influences that have ravaged Maraudon. His tale is one of redemption and restoration amidst the turmoil.",
			{ heading = "Overview" },
			"information goes here..",

			--This level 49 elite is the last boss in the front section of Maraudon. Celebras will summon adds during the fight. After defeating Celebras the Cursed, you can complete your quest for the Sceptar of Celebras. This item is invaluable by allowing you to teleport to this location, bypassing the Orange, Purple, and Poison Falls parts of the instance without having to clear them.
			{
				role = DAMAGE,
				"",

				--This fight requires DPS to focus their output and interrupts on Celebras the Cursed himself. If DPS kill one of the adds instead, the boss will summon another add.
			},
			{
				role = HEALER,
				"",

				--This fight requires the healer to focus on the tank while remaining aware of which players are being affected by other mechanics like [Entangling Roots]. Try to maximize AoE healing and rotating your healing target during [Twisted Tranquility].
			},
			{
				role = TANK,
				"",

				--Celebras and his adds should be tanked where they stand. Use your interrupts in coordination with DPS. Try to keep threat on the boss as well as all of the adds.
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Landslide",
		encounterID = 12203,
		portrait = 607684,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Landslide is a colossal earth elemental that roams the rocky passages of Maraudon's inner sanctum. Its immense size and destructive force have reshaped the underground terrain, turning it into a treacherous labyrinth. Landslide's presence within Maraudon reflects the elemental upheaval that has gripped the subterranean caverns.",
			"Landslide's control over the rocky terrain and its formidable strength make it a formidable and ever-moving obstacle for those who navigate Maraudon. Its existence is a testament to the cataclysmic forces that have shaped the cavern's landscape.",
			{ heading = "Overview" },
			"information goes here..",

			--Landslide is a level 50 elite behemoth in the Earth Song Falls region of Maraudon, resembling the Primordial Behemoth Trash in the area. The boss is at the top of a spiral ramp which is a right turn where you would turn left to go to Princess Theradras. The boss hits hard and has high armor, but is nonetheless manageable. Landslide will additionally summon some Theradrim Shardling throughout the encounter.
			{
				role = DAMAGE,
				"",

				--All DPS should focus their damage output on Landslide, not on the adds he summons because they despawn when he dies. Ranged DPS should stay at maximum range to avoid knockback and stuns.
			},
			{
				role = HEALER,
				"",

				--Heal this fight from maximum distance to avoid any knockback. While healing the tank, avoid being swarmed with Theradrim Shardlings.
			},
			{
				role = TANK,
				"",

				--The tank in this fight should engage Landslide where he stands, with their back to a wall. Try to establish threat on the adds when they spawn to keep them off your healer.
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Tinkerer Gizlock",
		encounterID = 13601,
		portrait = 607796,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tinkerer Gizlock is a cunning goblin engineer who has established a workshop within Maraudon's inner sanctum. His ingenious gadgets and destructive creations have added chaos to the cavern's already tumultuous environment. Tinkerer Gizlock's presence in Maraudon represents the volatile combination of goblin innovation and the cavern's inherent dangers.",
			"Tinkerer Gizlock's mastery of engineering and his relentless tinkering with volatile devices make him a formidable adversary within Maraudon. His role serves as a testament to the unforeseen complications that can arise from the fusion of technology and the cavern's chaotic energies.",
			{ heading = "Overview" },
			"information goes here..",

			--Gizlock is a level 50 elite, who takes after an Engineering Physical DPS class. The boss is found at the bottom of the ramp and following chamber before Princess Theradras, the same area where Landslide can be found at the top of the ramp. Tinkerer Gizlock can also be approached after Rotgrip by swimming to the area of the pool opposite from the Princess, and following the ramp onto the ledge and into Gizlock's chamber. The boss' loot table isn't too large, but two of the three blue drops are Pre-Raid BiS. Gizlock's Hypertech Buckler is pre-raid BiS for Restoration Shamans. Inventor's Focal Sword is pre-raid BiS for Warlocks.
			{
				role = DAMAGE,
				"",

				--During this encounter, both Melee and Ranged DPS players should stack up behind the boss, to avoid taking damage form [Goblin Dragon Gun], and to keep Gizlock from turning around and using his ranged [Shoot] ability. Focus your DPS output on the boss without overcoming your Tank's threat for a smooth kill.
			},
			{
				role = HEALER,
				"",

				--Healers should stack up with Ranged and Melee DPS on the back of Gizlock, in Melee range. This prevents the boss from using his [Shoot] ability to target you. The Tank will take consistent damage from Gizlock's attacks and [Goblin Dragon Gun], but be aware of when the boss uses [Bomb] to damage the other members of the group.
			},
			{
				role = TANK,
				"",

				--Tanking this fight is not incredibly complicated. Face the boss away from the group, and maintain a steady lead on the threat table.
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Rotgrip",
		encounterID = 13596,
		portrait = 607761,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rotgrip is a monstrous and ravenous hydra that lurks within the murky waters of Maraudon's inner sanctum. Its multiple heads and insatiable appetite have made it a feared inhabitant of the subterranean pools. Rotgrip's presence within Maraudon underscores the dangerous and diverse wildlife that inhabits the cavern.",
			"Rotgrip's voracious appetite and its deadly aquatic attacks serve as a constant threat to those who venture into Maraudon's inner sanctum. Its existence is a testament to the untamed and perilous nature of the cavern's aquatic ecosystem.",
			{ heading = "Overview" },
			"information goes here..",

			--Dwelling in the waters beneath Princess Theradras' platform, the albino crocolisk Rotgrip awaits the group. Sharing these waters are a number of hydra which your group will need to clear to provide space for you to engage Rotgrip. Rotgrip does hit pretty hard compared to other bosses and mobs at this level, so be sure that DPS do not rip threat off of the tank or they will be met with a swift demise.
			{
				role = DAMAGE,
				"",

				--Priority should be to maximize damage output while ensuring that no player overcomes the tank on the threat table. Rotgrip will likely make quick work of DPS classes, especially cloth wearers. Warlocks or Shaman should buff the group with [Unending Breath] or [Water Breathing], to allow for ease in fighting Rotgrip without having to track your breath or stay on top of the water.
			},
			{
				role = HEALER,
				"",

				--While healing, focus on keeping the tank topped off. Rotgrip can deal large amounts of damage at a time, and the [Fatal Bite] bleed DoT paired with strong melee attacks will require strong heals to counteract.
			},
			{
				role = TANK,
				"",

				--Use a ranged pull to engage the boss and bring him up to the surface of the water if possible. Face the boss away from the group. Use defensive cooldowns when you receive [Fatal Bite], or are coming close to the end of the encounter to secure Rotgrip's defeat.
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Princess Theradras",
		encounterID = 12201,
		portrait = 607747,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Princess Theradras is a powerful earth elemental lordess who has claimed Maraudon as her domain. Her dominion over the sacred cavern and her dark ambitions have made her a formidable and reviled figure. Princess Theradras's presence in Maraudon represents the ongoing struggle to cleanse and purify the cavern's depths.",
			"Princess Theradras's mastery over earth magic and her oppressive rule over Maraudon highlight the ongoing conflict between elemental forces and those who seek to restore the cavern to its former purity. Her reign as the mistress of Maraudon is a grim reminder of the cavern's continued corruption.",
			{ heading = "Overview" },
			"information goes here..",

			--Princess Theradras is the last boss of Maraudon, and is highly sought after for her Blackstone Ring drop which serves as pre-raid BiS for nearly all physical classes.
			{
				role = DAMAGE,
				"",

				--Ranged DPS should stay at maximum range to not be caught up in [Dust Field]. Keep an eye out for the [Boulder] that Theradras will be throwing around the platform. Melee DPS will not be able to avoid the damaging pushback of [Dust Field]. So, use movement increasing abilities if possible to help you quickly outrange it and run back in. Maximize your damage output while ensuring that the Tank remains at the top of the threat table. [Fear Ward], [Tremor Totem], and [Berserker Rage] can be used to break the fear effect from [Repulsive Gaze].
			},
			{
				role = HEALER,
				"",

				--Focus healing the tank from a position which is maximum range from Theradras to avoid [Dust Field], but are still able to reach the rest of the group with your healing spells as well. Use [Fear Ward] or [Tremor Totem] if available to negate the effects of [Repulsive Gaze]. Keep an eye out for [Boulder] that Princess Theradras may throw in your direction, as well!
			},
			{
				role = TANK,
				"",

				--Tank the Princess at the back of her platform to provide the rest of the group with plenty of room to spread out. [Berserker Rage] can be used to break the fear effect from [Repulsive Gaze].
			}
		},
		abilities = {
			
		}
	},
})
