--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Shadowfang Keep",
	instanceID = 64,
	thumbnail = 522358,
	icon = 136357,
	splash = 526410,
	mapID = 33,
	overview = "Looming over Pyrewood Village from the southern bluffs of Silverpine Forest, Shadowfang Keep casts a shadow as dark as its legacy. Sinister forces occupy these ruins, formerly the dwelling of the mad archmage Arugal's worgen. The restless shade of Baron Silverlaine lingers, while Lord Godfrey and his cabal of erstwhile Gilnean noblemen plot against their enemies both living and undead.",
	{
		name = "Rethilgore",
		encounterID = 3914,
		portrait = I.UIEJBossRethilgore,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Rethilgore is a wretched worgen who has succumbed to the dark curse of Shadowfang Keep. Once a victim of the relentless curse that plagues the keep's inhabitants, Rethilgore has become a twisted and malevolent creature. His presence within the accursed keep reflects the enduring influence of the curse and the horrors that await those who venture into its depths.",
			"Rethilgore's transformation into a monstrous worgen and his role as a guardian of Shadowfang Keep make him a formidable adversary for intruders. His existence serves as a chilling reminder of the dreadful fate that awaits those who fall victim to the curse.",
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
		name = "Fel Steed / Shadow Charger",
		encounterID = 3864,
		portrait = I.UIEJBossFelSteed,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Fel Steed and Shadow Charger are dark and spectral steeds that serve as loyal companions to Baron Silverlaine, the lord of Shadowfang Keep. These ghostly steeds have been imbued with unholy power and are manifestations of the dark magic that permeates the keep. Their presence within the keep symbolizes the twisted and supernatural forces at work within its walls.",
			"Fel Steed and Shadow Charger's spectral nature and their role as loyal companions to Baron Silverlaine make them eerie and formidable adversaries for intruders. Their existence serves as a haunting testament to the supernatural horrors that await those who challenge the denizens of the keep.",
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
		name = "Razorclaw the Butcher",
		encounterID = 3886,
		portrait = I.UIEJBossRethilgore,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Razorclaw the Butcher is a monstrous and sadistic worgen who revels in the pain and suffering of others. He serves as one of the ruthless enforcers within Shadowfang Keep, responsible for tormenting prisoners and disposing of intruders. Razorclaw's presence within the keep reflects the cruelty and malevolence that define its inhabitants.",
			"Razorclaw's savage nature and his role as an enforcer make him a fearsome adversary for anyone who ventures into Shadowfang Keep. His existence serves as a chilling reminder of the torment and brutality that await those who cross the keep's threshold.",
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
		name = "Baron Silverlaine",
		encounterID = 3887,
		portrait = 522206,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baron Silverlaine is the lord and master of Shadowfang Keep, a once-noble figure who has been consumed by the darkness that plagues the keep. He rules over the cursed fortress with an iron fist, commanding the spectral and wretched creatures within. Baron Silverlaine's presence within the keep reflects the tragic transformation of a once-noble soul into a malevolent force.",
			"Baron Silverlaine's mastery of dark magic and his role as the ruler of Shadowfang Keep make him a formidable and tragic adversary for those who dare to challenge him. His existence serves as a haunting testament to the corruption and despair that define the cursed keep.",
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
		name = "Commander Springvale",
		encounterID = 4278,
		portrait = 522213,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Commander Springvale is a loyal servant of Baron Silverlaine and a formidable worgen warrior within Shadowfang Keep. He stands as a sentinel and protector of the keep, ready to defend it against intruders. Commander Springvale's presence reflects the unwavering loyalty of the keep's inhabitants to their cursed lord.",
			"Commander Springvale's martial prowess and his role as a guardian make him a formidable adversary for those who venture into Shadowfang Keep. His existence serves as a reminder of the fierce defenders who stand ready to protect their dark lord.",
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
		name = "Odo the Blindwatcher",
		encounterID = 4279,
		portrait = I.UIEJBossOdoTheBindwatcher,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Odo the Blindwatcher is a blind and enigmatic figure who serves the denizens of Shadowfang Keep as a seer and mystic. Despite his blindness, he possesses an uncanny ability to sense and perceive intruders. Odo's presence within the keep reflects the mystical and supernatural elements that are intertwined with its cursed halls.",
			"Odo's mysterious powers and his role as a seer make him an enigmatic adversary for those who explore Shadowfang Keep. His existence serves as a reminder of the otherworldly forces that influence the keep's fate.",
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
		name = "Fenrus the Devourer",
		encounterID = 4274,
		portrait = 607634,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Fenrus the Devourer is a monstrous worgen known for his insatiable hunger and his role as a guardian of Shadowfang Keep. He is responsible for hunting down and consuming intruders who dare to enter the keep. Fenrus's presence reflects the savage and predatory nature of the worgen within the cursed fortress.",
			"Fenrus's relentless hunger and his role as a guardian make him a fearsome adversary for anyone who ventures into Shadowfang Keep. His existence serves as a chilling reminder of the ravenous creatures that lurk within its shadows.",
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
		name = "Wolf Master Nandos",
		encounterID = 3927,
		portrait = I.UIEJBossOdoTheBindwatcher,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Wolf Master Nandos is a worgen who has embraced his lupine form and serves as a trainer and leader of the worgen packs within Shadowfang Keep. He commands these savage creatures with unwavering loyalty to Baron Silverlaine. Nandos's presence within the keep reflects the primal and bestial nature of its inhabitants.",
			"Wolf Master Nandos's mastery over worgen packs and his role as a trainer make him a formidable adversary for those who challenge the keep's defenses. His existence serves as a reminder of the feral and relentless forces that protect Shadowfang Keep.",
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
		name = "Archmage Arugal",
		encounterID = 4275,
		portrait = I.UIEJBossArchmageArugal,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archmage Arugal is a powerful and twisted mage who is responsible for summoning worgen into the region of Silverpine Forest and ultimately cursing Shadowfang Keep. He became obsessed with the idea of creating a loyal army and inadvertently unleashed a terrible curse. Arugal's presence within the keep reflects the cataclysmic consequences of his reckless magic.",
			"Archmage Arugal's mastery of arcane and summoning magic, as well as his role as the catalyst for the worgen curse, make him a formidable and tragic adversary for those who venture into Shadowfang Keep. His existence serves as a haunting reminder of the price of unchecked ambition and dark experimentation.",
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
