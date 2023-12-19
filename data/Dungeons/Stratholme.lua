--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Stratholme",
	instanceID = 236,
	thumbnail = 608216,
	icon = 136359,
	splash = 608255,
	mapID = 329,
	overview = "Stratholme was once the jewel of northern Lordaeron, but today it is remembered for its harrowing fall to ruin. It was here that Prince Arthas turned his back on the noble paladin Uther Lightbringer, slaughtering countless residents believed to be infected with the horrific plague of undeath. Ever since, cursed Stratholme has been marred by death, betrayal, and hopelessness.",
	{
		name = "Skul",
		encounterID = 10393,
		portrait = 607804,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Skul, the Necropolis' caretaker, is a loyal servant of the Scourge and is responsible for overseeing the undead within Stratholme. He is known for his eerie demeanor and his role as a sentinel of the cursed city. Skul's presence within Stratholme reflects the grim authority of the Scourge over the city's ruins.",
			"Skul's spectral nature and his role as the caretaker make him a haunting adversary for those who venture into Stratholme. His existence serves as a chilling reminder of the city's fall to the Scourge.",
			{ heading = "Overview" },
			"information goes here..",

			--Skul is a rare mob who spawns near the main entrance (the gates) of Stratholme. Many groups approach the instance from the side entrance, and will not pass by Skul on the way. Warlocks will hope to encounter Skul to obtain their Pre-BiS wand, Skul's Ghastly Touch.
			{
				role = DAMAGE,
				"",

				--Try to interrupt Skul's abilities as much as possible. Let your tank maintain threat while you burn Skul down.

			},
			{
				role = HEALER,
				"",

				--Keep your tank topped off as much as possible.

			},
			{
				role = TANK,
				"",

				--This fight is essentially a tank and spank. Interrupt Skul's abilities as much as possible.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Hearthsinger Forresten",
		encounterID = 10558,
		portrait = I.UIEJBossHearthsingerForresten,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hearthsinger Forresten was once a renowned bard and entertainer in Stratholme before its fall. However, he succumbed to the plague and now roams the city as a tormented spirit, seeking to relive his past glory. Forresten's presence within Stratholme reflects the tragedy and despair that befell its inhabitants.",
			"Forresten's spectral form and his longing for his former life make him a melancholic adversary for those who explore Stratholme. His existence serves as a reminder of the city's lost culture and its descent into darkness.",
			{ heading = "Overview" },
			"information goes here..",

			--Hearthsinger Forresten is a rare mob who spawns either down the street from Fras Siabi or patrolling along part of Market Row.

		
			{
				role = DAMAGE,
				"",

				--This rare mob is essentially a tank and spank. Spread out to avoid too many people being hit by [Multi-Shot]. If you are put to sleep with [Enchanting Lullaby], the effect will last 8 seconds.

			},
			{
				role = HEALER,
				"",

				--Keep the tank topped off at all times and try to put a shield up if possible to do so without generating threat or negatively impacting your tank's threat generation. You may be put to sleep by [Enchanting Lullaby] so be prepared. Spread out to avoid being hit with [Multi-Shot] too often.

			},
			{
				role = TANK,
				"",

				--Tank the boss where he stands, away from other patrolling mobs. You may be put to sleep by [Enchanting Lullaby], and will need to get threat back on the boss as soon as you awake.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "The Unforgiven",
		encounterID = 10516,
		portrait = 607792,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Unforgiven is a vengeful spirit who dwells within Stratholme, driven by a burning desire for retribution against those he deems responsible for his suffering. His presence reflects the lingering torment and anger that permeate the cursed city.",
			"The Unforgiven's spectral form and his thirst for vengeance make him a relentless adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the consequences of the city's fall.",
			{ heading = "Overview" },
			"information goes here..",

			--The Unforgiven is an undead spirit who will spawn some non-elite adds when engaged.

			{
				role = DAMAGE,
				"",

				--Focus down the adds first followed by the boss. Make sure your tank has established threat on The Unforgiven before starting your DPS rotation.

			},
			{
				role = HEALER,
				"",

				--As the DPS burn down the adds they may take some damage. Keep everyone topped off as best you can. Once the adds are dead, only the tank should be taking damage.

			},
			{
				role = TANK,
				"",

				--Allow your DPS to burn down the adds while you establish threat on The Unforgiven. Once the adds are down, this is a tank and spank.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Postmaster Malown",
		encounterID = 11143,
		portrait = I.UIEJBossPostmasterMalown,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Postmaster Malown was once responsible for Stratholme's mail service before its fall to the Scourge. He has been transformed into a malevolent undead postmaster who now haunts the city's post office. Malown's presence reflects the perversion of everyday life within Stratholme by the Scourge.",
			"Malown's eerie role as a postmaster and his spectral form make him a unique and unsettling adversary for those who explore Stratholme. His existence serves as a reminder of the mundane aspects of life that have been twisted by the curse.",
			{ heading = "Overview" },
			"information goes here..",

			--Postmaster Malown spawns after you open the third mailbox in Stratholme, using Market Row Postbox Key which drop off of the Stratholme Courier throughout the instance. Malown spawns with three Undead Postman which apply stacks of Wailing Dead. The only CC you can use on them are Turn Undead or Shackle Undead.

			{
				role = DAMAGE,
				"",

				--Use CC on the adds if possible. Try to clear out the adds which you could not CC first, then switch to Postmaster Malown. If you are a Mage or Druid, decurse your party members as necessary.

			},
			{
				role = HEALER,
				"",

				--Your tank will be taking a lot of damage as most of the adds will not be able to be CC'd. Dispel [Fear] as quickly as you can, especially if it is on the tank. If you are a Druid, decurse your party members as necessary.

			},
			{
				role = TANK,
				"",

				--When the boss and his adds spawn, try to pull the boss away from whichever adds are being CC'd. Maintain threat on all of the engaged mobs, and allow your DPS to burn down the adds first and then focus the Postmaster.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Timmy the Cruel",
		encounterID = 10808,
		portrait = 607795,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Timmy the Cruel is a tormented child spirit who wanders the streets of Stratholme, consumed by the darkness that plagues the city. His presence reflects the tragedy of innocent lives lost during the city's fall to the Scourge.",
			"Timmy's spectral form and his role as a child make him a haunting and empathetic adversary for those who venture into Stratholme. His existence serves as a reminder of the innocence that was snuffed out in the city's darkest hours.",
			{ heading = "Overview" },
			"information goes here..",

			--Timmy the Cruel will run out from the left hand side of the courtyard once you have defeated all of the mobs who are posted outside of the Scarlet domain of the instance.

			{
				role = DAMAGE,
				"",

				--Allow your tank to establish threat, then maximize damage output on the boss.

			},
			{
				role = HEALER,
				"",

				--Keep your tank topped off, especially for when Timmy goes into [Enrage].

			},
			{
				role = TANK,
				"",

				---This fight is a tank and spank.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Cannon Master Willey",
		encounterID = 10997,
		portrait = I.UIEJBossCannonMasterWilley,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Cannon Master Willey was once a skilled engineer in Stratholme, responsible for the city's defenses. In undeath, he has been transformed into a fearsome cannon master who guards the city's gates. Willey's presence reflects the militarization and fortification of Stratholme by the Scourge.",
			"Willey's mastery of cannons and his role as a defender of the gates make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a reminder of the city's tragic fall and its transformation into a bastion of the Scourge.",
			{ heading = "Overview" },
			"information goes here..",

			--Cannon Master Willey is engaged within the small Armory section of this Crimson Domain. The boss spawns adds which will need to be either CC'd or burnt down. You can also pick up a cannon ball in the room and fire it from one of the cannons in the room to deal significant damage to the adds.

			{
				role = DAMAGE,
				"",

				--Focus your damage output on the boss. When adds spawns, CC them or utilize the cannons in the room to defeat them.
			},
			{
				role = HEALER,
				"",

				--Keep your distance from the boss during the encounter so that the adds do not run straight to you when they spawn. Make sure to stand behind the cannon though. Keep your tank topped off throughout the fight.

			},
			{
				role = TANK,
				"",
				
				--Be ready to pickup adds when they spawn.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Crimson Hammersmith",
		encounterID = 11120,
		portrait = I.UIEJBossCrimsonHammersmith,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Crimson Hammersmith is a blacksmith who was once skilled in crafting weapons and armor in Stratholme. In undeath, he has become a malevolent hammersmith who forges weapons for the Scourge. His presence reflects the perversion of craftsmanship by the dark forces that now control the city.",
			"The Crimson Hammersmith's role as a weapon forger and his spectral form make him a formidable and unsettling adversary for those who explore Stratholme. His existence serves as a chilling reminder of the twisted industry that now drives the city.",
			{ heading = "Overview" },
			"information goes here..",

			--The Crimson Hammersmith will spawn if someone clicks on the pattern on the ground. This will easily happen if a party member doesn't realize what will happen so this boss usually comes as an unexpected add while the party is pulling regular mob packs.

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
		name = "Archivist Galford",
		encounterID = 10811,
		portrait = I.UIEJBossArchivistGalford,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Archivist Galford was once a scholar and historian in Stratholme, responsible for preserving its knowledge and history. In undeath, he has been transformed into a malevolent archivist who guards the city's secrets. Galford's presence reflects the corruption of knowledge and the manipulation of history by the Scourge.",
			"Galford's role as an archivist and his spectral form make him a formidable adversary for those who venture into Stratholme. His existence serves as a reminder of the city's lost wisdom and the dark forces that seek to control its past.",
			{ heading = "Overview" },
			"information goes here..",
			{
				role = DAMAGE,
				"",

				--To help the party out don't click on the pattern in the middle of a fight with mob packs. If you want to kill him then announce it to the party.

			},
			{
				role = HEALER,
				"",

				--This mob is more of an unexpected add than a boss. Be prepared to call it out and heal through it.

			},
			{
				role = TANK,
				"",

				--This mob is more of an unexpected add than a boss. Be prepared to grab threat on it if someone summons him.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Balnazzar",
		encounterID = 10813,
		portrait = 607551,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Balnazzar is a powerful dreadlord and one of the dreadlords who manipulated the events that led to Stratholme's fall. He serves as a central figure in the Scourge's control of the city and its undead inhabitants. Balnazzar's presence reflects the malevolent influence of the Nathrezim over Stratholme.",
			"Balnazzar's mastery of demonic magic and his role as a puppeteer behind the city's fall make him a formidable and cunning adversary for those who challenge the Scourge within Stratholme. His existence serves as a chilling reminder of the dreadlords' role in the city's downfall.",
			{ heading = "Overview" },
			"information goes here..",

			--The final encounter of Strat Live begins with an all-too-easy tank and spank with Grand Crusader Dathrophan. Just when the fight seems to be over, he will transform into the powerful demon Balnazzar.

			{
				role = DAMAGE,
				"",

				--The boss' [Deep Sleep] ability can be dispelled. [Psychic Scream] can be avoided if standing at maximum range.

			},
			{
				role = HEALER,
				"",

				--The entire group will likely be taking damage at some point during this encounter, so try to keep everyone topped off. [Psychic Scream] can be outranged if you are at maximum distance from the boss. Dispel [Deep Sleep] from your party members if possible.

			},
			{
				role = TANK,
				"",

				--Tank the boss in the middle of the room so that the group can spread out.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Magistrate Barthilas",
		encounterID = 10435,
		portrait = 607704,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Magistrate Barthilas was once a lawkeeper in Stratholme, responsible for maintaining order and justice. In undeath, he has become a malevolent magistrate who enforces the twisted laws of the Scourge. Barthilas's presence reflects the perversion of justice and order within the cursed city.",
			"Barthilas's role as a magistrate and his spectral form make him a formidable and relentless adversary for those who explore Stratholme. His existence serves as a chilling reminder of the city's descent into chaos and tyranny.",
			{ heading = "Overview" },
			"information goes here..",

			--Magistrate Barthilas is either located near the church at the beginning of the instance, or just before the courtyard where you fight Ramstein. The boss drops the Key to the City which gets you in the back gate.

			{
				role = DAMAGE,
				"",

				--For DPS, this fight is essentially a tank and spank. Let the tank maintain threat while you damage the boss.

			},
			{
				role = HEALER,
				"",

				--While healing this fight, the entire group may take damage from [Crowd Pummel], but in general only the Tank should be taking damage from the boss.

			},
			{
				role = TANK,
				"",

				--Position Barthilas facing away from the group and towards a wall so that his [Mighty Blow] does not knock you into other mobs.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Stonespine",
		encounterID = 10809,
		portrait = 607675,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Stonespine is a monstrous and undead giant who guards the corridors of Stratholme with brute strength. He is known for his formidable presence and his role as a sentinel of the city's depths. Stonespine's presence reflects the overwhelming power of the Scourge within the cursed city.",
			"Stonespine's colossal stature and his role as a guardian make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the indomitable forces that protect the city's secrets.",
			{ heading = "Overview" },
			"information goes here..",

			--Stonespine is a rare spawn that patrols around the area between Nerub'enkan and Baroness Anastari's ziggurats.

			{
				role = DAMAGE,
				"",

				--This rare mob is essentially a tank and spank.

			},
			{
				role = HEALER,
				"",

				--Only the tank should be taking damage during this encounter. Keep an eye out for [Vicious Rend] and do your best to heal through the bleed effect.

			},
			{
				role = TANK,
				"",

				--Tanking this rare mob is nothing out of the ordinary. Pull it away from areas where other mobs are patrolling and use defensive cooldowns to handle the [Vicious Rend] bleed effect.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Nerub'enkan",
		encounterID = 10437,
		portrait = 607724,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Nerub'enkan is an undead nerubian who has been twisted and enslaved by the Scourge to guard Stratholme's inner chambers. He is known for his ruthless nature and his role as a sentinel of the city's depths. Nerub'enkan's presence reflects the corruption of the nerubian race by the dark forces that control the city.",
			"Nerub'enkan's formidable nerubian abilities and his role as a guardian make him a relentless adversary for those who explore Stratholme. His existence serves as a reminder of the nerubians' tragic fate and their transformation into tools of the Scourge.",
			{ heading = "Overview" },
			"information goes here..",

			--Nerub'enkan stands at the top of the first small ziggurat you encounter off to the left. Be sure to clear any groups of hostile mobs in the area before engaging Nerb'enkan, as it will complicate the encounter to include them at the same time. After defeating the boss, be sure to clear the Thuzadin Acolytes within the ziggurat.

			{
				role = DAMAGE,
				"",

				--When the boss spawns adds via [Crypt Scarabs] and [Raise Undead Scarab], utilize AoE effects to damage them along with the boss. They don't have much health or deal much damage. Focus your DPS on the boss without overtaking the primary threat position from the tank.

			},
			{
				role = HEALER,
				"",

				--While healing this fight, keep your distance as best as possible while remaining within line of sight. The ramp of the ziggurat with the high ledges can make this challenging at times.

			},
			{
				role = TANK,
				"",

				--Tank the boss at the top of the ramp of the ziggurat where it already stands. Try to be sure you are always in line of sight of your healer. When adds spawn, utilize AoE effects to establish some threat on them. Escape [Encasing Webs] if possible, but you should be able to maintain threat while snared.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Black Guard Swordsmith",
		encounterID = 11121,
		portrait = I.UIEJBossBlackGuardSwordsmith,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"The Black Guard Swordsmith is an undead blacksmith who forges deadly weapons for the Scourge within Stratholme. He is known for his skill in crafting blades of death and his role as a weapon forger. The Swordsmith's presence reflects the Scourge's relentless pursuit of arms and power within the city.",
			"The Swordsmith's mastery of weapon crafting and his role as a forger make him a formidable adversary for anyone who ventures into Stratholme. His existence serves as a reminder of the deadly arsenal that fuels the Scourge's dominion over the city.",
			{ heading = "Overview" },
			"information goes here..",

			--The Black Guard Swordsmith will spawn if someone clicks on the pattern on the ground. This will easily happen if a party member doesn't realize what will happen so this boss usually comes as an unexpected add while the party is pulling regular mob packs.

			{
				role = DAMAGE,
				"",

				--To help the party out don't click on the pattern in the middle of a fight with mob packs. If you want to kill him then announce it to the party.

			},
			{
				role = HEALER,
				"",

				--This mob is more of an unexpected add than a boss. Be prepared to call it out and heal through it.

			},
			{
				role = TANK,
				"",

				--This mob is more of an unexpected add than a boss. Be prepared to grab threat on it if someone summons him.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Maleki the Palid",
		encounterID = 10438,
		portrait = 607707,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Maleki the Pallid is a sinister and powerful undead sorcerer who serves as a guardian of Stratholme's inner chambers. He is known for his mastery of dark magic and his role as a sentinel of the city's depths. Maleki's presence reflects the malevolent and arcane forces that infest the cursed city.",
			"Maleki's formidable arcane abilities and his role as a guardian make him a formidable adversary for those who explore Stratholme. His existence serves as a chilling reminder of the dark and arcane secrets that lie hidden within the city.",
			{ heading = "Overview" },
			"information goes here..",

			--Maleki the Pallid stands atop the third and final ziggurat. He hits hard but he is easier than the other two bosses. Just make sure to not get adds during the fight.

			{
				role = DAMAGE,
				"",

				--Allow for the tank to establish threat, then begin you DPS rotation. Interrupt [Frostbolt] and Drain Life as much as possible. [Ice Tomb] will be cast on the tank, and the second highest DPS will get threat from the boss. Be prepared to self heal, use defensive cooldowns, or drop threat if possible.

			},
			{
				role = HEALER,
				"",

				--The only member of the party that should be taking damage is the tank, so keep them topped off. When Maleki uses [Ice Tomb] on the tank, the boss will change targets to another party member. Do your best to keep them alive until the tank is freed 6 seconds later and can pick the boss back up.

			},
			{
				role = TANK,
				"",

				--Maleki actually hits pretty hard, so utilize your defensive cooldowns as necessary. Interrupt [Drain Life] and [Frostbolt] if possible. He will use [Ice Tomb] against the primary threat target, which should be the tank. As soon as you are free, taunt the boss back and reestablish threat.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Baroness Anastari",
		encounterID = 10436,
		portrait = 607553,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baroness Anastari is an elegant and deadly undead noble who was once a prominent figure in Stratholme's aristocracy. In undeath, she has become a malevolent baroness who commands the undead with regal authority. Anastari's presence reflects the perversion of nobility and power by the Scourge.",
			"Anastari's mastery of necromancy and her role as a baroness make him a formidable and regal adversary for those who venture into Stratholme. Her existence serves as a chilling reminder of the aristocracy's fall and the rise of dark nobility within the city.",
			{ heading = "Overview" },
			"information goes here..",

			--Baroness Anastari is a banshee type who stands atop the second ziggurat you encounter in the instance. Anastari will Possess group members during the encounter who will need to be brought to 50% health before the mind control is broken. Possess, alongside her Silence and Banshee Curse can make this fight a challenge. Once defeated, do not forget to clear the inside of the ziggurat of Thuzadin Acolytes.

			{
				role = DAMAGE,
				"",

				--As soon as the tank has established threat, utilize all damage increasing cooldowns not only to damage the boss as much as possible but to avoid having them popped while you are under the effect of [Possess]. Focus your DPS on Baroness Anastari until she casts [Possess] on a group member. Then, quickly damage them to 50% to break the mind control. If you are a Mage or Druid, decurse your party members from [Banshee Curse]. Casters be aware that you may be affected with [Silence].

			},
			{
				role = HEALER,
				"",

				--Keep all party members topped off as well as you can. Once Anastari casts [Possess] your group will damage the possessed party member to 50% health, and they will require immediate healing back up to 100%. If you are a Druid, decurse your group members from [Banshee Curse]. Be prepared to be affected by [Silence]

			},
			{
				role = TANK,
				"",

				--Tank the boss atop the ziggurat. Switch to the [Possess] party member when necessary, then reestablish yourself atop the threat meter for Baroness.

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ramstein the Gorger",
		encounterID = 10439,
		portrait = 607752,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ramstein the Gorger is a monstrous and grotesque abomination who dwells within the depths of Stratholme. He is known for his insatiable appetite for flesh and his role as a guardian of the city's catacombs. Ramstein's presence reflects the grotesque and horrifying creations of the Scourge.",
			"Ramstein's ravenous hunger and his role as a guardian make him a formidable and repulsive adversary for anyone who ventures into Stratholme. His existence serves as a chilling reminder of the grotesque experiments that occur within the city's depths.",
			{ heading = "Overview" },
			"information goes here..",

			--Ramstein the Gorger will spawn in the courtyard before Baron Rivendare's room once you have defeated all of the abominations that patrol the courtyard. The fight is straightforward, but Ramstein hits hard and has a threat drop mechanic.


			{
				role = DAMAGE,
				"",

				--Pay careful attention to threat during this encounter, as Ramstein's [Knockout] ability will switch his primary target to whoever is in the secondary threat position. Try to let this be either a plate DPS or a ranged DPS who can kite him around for a little bit.

			},
			{
				role = HEALER,
				"",

				--Prepare heals for whichever DPS Ramstein will switch to when he casts [Knockout]. Keep all party members topped off as much as possible.

			},
			{
				role = TANK,
				"",

				--The boss will enter the room once the last abomination has been cleared. Pull him away from the group and establish threat. Be sure you have a taunt ability prepared to get aggro back on the boss when he uses [Knockout].

			}
		},
		abilities = {
			
		}
	},
	{
		name = "Baron Rivendare",
		encounterID = 10440,
		portrait = I.UIEJBossBaronRivendare,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Baron Rivendare is a powerful and ruthless undead noble who serves as the master of Stratholme. He is responsible for maintaining the Scourge's control over the cursed city. Rivendare's presence reflects the central authority of the Scourge within Stratholme.",
			"Rivendare's mastery of necromancy and his role as the ruler of Stratholme make him a formidable and cunning adversary for those who challenge the Scourge's dominion. His existence serves as a chilling reminder of the dark lord who holds the city in his grip.",
			{ heading = "Overview" },
			"information goes here..",

			--Baron Rivendare is the final boss encounter for Strat Undead, and drops the infamous Deathcharger's Reins. The Baron also drops the T0 Leg pieces for all class sets and multiple Pre-raid BiS items. The boss is challenging as he reduces healing capabilities on the tank via Mortal Strike, and deals considerable damage to all party members in close proximity via Unholy Aura.

			{
				role = DAMAGE,
				"",

				--Ranged DPS should stack up in the left side of the room upon entry to stay at maximum range from the boss. When he spawns his skeleton adds, melee should prioritize them over the boss as they can be pesky on your healer. Melee need to stay behind Baron Rivendare at all times to avoid being hit with [Cleave].

			},
			{
				role = HEALER,
				"",

				--The healer needs to stack up on the left side of the room with ranged DPS, keeping maximum distance from the boss. Utilize your healing increasing cooldowns when the tank is affected by [Mortal Strike]. All Melee players will be taking damage from [Unholy Aura] and require consistent healing.

			},
			{
				role = TANK,
				"",

				--Make sure everyone is ready to run in with you, as the door will close when you engage Baron Rivendare. Run in, and take the Baron to the back right side of the room upon entry, opposite where ranged DPS and your healer should be. Put your back to a wall so that melee can position themselves well and avoid being hit by [Cleave]. Prepare your defensive cooldowns for whenever you are affected by [Mortal Strike]. When skeletons spawn, trust that your DPS will make quick work of them and do not try to pick them up because you don't want to turn Baron Rivendare around or put your ranged/healer in his [Unholy Aura].

			}
		},
		abilities = {
			
		}
	},
})
