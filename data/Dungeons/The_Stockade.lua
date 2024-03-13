--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

InstanceService.AddDungeon({
	name = "The Stockade",
	instanceID = 238,
	thumbnail = 608223,
	icon = 136358,
	splash = 608262,
	mapID = 34,
	overview = "Stormwind Stockade is a closely guarded prison built beneath the canals of Stormwind City. Warden Thelwater keeps watch over the stockade and the highly dangerous criminals who call it home. Recently, the inmates revolted, overthrowing their guards and plunging the prison into a state of pandemonium.",
	{
		name = "Targorr the Dread",
		encounterID = 1696,
		portrait = I.UIEJBossTargorrTheDread,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Targorr the Dread is a menacing ogre warden who presides over the prisoners within the Stockade. Known for his ruthless and oppressive rule, he represents the brutal authority of the prison's wardens. Targorr's presence within the Stockade reflects the grim and unforgiving environment in which the inmates are held.",
			{ heading = "Overview" },
			"Targorr the Dread, the first boss in The Stockade, is a Blackrock orc. He is not officially accompanied by any other monsters, but nearby Defias will often join the fight. Damage dealers should focus on killing the adds before engaging Targorr, while managing their threat. Healers should concentrate their healing on the tank. Tanks should maximize threat so damage dealers can go all-out.",
			{
				role = DAMAGE,
				"Damage dealers should do as much damage as possible while watching their threat. Focus on killing the adds before engaging Targorr the Dread.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank.",
			},
			{
				role = TANK,
				"Tank should focus on doing as much threat as possible. so the damage dealers can go all-out.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Kam Deepfury",
		encounterID = 1666,
		portrait = I.UIEJBossKamDeepfury,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Kam Deepfury is a corrupt dwarf officer who has aligned himself with the criminal elements within the Stockade. He serves as an enforcer for the corrupt leadership and has a reputation for brutality. Kam's presence in the Stockade reflects the mingling of criminal elements with the prison's staff.",
			{ heading = "Overview" },
			"Kam Deepfury is the second boss you will encounter in The Stockade. He is not officially accompanied by any other mobs, but nearby defias will often join the fight. Damage dealers should focus on killing the adds before engaging Kam Deepfury, while managing their threat. Healers should concentrate their healing on the tank. Tanks should maximize threat so damage dealers can go all-out. Kam Deepfury does a high amount of damage while also frequently stunning his target with {spell:8242}. Tanks should be aware that an early stun can make holding aggro tricky.",
			{
				role = DAMAGE,
				"Damage dealers should do as much damage as possible while watching your threat. Damage dealers should focus on killing the adds before Kam Deepfury.",
			},
			{
				role = HEALER,
				"Focus your healing on the tank. Healers should keep track of their mana, as Kam Deepfury can deal significant damage to the party.",
			},
			{
				role = TANK,
				"Tanks should focus on doing as much threat as possible, so the damage dealers can go all-out. Kam Deepfury does a high amount of damage while also frequently stunning his target with {spell:8242}. Tanks should be aware that an early stun can make holding aggro tricky.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Hamhock",
		encounterID = 1717,
		portrait = I.UIEJBossHamhock,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hamhock is a massive ogre who has been incarcerated within the Stockade for his crimes. Despite his imposing size, he is often manipulated by the corrupt staff and used as muscle for their schemes. Hamhock's presence in the Stockade reflects the complex power dynamics and the exploitation of inmates within the prison.",
			{ heading = "Overview" },
			"Hamhock is the third boss you will encounter in the Stockade. He is a ogre magi. He is accompanied by two Defias. Damage dealers should do as much damage as possible while watching their threat. Healers should focus healing on the tank. If you are a Shaman or Priest, purge his {spell:6742} effect. Tanks should focus on doing as much threat as possible on Hamhock, so the damage dealers can go all-out. Tanks should keep in mind that they can interrupt his {spell:421} if they have any interrupt abilities.",
			{
				role = DAMAGE,
				"Damage dealers should do as much damage as possible while watching your threat. Hamhock is accompanied by two adds that should be killed before engaging him. Damage dealers can interrupt Hamhock's {spell:421} and purge his {spell:6742} effect.",

			},
			{
				role = HEALER,
				"Healers should focus healing on the tank. If you are a Shaman or Priest, purge his {spell:6742} effect.",
			},
			{
				role = TANK,
				"Tanks should focus on doing as much threat as possible on Hamhock, so the damage dealers can go all-out. Tanks should keep in mind that they can interrupt his {spell:421} if they have any interrupt abilities.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Dextren Ward",
		encounterID = 1663,
		portrait = I.UIEJBossDextrenWard,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Dextren Ward is a defias traitor who was imprisoned within the Stockade for his crimes against the brotherhood. Despite his past loyalties, he has become a victim of the very organization he once served. Dextren's presence in the Stockade highlights the internal strife and betrayals that often occur among criminal factions.",
			{ heading = "Overview" },
			"Dextren Ward is the last boss you will encounter in the Stockade. He is not officially accompanied by any other monsters, but nerby Defias will often join the fight. Damage dealers should focus on killing the adds before engaging Dextren Ward, while managing their threat. Healers should concentrate their healing on the tank. Tanks should maximize threat so damage dealers can go all-out. Dextren Ward deals significant damage. Healers should be aware of his {spell:5246} and keep track of the entire party's position to quickly get back in healing range.",
			{
				role = DAMAGE,
				"Damage dealers should do as much damage as possible while watching your threat. Focus on defeating the adds first before engaging Dextren Ward while being cautious of his {spell:5246}",
			},
			{
				role = HEALER,
				"Healers should focus on maintaining the tank's health pool. Dextren Ward deals significant damage. Healers should be aware of his {spell:5246} and keep track of the entire party's position to quickly get back in healing range.",
			},
			{
				role = TANK,
				"Tanks should focus on doing as much threat as possible on Dextren, so the damage dealers can go all-out. Dextran Ward deals significant damage. Tanks should be careful not to lose aggro, and use their defensive cooldowns properly.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Bazil Thredd",
		encounterID = 1716,
		portrait = I.UIEJBossBazilThredd,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bazil Thredd is a cunning and treacherous defias rogue who has taken control of the Stockade's operations. He is responsible for the corruption and chaos that have engulfed the prison. Bazil's presence within the Stockade represents the power and influence of the Defias Brotherhood over the institution.",
			{ heading = "Overview" },
			"information goes here..",

			--Bazil Thredd is a boss of the Stormwind Stockade, and is accompanied by adds. Clear the room before you engage Thredd.

			{
				role = DAMAGE,
				"",

				--In the last boss encounter of the dungeon, damage dealers should focus on dealing as much damage as possible while watching their threat. Bazil Thredd deals high amounts of damage that can be perilous to a damage dealer if they manage to gain his attention.

			},
			{
				role = HEALER,
				"",

				--For the last boss encounter of the dungeon, healers should focus on maintaining the tank's health pool. This boss deals significant damage to your tank.

			},
			{
				role = TANK,
				"",

				--The last boss encounter of the dungeon, Bazil Thredd, deals high amounts of damage while also being accompanied by adds. Tanks should focus on maintaining aggro on the adds while damage dealers kill them.

			}
		},
		abilities = {
			
		}
	},
})
