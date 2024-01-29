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
			{ heading = "Overview" },
			"Skul is a rare mob who spawns near the main entrance of Stratholme. Damage dealers should interrupt SKu's abilities and let the tank handle threat, healers keep the tank's health topped up.",
			{
				role = DAMAGE,
				"Try to interrupt Skul's abilities as much as possible. Let your tank maintain threat while you take Skul down.",
			},
			{
				role = HEALER,
				"Keep your tank health topped up as much as possible.",
			},
			{
				role = TANK,
				"This encounter is essentially a simple tank encounter. Interrupt Skul's abilities as much as possible.",
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
			{ heading = "Overview" },
			"Hearthsinger Forresten is a rare mob who spawns either down the street from Fras Siabi or patrolling along part of Market Row. Damage dealers should spread out to minimize impact from {spell:2643} and manage sleep from {spell:16798}. Healers should keep the tank's health topped off, use shields carefully, and be prepared for sleep effects. Tanks need to position Forresten away from patrolling mobs and quickly regain threat after potential sleep interruptions.",
			{
				role = DAMAGE,
				"Avoid stacking and be ready for an 8 second sleep from {spell:16798} while spreading out to minimize hits from {spell:2643}.",
			},
			{
				role = HEALER,
				"Maintain the tank's health and shield them without impacting threat, and be prepared for sleep from {spell:16798}, while staying spread out to evade {spell:2643}.",
			},
			{
				role = TANK,
				"Tank Hearthsinger Forresten away from patrol, quickly recover from the sleep effect of {spell:16798}, and regain threat.",
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
			{ heading = "Overview" },
			"The Unforgiven is an undead spirit who will spawn some non-elite adds when engaged. Damage dealers should prioritize adds before attacking The Unforgiven, healers need to maintain everyone's health, tanks should secure threat on The Unforgiven while damage dealers handle the adds.",
			{
				role = DAMAGE,
				"Prioritize defeating the adds before attacking The Unforgiven, ensuring the tank has established threat first.",
			},
			{
				role = HEALER,
				"Keep everyone's health up as damage dealers target the adds, focusing on the tank once the adds are defeated.",
			},
			{
				role = TANK,
				"Establish threat on The Unforgiven while damage dealers eliminate the adds, simplifying the encounter afterward.",
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
			{ heading = "Overview" },
			"Postmaster Malown spawns after you open the third mailbox in Stratholme using Market Row Postbox Key which drops off the Stratholme Curier throughout the instance. Malown spawns with three Undead Postman which apply stacks of Wailing Dead. The only crowd control you can use on them are spell:19725 or spell:11444. Damage dealers should crowd control adds when possible, healers face high tank damage, dispel {spell:411959} quickly, tanks should separate Malown from crowd-controlled adds, maintain threat on all engaged mobs.",
			{
				role = DAMAGE,
				"Apply crowd control on adds, prioritize non-crowd controllable adds first before focusing on Postmaster Malown, and decurse party members if possible.",
			},
			{
				role = HEALER,
				"Manage heavy tank damage due to limited crowd control on adds, quickly dispel {spell:411959}, and decurse as needed.",
			},
			{
				role = TANK,
				"Separate Postmaster Malown from crowd-controlled adds, maintain threat on all engaged mobs, allowing damage dealers to focus on adds before Postmaster Malown.",
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
			{ heading = "Overview" },
			"Timmy the Cruel will run out from the left hand side of the courtyard once you have defeated all of the mobs who are posted outside of the Scarlet domain of the instance. Damage dealers should wait for the tank to establish threat. Healers need to focus on keeping the tank's health full, especially during Timmy's {spell:425315} phase. Tanks maintain threat to enable damage dealers to optimize output.",
			{
				role = DAMAGE,
				"Wait for the tank to establish threat, then focus on maximizing damage output.",
			},
			{
				role = HEALER,
				"Ensure the tank's health is fully replenished, particularly during Timmy's use of {spell:425415}.",
			},
			{
				role = TANK,
				"Maintain threat, enabling damage dealers to optimize their damage output.",
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
			{ heading = "Overview" },
			"Cannon Master Willey spawns adds which will need to be either crowd controlled or defeated quickly. You can also pick up a cannon ball in the room and fire it from one of the cannons in the room to deal significant damage to the adds.",
			{
				role = DAMAGE,
				"Focus your damage output on the boss. When adds spawns, crowd control them or utilize the cannons in the room to defeat them.",
			},
			{
				role = HEALER,
				"Keep your distance from the boss during the encounter so that the adds do not run straight to you when they spawn. Make sure to stand behind the cannon.",
			},
			{
				role = TANK,
				"Keep Willey aggroed and away from the groupm, be ready to pickup adds when they spawn.",
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
			{ heading = "Overview" },
			"Archivist Galford is located in his own library across from the final chamber of the Crimson Domain. Engage Archivist in his room and have the group spread out while bringing Galford down.",
			{
				role = DAMAGE,
				"Utilize any self healing or defensive cooldowns as necessary.",
			},
			{
				role = HEALER,
				"Rotate your healing accordingly. Focus the tank, and try to place shield or heal over time effects on your party members. Any member of the party may be targeted with {spell:17293}. If the tank is targeted, the boss may choose to switch targets until the tank gets threat back.",
			},
			{
				role = TANK,
				"Focus Galford. It is possible that you will be targeted by {spell:17293}. Make sure to get threat back as quickly as possible when it wears off.",
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
			{ heading = "Overview" },
			"The final encounter of Strat Live begins with an all-too-easy tank and spank with Grand Crusader Dathrophan. Just when the fight seems to be over, he will transform into the powerful demon Balnazzar.",
			{
				role = DAMAGE,
				"Balnazzar's {spell:9256} ability can be dispelled. {spell:22884} can be avoided if standing at maximum range.",
			},
			{
				role = HEALER,
				"The entire group will likely be taking damage at some point during this encounter, so try to keep everyone topped off. {spell:22884} can be outranged if you are at maximum distance from the boss. Dispel {spell:9256} from your party members if possible.",
			},
			{
				role = TANK,
				"Tank the boss in the middle of the room so that the group can spread out.",
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
			"Magistrate Barthilas is either located near the church at the beginning of the instance, or just before the courtyard where you fight Ramstein. Barthilas drops the Key to the City which gets you in the back gate.",
			{
				role = DAMAGE,
				"For damage dealers, this fight is essentially a simple encounter. Let the tank establish threat, then maximize your damage output on the boss.",
			},
			{
				role = HEALER,
				"While healing this fight, the entire group may take damage from {spell:10887}, but in general only the tank should be taking damage from the boss.",
			},
			{
				role = TANK,
				"Position Barthilas facing away from the group and towards a wall so that his {spell:14099} does not knock you into other mobs.",
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
			"Stonespine is a rare spawn that partols around the area between Nerub'enkan and Baroness Anastari's ziggurats.",
			{
				role = DAMAGE,
				"This rare mob is a simple encounter. Let the tank establish threat, then maximize your damage output on the boss.",
			},
			{
				role = HEALER,
				"Only the tank should be taking damage during this encounter. Keep an eye out for {spell:14331} and do your best to heal through the bleed effect.",
			},
			{
				role = TANK,
				"Tanking this rare mob is nothing out of the ordinary. Pull it away from areas where other mobs are patrolling and use defensive cooldowns to handle the {spell:14331} bleed effect.",
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
			"Nerub'enkan stands at the top of the first msall ziggurat you encounter off to the left. Be sure to clear any groups of hostile mobs in the area before engaging Nerb'enkan, as it will complicate the encounter to include them at the same time. After defeating the boss, be sure to clear the Thuzodin Acolytes within the ziggurat.",
			{
				role = DAMAGE,
				"When Nerub'enkan spawns adds from {spell:16418} and {spell:17235}, utilize AoE effects to damage them along with the boss. They don't have much health or deal much damage. Focus your damage on the boss without overtaking the primary threat position from the tank.",
			},
			{
				role = HEALER,
				"While healing this encounter, keep your istance as best as possible while remaining within line of sight. The ramp of the ziggurat with the high ledges can make this challenging at times.",
			},
			{
				role = TANK,
				"Tank Nerub'enkan at the top of the ramp of the ziggurat where it already stands. Try to be sure you are always in line of sight of your healer. When adds spawn, utilize AoE effects to establish some threat on them. Escape {spell:4962} if possible, but you should be able to maintain threat while snared.",
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
			"The Black Guard Swordsmith will spawn if someone clicks on the pattern on the ground. This will easily happen if a party member doesn't realize what will happen so this boss usually comes as an unexpected add while the party is pulling regular mob packs.",
			{
				role = DAMAGE,
				"To help the party out don't click on the pattern in the middle of a fight with mob packs. If you want to kill him then announce it to the party.",
			},
			{
				role = HEALER,
				"This mob is more of an unexpected add than a boss. Be prepared to call it out and heal through it.",
			},
			{
				role = TANK,
				"This mob is more of an unexpected add than a boss. Be prepared to grab threat on it if someone summons him.",
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
			"Maleki the Pallid stands atop the third and final ziggurat. Maleki hits hard but he is easier than the other two bosses. Just make sure to not get adds during the encounter.",
			{
				role = DAMAGE,
				"Allow for the tank to establish threat, then begin your damage rotation. Interrupt {spell:13439} and {spell:16375} as much as possible. {spell:16869} will be cast on the tank, and the second highest damage dealer will get threat from the boss. Be prepared to self heal, use defensive cooldowns, or drop threat if possible.",
			},
			{
				role = HEALER,
				"The only member of the party that should be taking damage is the tank, so keep them topped off. When Maleki uses {spell:16869} on the tank, the boss will change targets to another party member. Do your best to keep them alive until the tank is freed 6 seconds later and can pick the boss back up.",
			},
			{
				role = TANK,
				"Maleki actually hits pretty hard, so utilize your defensive cooldowns as necessary. Interrupt {spell:16375} and {spell:13439} if possible. He will use {spell:16869} against the primary threat target, which should be the tank. As soon as you are free, taunt the boss back and reestablish threat.",
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
			"Baroness Anastari is a banshee type who stands atop the second ziggurat you encounter in the instance. Anastari will {spell:17244} group members during the encounter who will need to be brought to 50% health before the mind control is broken. {spell:17244}, alongside her {spell:15487} and {spell:5884} can make this encounter a challenge. Once defeated, do not forget to clear the inside of the ziggurat of Thuzadin Acolytes.",
			{
				role = DAMAGE,
				"As soon as the tank has established threat, utilize all damage increasing cooldowns not only to damage the boss as much as possible but to avoid having them popped while you are under the effect of {spell:17244}. Focus your damage on Baroness Anastari until she casts {spell:17244} on a group member. Then, quickly damage them to 50% to break the mind control. If you are a Mage or Druid, decurse your party members from {spell:5884}. Casters be aware that you may be affected with {spell:15487}.",
			},
			{
				role = HEALER,
				"Keep all party members topped off as well as you can. Once Anastari casts {spell:17244} your group will damage the possessed party member to 50% health, and they will require immediate healing back up to 100%. If you are a Druid, decurse your group members from {spell:5884}. Be prepared to be affected by {spell:15487}",
			},
			{
				role = TANK,
				"Tank Baroness Anastari at the top of the ziggurat. Switch to the {spell:17244} party member when necessary, then reestablish yourself atop the threat meter for Baroness Anastari.",
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
			"Ramstein the Gorger will spawn in the courtyard before Baron Rivendare's room once you have defeated all of the abominations that patrol the courtyard. The fight is straightforward, but Ramstein hits hard and has a threat drop mechanic.",
			{
				role = DAMAGE,
				"Pay careful attention to threat during this encounter, as Ramstein's {spell:17307} ability will switch his primary target to whoever is in the secondary threat position. Try to let this be either a plate damage dealer or a ranged damage dealer who can kite him around for a little bit.",
			},
			{
				role = HEALER,
				"Prepare heals for whichever damage dealer Ramstein will switch to when he casts {spell:17307}. Keep all party members topped off as much as possible.",
			},
			{
				role = TANK,
				"The boss will enter the room once the last abomination has been cleared. Pull him away from the group and establish threat. Be sure you have a taunt ability prepared to get aggro back on the boss when he uses {spell:17307}.",
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
			"Baron Rivendare is the final boss encounter for Stratholme Undead, and drops the The infamous Deathcharger's Reins. Baron Riven is a challenging as he reduces healing capabilities on the tank with a {spell:9347}, and deals considerable damage to all party members in close proximity with {spell:17625}",
			{
				role = DAMAGE,
				"Ranged damage dealers should stack up in the left side of the room upon entry to stay at maximum range from the boss. When he spawns his skeleton adds, melee should prioritize them over the boss as they can be pesky on your healer. Melee need to stay behind Baron Rivendare at all times to avoid being hit with {spell:407811}.",
			},
			{
				role = HEALER,
				"The healer needs to stack up on the left side of the room with ranged damage dealers, keeping maximum distance from the Baron Rivendare. Utilize your healing increasing cooldowns when the tank is affected by {spell:9347}. All melee players will be taking damage from {spell:17625} and require consistent healing.",
			},
			{
				role = TANK,
				"Make sure everyone is ready to run in with you, as the door will close when you engage Baron Rivendare. Run in, and take the Baron to the back right side of the room upon entry, opposite where ranged damage dealers and your healer should be. Put your back to a wall so that melee can position themselves well and avoid being hit by {spell:407811}. Prepare your defensive cooldowns for whenever you are affected by {spell:9347}. When skeletons spawn, trust that your DPS will make quick work of them and do not try to pick them up because you don't want to turn Baron Rivendare around or put your ranged/healer in his {spell:17625}.",
			}
		},
		abilities = {
			
		}
	},
})
