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
		name = "Razorlash",
		encounterID = 12258,
		portrait = 607756,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Razorlash is a monstrous thorned terror that has taken root within the lush greenery of Maraudon's inner sanctum. Its massive form and deadly thorns have overrun the verdant growth, twisting it into a dangerous and chaotic realm. Razorlash's presence within Maraudon represents the perversion of nature and the struggle to contain its unchecked power.",
			"Razorlash's command over the corrupted flora and its relentless aggression against intruders emphasize the ecological disaster brought about by its presence in Maraudon. It serves as a grim reminder of the dangers that can arise when the forces of nature run amok.",
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
		name = "Lord Vyletongue",
		encounterID = 12236,
		portrait = 607699,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Lord Vyletongue is a sinister satyr who has established a stronghold within Maraudon's inner sanctum. His dark sorcery and malevolent presence have corrupted the once-pure heart of the cavern. Lord Vyletongue's presence in Maraudon symbolizes the insidious influence of the Burning Legion on the sacred earth.",
			"Lord Vyletongue's mastery of dark magic and his oppressive rule over the inner sanctum highlight the malevolent forces at work in Maraudon. He serves as a reminder of the perilous threat posed by the Legion's agents within the sacred cavern.",
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
