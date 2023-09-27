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
			"As the first line of defense for the Stockade, Targorr the Dread is a formidable adversary for any who attempt to escape its confines. His sheer strength and cruel methods make him a significant obstacle for those seeking to free the imprisoned within the prison's walls.",
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
		name = "Kam Deepfury",
		encounterID = 1666,
		portrait = I.UIEJBossKamDeepfury,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Kam Deepfury is a corrupt dwarf officer who has aligned himself with the criminal elements within the Stockade. He serves as an enforcer for the corrupt leadership and has a reputation for brutality. Kam's presence in the Stockade reflects the mingling of criminal elements with the prison's staff.",
			"As one of the corrupt officers responsible for maintaining order within the Stockade, Kam Deepfury poses a significant challenge for those who seek to confront the corruption within the prison. His allegiance to the criminal leadership and his willingness to use force make him a formidable foe.",
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
		name = "Hamhock",
		encounterID = 1717,
		portrait = I.UIEJBossHamhock,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Hamhock is a massive ogre who has been incarcerated within the Stockade for his crimes. Despite his imposing size, he is often manipulated by the corrupt staff and used as muscle for their schemes. Hamhock's presence in the Stockade reflects the complex power dynamics and the exploitation of inmates within the prison.",
			"As a prisoner turned enforcer, Hamhock serves as a unique challenge within the Stockade. Adventurers must contend with both his size and the corrupt staff who control him in their efforts to bring justice to the prison.",
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
		name = "Dextren Ward",
		encounterID = 1663,
		portrait = I.UIEJBossDextrenWard,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Dextren Ward is a defias traitor who was imprisoned within the Stockade for his crimes against the brotherhood. Despite his past loyalties, he has become a victim of the very organization he once served. Dextren's presence in the Stockade highlights the internal strife and betrayals that often occur among criminal factions.",
			"As a former member of the Defias Brotherhood, Dextren Ward's betrayal has led to his incarceration within the Stockade. His knowledge of the criminal organization's secrets makes him a unique target for adventurers seeking to uncover the truth.",
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
		name = "Bazil Thredd",
		encounterID = 1716,
		portrait = I.UIEJBossBazilThredd,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 2135, 12456, 12314 },
		overview = {
			"Bazil Thredd is a cunning and treacherous defias rogue who has taken control of the Stockade's operations. He is responsible for the corruption and chaos that have engulfed the prison. Bazil's presence within the Stockade represents the power and influence of the Defias Brotherhood over the institution.",
			"As the mastermind behind the corruption within the Stockade, Bazil Thredd is the final obstacle that adventurers must overcome. His cunning tactics, rogue skills, and determination to maintain control make him a formidable adversary in the battle to restore order within the prison.",
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
