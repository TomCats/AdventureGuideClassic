--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Blackrock Spire",
	instanceID = 229,
	thumbnail = 608197,
	icon = 136327,
	splash = 608236,
	mapID = 229,
	overview = "This imposing fortress, carved into the fiery core of Blackrock Mountain, represented the might of the Dark Iron clan for centuries. More recently, the black dragon Nefarian and his spawn seized the keep's upper spire and ignited a brutal war against the dwarves. The draconic armies have since allied with Warchief Rend Blackhand and his false Horde. This combined force lords over the spire, conducting horrific experiments to bolster its ranks while plotting the meddlesome Dark Irons' downfall.",
	{
		name = "Highlord Omokk",
		encounterID = 9196,
		portrait = 607645,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The imposing ogre known as Highlord Omokk commands Lower Blackrock Spire with an iron fist. He is a brutal leader who rules with cruelty, known for his ruthless tactics and merciless demeanor.",
			"Origins shrouded in mystery, Highlord Omokk rose to power within the savage ogre clans, making him a formidable enforcer within the Spire. He ensures that the ogres maintain control over this part of the fortress, and his presence is a testament to the brutality of Lower Blackrock Spire.",
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
		name = "Shadow Hunter Vosh'gajin",
		encounterID = 9236,
		portrait = 607769,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Revered among the Shadow Hunter tribe of trolls, Shadow Hunter Vosh'gajin has chosen Lower Blackrock Spire as her sanctuary. She is a formidable adversary to anyone who dares to intrude, known for her mastery of dark magic and unwavering loyalty to the Blackrock orcs.",
			"Vosh'gajin's enigmatic nature and her affiliation with the Blackrock orcs have solidified her position as a central figure within the Spire. Her shadowy powers and command over dark forces make her a potent force to be reckoned with.",
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
		name = "War Master Voone",
		encounterID = 9237,
		portrait = 607810,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"A fearsome orc warrior, War Master Voone stands as the commander of the Blackrock orcs in Lower Blackrock Spire. His martial prowess and unwavering devotion to Warchief Rend Blackhand have propelled him to a crucial role in the Spire's hierarchy.",
			"Voone's responsibility includes training and leading the orcish forces within the Spire, ensuring their readiness for any challenge. His presence is integral to maintaining the Blackrock orcs' dominance within this stronghold.",
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
		name = "Mother Smolderweb",
		encounterID = 10596,
		portrait = 607719,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"In the darkest depths of Lower Blackrock Spire dwells Mother Smolderweb, a massive and relentless arachnid. She is notorious for her deadly web-spinning abilities and her unyielding aggression towards intruders.",
			"Smolderweb's lair is a testament to the dangers that lurk within the Spire, and her presence serves as a reminder that even the most tenacious adventurers must tread carefully in this treacherous domain.",
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
		name = "Urok Doomhowl",
		encounterID = 10584,
		portrait = 607801,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Powerful and ruthless, Urok Doomhowl commands the Scarshield Legion within Lower Blackrock Spire. His tactical brilliance and ability to unite the Blackrock orcs and ogres make him a pivotal figure in the Spire's defense.",
			"Doomhowl's role involves rallying the forces of the Legion, ensuring they stand ready to defend their territory. His presence in the Spire represents the formidable alliance of the Blackrock orcs and the ogres under his command.",
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
		name = "Quartermaster Zigris",
		encounterID = 9736,
		portrait = 607751,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Within the logistical heart of Lower Blackrock Spire, Quartermaster Zigris, a cunning orc, manages the essential operations, supplying the Blackrock orcs with weapons, armor, and resources. His role is vital to the Spire's function as a stronghold of the Blackrock clan.",
			"Zigris's resourcefulness and dedication to ensuring the Blackrock orcs are well-equipped have earned him a central position within the Spire's hierarchy.",
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
		name = "Gizril the Slavener",
		encounterID = 10268,
		portrait = 607615,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"In the upper reaches of Blackrock Spire, Gizrul the Slavener, a fearsome black drake, has taken up residence. He is known for his insatiable hunger for destruction and his fiery breath.",
			"Gizrul's presence within the Spire serves as a chilling reminder of the raw, unbridled power that the Blackwing orcs wield, especially in their mastery over dragons and dark experiments.",
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
		name = "Halycon",
		encounterID = 10220,
		portrait = 607634,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Guarding the halls of Upper Blackrock Spire, Halycon, a massive core hound, is a two-headed behemoth that reflects the raw elemental forces harnessed by the Blackrock orcs. Its fiery nature and ferocious temperament make it a formidable obstacle for any intruders.",
			"Halycon's presence within the Spire stands as a testament to the dangers adventurers face when delving into this treacherous domain.",
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
		name = "Overlord Wyrmthalak",
		encounterID = 9568,
		portrait = 607737,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Overlord Wyrmthalak, a cunning and fierce warrior, commands the Blackrock orcs in Upper Blackrock Spire. His mastery of both martial combat and dark magic is legendary, making him a driving force behind the Blackrock orcs' efforts to maintain control.",
			"Wyrmthalak's strategic brilliance and unwavering loyalty to Warchief Rend Blackhand have earned him a central role within the Spire's hierarchy.",
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
		name = "Pyroguard Emberseer",
		encounterID = 9816,
		portrait = 607748,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Within the upper levels of Blackrock Spire, Pyroguard Emberseer, a formidable fire elemental, stands as a loyal servant of the Blackrock orcs. He harnesses the destructive power of flames to protect their interests.",
			"Emberseer's fiery presence within the Spire is a symbol of the elemental forces that the Blackrock clan has harnessed, and his formidable abilities make him a potent guardian.",
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
		name = "Warchief Rend Blackhand",
		encounterID = 10429,
		portrait = 607813,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Warchief Rend Blackhand, the charismatic and ruthless leader of the Blackrock orcs, seeks to expand their dominion within Upper Blackrock Spire. His ambition and determination have made him a central figure in the Spire's hierarchy and a formidable adversary.",
			"Rend's leadership is marked by his unwavering loyalty to the Blackrock clan and his willingness to do whatever it takes to secure their dominance in the fortress.",
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
		name = "Gyth",
		encounterID = 10339,
		portrait = 607632,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Gyth, a monstrous chromatic dragon, has been enslaved by the Blackwing orcs within Upper Blackrock Spire. His terrifying presence serves as a grim reminder of the Blackwing clan's mastery over dragons and dark experiments.",
			"Gyth's captivity within the Spire is a chilling testament to the lengths to which the Blackwing orcs will go to harness forbidden powers.",
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
		name = "The Beast",
		encounterID = 10430,
		portrait = 607786,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Beast, a massive core hound, guards the halls of Upper Blackrock Spire. It is a two-headed behemoth that reflects the raw elemental forces harnessed by the Blackrock orcs. Its fiery nature and ferocious temperament make it a formidable obstacle for any intruders.",
			"The Beast's presence within the Spire stands as a testament to the dangers adventurers face when delving into this treacherous domain.",
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
		name = "General Drakkisath",
		encounterID = 10363,
		portrait = 607612,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"General Drakkisath, a high-ranking officer in the Blackrock army, stands as the final boss of Upper Blackrock Spire. Known for his strategic brilliance and loyalty to Warchief Rend Blackhand, he plays a pivotal role in defending the upper levels of the Spire and ensuring the dominance of the Blackrock clan.",
			"Drakkisath's presence within the Spire represents the unwavering commitment of the Blackrock orcs to maintain control of this formidable fortress.",
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
