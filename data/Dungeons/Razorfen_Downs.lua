--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "Razorfen Downs",
	instanceID = 233,
	thumbnail = 608212,
	icon = 136352,
	splash = 608251,
	mapID = 129,
	overview = "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Recently, scouts have reported seeing undead milling about the region, engendering fears that the dreaded Scourge may be moving to conquer Kalimdor.",
	{
		name = "Tuten'kash",
		encounterID = 7355,
		portrait = 607799,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Tuten'kash is a grotesque and ancient crypt fiend that has taken residence deep within Razorfen Downs. Its malevolent presence and insatiable appetite for flesh have corrupted the once-sacred crypts. Tuten'kash's existence in Razorfen Downs serves as a chilling testament to the necromantic forces that have twisted the crypts into a nightmarish realm.",
			"Tuten'kash's monstrous form and its relentless hunger for the living make it a formidable adversary for those who venture into Razorfen Downs. Its role highlights the unnatural and profane transformation that has befallen the crypts.",
			{ heading = "Overview" },
			"Summon the first boss in Razorfen Downs by ringing the gong in Tuten'kash's chamober. The first two times the gong is rang, waves of spiders adds will ceom into the room from either side. The third time you rin the gong, Tuten'kash is summoned. Killing Tuten'kash is straightforward, and many groups may not need to worry about dispelling the {spell:12254} or decuring {spell:12255}.",
			{
				role = DAMAGE,
				"Stay behind Tuten'kash to avoid {spell:12252}, and Mages or Druids decurse {spell:12255} from your healers or caster damage dealers as necessary.",
			},
			{
				role = HEALER,
				"Stay behind Tuten'kash and focus your healing spells on the tank. Druids decurse {spell:12255} as necessary.",
			},
			{
				role = TANK,
				"Tank needs to pick up Tuten'kash and face him away from the group to avoid {spell:12252}.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Plaguemaw the Rotting",
		encounterID = 7356,
		portrait = I.UIEJBossPlaguemawTheRotting,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Plaguemaw the Rotting is a vile and ancient carrion worm that infests the depths of Razorfen Downs. Its putrid presence and the diseases it spreads have tainted the once-pure crypts. Plaguemaw's presence in Razorfen Downs represents the grim consequences of the crypts' desecration.",
			"Plaguemaw's decaying form and its ability to spread pestilence make it a loathsome and dangerous foe for those who delve into Razorfen Downs. Its existence serves as a reminder of the sickness and decay that have plagued the crypts.",
			{ heading = "Overview" },
			"If you choose to escort Belnistrasz while in Razorfen Downs, then Plaguemaw will be presented as the final boss of the event. Plaguemaw is simple and is the easiest part of the escort itself. Managing the multiple adds before him is the challenging part, as you need to keep Belnistrasz protected from mobs which spawn quickly. You cannot heal the NPC, be very careful holding threat off him.",
			{
				role = DAMAGE,
				"Classes that can off tank adds or use any Crowd Control abilities should do so during this encounter to make ptecting Belnistrasz easier. When Plaguemaw spawns, use your damage rotation to maximize damage output.",
			},
			{
				role = HEALER,
				"The healer in this fight's main priority is keeping themselves from getting threat on any adds as they spawn. Keep up your tank and any other classes helping pick up mobs.",
			},
			{
				role = TANK,
				"The tank should be picking up and marking adds as they spawn, focusing on keeping any off of Belnistrasz and the healer. Plaguemaw himself is a simple tank encounter.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Mordresh Fire Eye",
		encounterID = 7357,
		portrait = 607718,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Mordresh Fire Eye is a malevolent and powerful undead sorcerer who has claimed Razorfen Downs as his domain. His mastery of fire magic and his dark ambitions have corrupted the once-holy crypts. Mordresh's presence in Razorfen Downs symbolizes the dangerous arcane forces that now rule the crypts.",
			"Mordresh's command over fire magic and his oppressive rule over the crypts highlight the malevolent and destructive powers that have taken hold in Razorfen Downs. He serves as a grim reminder of the dangers posed by undead sorcerers and their sinister magic.",
			{ heading = "Overview" },
			"Mordresh is a caster skeleton boss which you encounter on top of a pile of bones, surrounded by non-elite skeletons. Groups should use their multi target abilities to take down the non elite mobs then focus damage on Mordresh. He does not have very high armor, so this fight is easy for a balanced group composition.",
			{
				role = DAMAGE,
				"Starting the fight, the damage dealers should focus on using area of effect spells and abilities to take care of the adds quickly - as long as the adds are dealt with quickly, this fight will be easy for damage dealers to take down Mordresh. Once focusing on the boss, use interrupts to prevent {spell:} Fireball.",
			},
			{
				role = HEALER,
				"The healer should wait to use any spells until the tank has managed to establish some threat among the adds and the boss. Early healing aggro will result in a wipe if the adds are attracted to the healer. Focus on the tank, but be aware that the rest of the group may take damage from adds and {spell:} Fire Nova.",
			},
			{
				role = TANK,
				"The tank should use an area of effect ability to generate some inital threat on the non elite adds, but focus on establishing threat on Mordresh. Interrupt {spell:12466} when possible.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Ragglesnout",
		encounterID = 7354,
		portrait = I.UIEJBossRagglesnout,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Ragglesnout is a massive and ravenous boar that roams the desecrated halls of Razorfen Downs. Its immense size and insatiable appetite have turned the crypts into a treacherous labyrinth. Ragglesnout's presence within Razorfen Downs reflects the chaotic and dangerous wildlife that now inhabits the crypts.",
			"Ragglesnout's voracious appetite and its deadly charges make it a formidable and ever-moving obstacle for those who navigate Razorfen Downs. Its existence is a testament to the untamed and perilous nature of the crypts' ecosystem.",
			{ heading = "Overview" },
			"Ragglesnout is a rare Quillboar mob who casts shadow spells, heal, and mind controls. This fight requires other members to fill in healing or picking up Ragglesnout if your tank or healer become affected by {spell:7645}.",
			{
				role = DAMAGE,
				"During this encounter, interrupt {spell:11659} and {spell:12039} while maximizing your damage output as well. If your healer or tank are under {spell:7645}, fill in and attempt to crowd control the mind controlled party members.",
			},
			{
				role = HEALER,
				"Focus on healing the tank, and using heal over time and bubble effects to prevent damage done to other players during {spell:7645}.",
			},
			{
				role = TANK,
				"Tank Ragglesnout facing away from the group, and rotate interrupts with your group on {spell:12039} and {spell:11659}.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Glutton",
		encounterID = 8567,
		portrait = 607617,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Glutton is a repugnant and bloated creature that has made its lair within the plagued halls of Razorfen Downs. Its ravenous hunger and corrosive bile have tainted the once-sacred crypts. Glutton's presence in Razorfen Downs represents the grotesque corruption that now infests the crypts.",
			"Glutton's revolting appearance and its ability to spew corrosive bile make it a repulsive and dangerous adversary for those who explore Razorfen Downs. Its role serves as a chilling reminder of the monstrous transformations that have taken place in the crypts.",
			{ heading = "Overview" },
			"This abomination patrols below The Spiral of Thorns. The first is a simple encounter.",
			{
				role = DAMAGE,
				"Melee should stay behind Glutton, and all damage dealers need to avoid {spell:12627} ability.",
			},
			{
				role = HEALER,
				"Focus on healing the tank during the enrage phase, and avoid {spell:12627}.",
			},
			{
				role = TANK,
				"Pick up Glutton, and face him away from the group.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Amnennar the Coldbringer",
		encounterID = 7358,
		portrait = 607537,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Amnennar the Coldbringer is an ancient and powerful lich who has claimed Razorfen Downs as his necropolis. His mastery of frost magic and his dark ambitions have frozen the crypts in eternal winter. Amnennar's presence in Razorfen Downs symbolizes the malevolent necromantic forces that have taken root in the crypts.",
			"Amnennar's command over frost magic and his oppressive rule over the crypts highlight the chilling and destructive powers that have consumed Razorfen Downs. He serves as a grim reminder of the dangers posed by liches and their mastery over the undead.",
			{ heading = "Overview" },
			"Amennar is a servant to the Lich King, and the final boss of Razorfen Downs. Amnennar casts frost spells and a knock back. The group should stack up behind Amnennar while the tank faces him towards the tent where he spawns.",
			{
				role = DAMAGE,
				"The damage dealers in this fight should stack up to reduce to effects of {spell:15531}. When Frost Spectres are summoned, avoud them while ranged focuses them down and then switch back to Amnennar.",
			},
			{
				role = HEALER,
				"Healing this fight should be straightforward, just stack up with the group and pay attention to who is taking damage from the summoned adds.",
			},
			{
				role = TANK,
				"The tank simply needs to face the boss away from the group to avoid {spell:13009}.",
			}
		},
		abilities = {
			
		}
	},
})
