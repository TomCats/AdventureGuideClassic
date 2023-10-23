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
		npcs = { 9196 },
		overview = {
			"The imposing ogre known as Highlord Omokk commands Lower Blackrock Spire with an iron fist. He is a brutal leader who rules with cruelty, known for his ruthless tactics and merciless demeanor.",
			"Origins shrouded in mystery, Highlord Omokk rose to power within the savage ogre clans, making him a formidable enforcer within the Spire. He ensures that the ogres maintain control over this part of the fortress, and his presence is a testament to the brutality of Lower Blackrock Spire.",
			{ heading = "Overview" },
			"Highlord Omokk is the first boss in Lower Blackrock Spire, Omokk is joined by two adds. To make the fight eaiser look for using crowd control on one or both of the adds, then focus the non crowd control add then Omokk or focusing Omokk before breaking either crowd control.",
			{
				role = DAMAGE,
				"This fight be easier if you can crowd control both or at least one of the adds. Allow your tank to establish threat on Omokk",
			},
			{
				role = HEALER,
				"Omokk can hit pretty hard, especially if his {spell:18945} is up. Keep close attention to your tank's health.",
			},
			{
				role = TANK,
				"Position Omokk against a wall away from the group so that you are not tossed around by {spell:18945}. Establish threat on the boss and the non crowd controlled add.",
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
		npcs = { 9236 },
		overview = {
			"Revered among the Shadow Hunter tribe of trolls, Shadow Hunter Vosh'gajin has chosen Lower Blackrock Spire as her sanctuary. She is a formidable adversary to anyone who dares to intrude, known for her mastery of dark magic and unwavering loyalty to the Blackrock orcs.",
			"Vosh'gajin's enigmatic nature and her affiliation with the Blackrock orcs have solidified her position as a central figure within the Spire. Her shadowy powers and command over dark forces make her a potent force to be reckoned with.",
			{ heading = "Overview" },
			"Shadow Hunter Vosh'gajin is joined by two of the instance's Smolderthorn Shadow Priests. Try to crowd control both adds and focus down Shadow Hunter Vosh'gajin. If only one crowd control is available, focus down the other add first then move on to the Vosh'gajin.",
			{
				role = DAMAGE,
				"Use your crowd control abilities to render the adds useless. If only one crowd control is available, focus down one add first before moving on to Shadow Hunter Vosh'gajin. Mages and Druids need to decurse the {spell:8282}. {spell:22566} can affect multiple party members at a time.",
			},
			{
				role = HEALER,
				"Healing this fight will be harder if only one crowd control ability is available. Be aware of who is affected by {spell:22566}. Decurse the {spell:8282} whenever possible.",
			},
			{
				role = TANK,
				"Pull Vosh'gajin away from the group while your damage dealer utilize crowd control and burn down one of the adds. Allow damage dealers to damage the boss until crowd control breaks, then prioritize the other add over the Vosh'gajin.",
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
		npcs = { 9237 },
		overview = {
			"A fearsome orc warrior, War Master Voone stands as the commander of the Blackrock orcs in Lower Blackrock Spire. His martial prowess and unwavering devotion to Warchief Rend Blackhand have propelled him to a crucial role in the Spire's hierarchy.",
			"Voone's responsibility includes training and leading the orcish forces within the Spire, ensuring their readiness for any challenge. His presence is integral to maintaining the Blackrock orcs' dominance within this stronghold.",
			{ heading = "Overview" },
			"War Master Vonne is located at the end of the long hallway full of trolls, down the large ramp from Vosh'gajin. Vonne has no adds, but hits incredibly hard.",
			{
				role = DAMAGE,
				"Allow for the tank to initiate and maintain threat on Voone. If you pull Voone off the tank, you will probably not survive. Do not stand in front of the Voone as you will take significant damage from {spell:5532}.",
			},
			{
				role = HEALER,
				"Voone hits pretty hard. Be on top of making sure that the tank is healed up at all times.",
			},
			{
				role = TANK,
				"Pull War Master Voone away from the group and put your back to a wall to avoid your melee damage dealers being hit by {spell:5532}. Be ready to use defensive cooldowns as necessary as Voone hits pretty hard.",
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
		npcs = { 10596 },
		overview = {
			"In the darkest depths of Lower Blackrock Spire dwells Mother Smolderweb, a massive and relentless arachnid. She is notorious for her deadly web-spinning abilities and her unyielding aggression towards intruders.",
			"Smolderweb's lair is a testament to the dangers that lurk within the Spire, and her presence serves as a reminder that even the most tenacious adventurers must tread carefully in this treacherous domain.",
			{ heading = "Overview" },
			"Mother Smolderweb is a spider who lies in Lower Blackrock Spire at the top of the webbed area littered with Spire Spiders and Spire Spiderlings. Smolderweb has two abilities, both of which stun party members. The immature Venom Sac dropped from the surrounding spiders can cure the Mother's Milk poison effect, as well as other in-game poisons.",
			{
				role = DAMAGE,
				"Stay behind Mother Smolderweb to avoid being hit by {spell:16104}, and try to stay at maximum range to avoid {spell:16468}. Both abilities will stun you. Allow the tank to initiate and hold threat so that Smolderweb does not turn around and {spell:16104} the entire group.",
			},
			{
				role = HEALER,
				"The tank will take additional damage when affected by {spell:16104} as they will be able to defend themselves. Increase your healing output at these times. Maintain maximum distance from Smolderweb to avoid being affected by {spell:16468}.",
			},
			{
				role = TANK,
				"Tank the boss facing away from the group. You will be affected by {spell:16104} from time to time and be stunned. Ensure your threat level is high enough that the damage dealers do not pull Smolderweb from you while you are stunned.",
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
		npcs = { 10584 },
		overview = {
			"Powerful and ruthless, Urok Doomhowl commands the Scarshield Legion within Lower Blackrock Spire. His tactical brilliance and ability to unite the Blackrock orcs and ogres make him a pivotal figure in the Spire's defense.",
			"Doomhowl's role involves rallying the forces of the Legion, ensuring they stand ready to defend their territory. His presence in the Spire represents the formidable alliance of the Blackrock orcs and the ogres under his command.",
			{ heading = "Overview" },
			"Urok Doomhowl is a summoned boss using Ommokk's Head and Roughshod Pike at the Tribute Pile in the room full of ogres after Mother Smolderweb's Lair. Once you start the event, waves of elites ogres will flood the room. Every 30 seconds, you can utilize the Roughshod Pike in the Tribute Pile to kill one of the ogres immediately. Try to utilize crowd control as much as possible as well. Once Urok Doomhowl appears, finish off the other ogres and allow your tank to establish threat on him.",
			{
				role = DAMAGE,
				"Use as many crowd control abilities as possible on ogres as they run in the room. Once Urok enters the room, allow your tank to establish threat. {spell:16508} can be dispelled.",
			},
			{
				role = HEALER,
				"Keep your tank's health up and be aware of which damage dealers have threat on the adds as they come in the room. Especially when crowd control breaks, an ogre may run straight for the player who used {spell:27760}.",
			},
			{
				role = TANK,
				"Try to keep as many of the adds occupied as possible, and be aware of crowd control spells breaking. Urok himself hits pretty hard and may fear the group around with {spell:16508}.",
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
		npcs = { 9736 },
		overview = {
			"Within the logistical heart of Lower Blackrock Spire, Quartermaster Zigris, a cunning orc, manages the essential operations, supplying the Blackrock orcs with weapons, armor, and resources. His role is vital to the Spire's function as a stronghold of the Blackrock clan.",
			"Zigris's resourcefulness and dedication to ensuring the Blackrock orcs are well-equipped have earned him a central position within the Spire's hierarchy.",
			{ heading = "Overview" },
			"Quartermaster Zigris is a boss found after Urok's room in the Lower Blackrock Spire.",
			{
				role = DAMAGE,
				"This fight is simple, focus damage on Zigris, spread out to avoid being hit by {spell:16497}.",
			},
			{
				role = HEALER,
				"This fight is simple, focus healing on the tank, spread out to avoid being hit by {spell:16497}.",
			},
			{
				role = TANK,
				"This fight is simple, maintain threat on Zigris, spread out to avoid being hit by {spell:16497}.",
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
		npcs = { 10220 },
		overview = {
			"Guarding the halls of Upper Blackrock Spire, Halycon, a massive Worg, that reflects the raw elemental forces harnessed by the Blackrock orcs. Its fiery nature and ferocious temperament make it a formidable obstacle for any intruders.",
			"Halycon's presence within the Spire stands as a testament to the dangers adventurers face when delving into this treacherous domain.",
			{ heading = "Overview" },
			"Halycon is a giant Worg boss who is accompanied by Worg pups. As soon as Halycon is defeated, prepare for Gizrul the Slavener to run into combat - there is not much time in between encounters.",
			{
				role = DAMAGE,
				"Make the Worg pups your primary focus while the tank establishes threat on Halycon. Siwtch to Haylcon once all pups are defeated.",
			},
			{
				role = HEALER,
				"At the beginning of the encounter, your damage dealers will be taking damage from the Worg pups. Try to use Healing Over Time effects and shield to keep everyone sage at the beginning of the encounter. Watch your healing threat until the tank has safely picked up the adds. Once the adds are down, simply focus your healing output on the tank. ",
			},
			{
				role = TANK,
				"Allow your damage dealers to handle the low health Worg pups at the beginning of the encounter. Pull Halycon away from the group and ensure you maintain threat on Haylcon.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Gizrul the Slavener",
		encounterID = 10268,
		portrait = 607615,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 10268 },
		overview = {
			"In the upper reaches of Blackrock Spire, Gizrul the Slavener, a fearsome black drake, has taken up residence. He is known for his insatiable hunger for destruction and his fiery breath.",
			"Gizrul's presence within the Spire serves as a chilling reminder of the raw, unbridled power that the Blackwing orcs wield, especially in their mastery over dragons and dark experiments.",
			{ heading = "Overview" },
			"Gizrul the Slavener is another Worg boss who will enter into combat shortly after Halycon has been defeated. All group members should eat and drink quickly before Gizrul comes into engagement.",
			{
				role = DAMAGE,
				"Gizrul the Slavener will enter into combat shortly after Halycon has been defeated. Focus damage on Gizrul.",
			},
			{
				role = HEALER,
				"Your tank should be the only one taking damage, and they may take a large amount of damage. Gizrul's {spell:16128} is a Damage Over Time effect, and your tank will require additional healing.",
			},
			{
				role = TANK,
				"Gizril is a simple fight, utilize defensive cooldowns when Gizrul uses {spell:8269}, and be aware that {spell:16128} will place a Damage Over Time effect on you. ",
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
		npcs = { 9568 },
		overview = {
			"Overlord Wyrmthalak, a cunning and fierce warrior, commands the Blackrock orcs in Upper Blackrock Spire. His mastery of both martial combat and dark magic is legendary, making him a driving force behind the Blackrock orcs' efforts to maintain control.",
			"Wyrmthalak's strategic brilliance and unwavering loyalty to Warchief Rend Blackhand have earned him a central role within the Spire's hierarchy.",
			{ heading = "Overview" },
			"Overlord Wyrmthalak is the final boss in Lower Blackrock Spire, and is a preview to the type of mobs you will become more and more familiar with as you enter into Upper Blackrock Spire and eventually Blackwing Lair. Wyrmthalak summons adds at 50% health which can be crowd controlled.",
			{
				role = DAMAGE,
				"Stay behind Overlord Wyrmthalak to avoid being hit by {spell:19983}, and maintain maximum range to negate {spell:25322}. When Wyrmthalak summons adds at 50%, utilize crowd control effects and focus the boss down before switching over to the adds.",
			},
			{
				role = HEALER,
				"Healing this fight is straightforward, conserve mana as much as possible while keeping your tank's health up. Watch your healing threat for a few seconds as the adds spawn when Wyrmthalak reaches 50% health, this will allow your tank to pick them up. ",
			},
			{
				role = TANK,
				"Tank Overlord Wyrmthalak up against the wall behind his spawn location, mostly to keep the group from being hit by {spell:19983} or {spell:25322}. When adds spawn at 50%, your group should be able to crowd control them. If not, taunt them to you and maintain threat while the group burns down Wyrmthalak, then the adds.",
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
		npcs = { 9816 },
		overview = {
			"Within the upper levels of Blackrock Spire, Pyroguard Emberseer, a formidable fire elemental, stands as a loyal servant of the Blackrock orcs. He harnesses the destructive power of flames to protect their interests.",
			"Emberseer's fiery presence within the Spire is a symbol of the elemental forces that the Blackrock clan has harnessed, and his formidable abilities make him a potent guardian.",
			{ heading = "Overview" },
			"Pyroguard Emberseer is the first boss in Upper Blackrock Spire, and is mandatory to move forward in the instance. Emberseer is summoned by having 3 or more group members click the Blackrock Altar in the room. Initially your group will have to defeat a few waves of Incarcerators, but they have low health and will easily be killed with Area of Effect damaging abilities.",
			{
				role = DAMAGE,
				"Focus down the adds before Emberseer spawns. Ranges damage dealers should stay away from Pyroguard Emberseer to avoid being hit with {spell:12470}. Do not overtake your tank from the primary threat position.",
			},
			{
				role = HEALER,
				"Be aware taht your melee group will be taking damage from {spell:12470}. Stand away from the boss and focus your healing throughout the melee group while focusing the tank.",
			},
			{
				role = TANK,
				"Fight Pyroguard Emberseer away from your ranged damage dealer group while maintaing the primary threat position.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Solakar Flamewreath",
		encounterID = 9816,
		portrait = 607737,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 10264 },
		overview = {
			"Solakar Flamewreath is a sinister and powerful figure lurking within the depths of Upper Blackrock Spire. His role within the Blackrock orc hierarchy is that of a sinister spellcaster, devoted to dark incantations and sinister rituals. Solakar's mastery over dark magic and his unwavering loyalty to the Blackrock clan make him a feared and formidable adversary.",
			"His presence in the Spire adds an element of arcane intrigue and danger, as he seeks to expand the dominion of the Blackrock orcs within the fortress.",
			{ heading = "Overview" },
			"Solakar Flamewreath is a special boss that only spawns during the Father Flame event in the Rookery of Upper Blackrock Spire. Solakar spawns some adds who need to be managed.",
			{
				role = DAMAGE,
				"Focus down the adds when they spawn. Otherwise, focus all damage output on Solakar Flamewreath. Ranged damage dealers should stand away from the Solakar to avoid {spell:20549}.",
			},
			{
				role = HEALER,
				"Stand away from Solakar Flamewreath to avoid {spell:20549}. Keep your group members health up while focusing on healing the tank.",
			},
			{
				role = TANK,
				"Tank Solakar Flamewreath against the wall where it spawns. Pick up adds as they spawn, and ensure they do not attack your healers. Maintain threat on Solakar while your damage dealers burn it down.",
			}
		},
		abilities = {
			
		}
	},
	{
		name = "Goraluk Anvilcrack",
		encounterID = 10339,
		portrait = 521744,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 10899 },
		overview = {
			"Goraluk Anvilcrack is a resolute and commanding figure within Upper Blackrock Spire, holding a prominent position among the Blackrock orcs. As a leader and enforcer, Goraluk is known for his unwavering loyalty to the Blackrock clan and his unyielding determination to extend their dominion within the Spire.",
			"His formidable presence and leadership skills make him a key figure in the hierarchy of Upper Blackrock Spire, and a challenging adversary for any who cross his path.",
			{ heading = "Overview" },
			"Garaluk Anvilcrack is a basic melee encounter that is completely optional and often skipped. Goraluk does drop some significant Blacksmithing Patterns.",
			{
				role = DAMAGE,
				"This fight is a simple encounter. Focus damage on Goraluk Anvilcrack and do not overtake the primary threat position from your tank.",
			},
			{
				role = HEALER,
				"Focus on healing your tank while standing away from Goraluk. Your tank will require extra healing when stunned from {spell:6253}.",
			},
			{
				role = TANK,
				"Tank the boss away from the group. The off tank should get aggro or {spell:355} Goraluk when the main tank is stunned from {spell:6253}.",
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
		npcs = { 10429, 10339 },
		overview = {
			"Warchief Rend Blackhand, the charismatic and ruthless leader of the Blackrock orcs, seeks to expand their dominion within Upper Blackrock Spire. His ambition and determination have made him a central figure in the Spire's hierarchy and a formidable adversary.",
			"Rend's leadership is marked by his unwavering loyalty to the Blackrock clan and his willingness to do whatever it takes to secure their dominance in the fortress.",
			{ heading = "Overview" },
			"Warchief Rend Blachand is encounter in the Hall of Blackhand, where he is accompanied by Gyth, a monstrous chromatic dragon. Rend is a challenging boss who will require your group to be on top of their game. Rend will summon waves of adds throughout the fight, and will also summon a second dragon, Vaelastrasz the Corrupt, at 50% health. The adds that Rend summons can be crowd controlled, and should be focused down before switching back to Rend. Vaelastrasz the Corrupt should be crowd controlled and ignored until Rend is defeated.",
			{
				role = DAMAGE,
				"Once the two together are brought down to 20% and become two separate mobs, focus down Gyth first, then siwtch to Rend. Stay behind Gyth to avoid being hit with {spell:20667} or {spell:9573}. Melee damage dealers should avoid Rend's {spell:13736} as best as possible. Ranged damage dealers should stay at maximum distance to avoid being hit by {spell:13736} or {spell:15588}.",
			},
			{
				role = HEALER,
				"Assign a healer to each tank, begin mindful that some raid healing will be needed throughout the fight. Stay at maximum range to avoid being hit by Rend's {spell:13736} or {spell:15588} abilities.",
			},
			{
				role = TANK,
				"Have the main tank stay on Gyth while the Off tank picks up Rend. The raid will focus down Gyth then switch to Rend. The main tank should avoid being in range of Rend's {spell:13736} or {spell:15588} while both mobs are alive.",
			},
		},
		abilities = {
			
		}
	},
	{
		name = "The Beast",
		encounterID = 10430,
		portrait = 607786,
		loot = { 12345, 12345, 12345, 12534, 13423, 213423, 14235 },
		npcs = { 10430 },
		overview = {
			"The Beast, a massive core hound, guards the halls of Upper Blackrock Spire. It is a two-headed behemoth that reflects the raw elemental forces harnessed by the Blackrock orcs. Its fiery nature and ferocious temperament make it a formidable obstacle for any intruders.",
			"The Beast's presence within the Spire stands as a testament to the dangers adventurers face when delving into this treacherous domain.",
			{ heading = "Overview" },
			"The Beast is a challenging boss that is located in The Furnance area of Upper Blackrock Spire. Be sure that all surrounding adds are cleared, and be aware that stealth Blackhand Assassins may be in the room.",
			{
				role = DAMAGE,
				"Ranged damage dealers need to be at maximum distance to outrange the {spell:5782} and {spell:16785} mechanics. You are going to be charged by The Beast at some point, so use some self healing to take stress off the healers.",
			},
			{
				role = HEALER,
				"Be aware of who is being charged by The Beast so you can give them a little extra healing. The tanks and melee group will take Area of Effect damage from {spell:16785}, so try to keep everyone's health up. Stay at maximum distance to outrange the {spell:5782} and {spell:16785} mechanics",
			},
			{
				role = TANK,
				"Stay at the top of the threat meter so that The Beast will return to a tank  after charging another member of the raid. Tank The Beast with your back facing a wall so that you are not tossed around by the knockback portion of the {spell:16785} mechanic.",
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
		npcs = { 10363 },
		overview = {
			"General Drakkisath, a high-ranking officer in the Blackrock army, stands as the final boss of Upper Blackrock Spire. Known for his strategic brilliance and loyalty to Warchief Rend Blackhand, he plays a pivotal role in defending the upper levels of the Spire and ensuring the dominance of the Blackrock clan.",
			"Drakkisath's presence within the Spire represents the unwavering commitment of the Blackrock orcs to maintain control of this formidable fortress.",
			{ heading = "Overview" },
			"General Drakkisath is the final boss in Upper Blackrock Spire, and is accompanied by two Chromatic Elite Guard adds. Drakkisath is required for attunement to both the Onyxia and Blackwing Lair 40 man raids. This fight is the most difficult in Upper Blackrock Spire, and is typically approached by assigning a Hunter using Aspect of the Cheetah or a confidant Mage using Blink on cooldown kiting Drakkisath back around The Beast's room before returning to the raid.",
			{
				role = DAMAGE,
				"Focus down whichever Chromatic Elite Guard is assigned to your main tank, then move to the other Chromatic ELite Guard. When both are dead, move on to Drakkisath. One damage dealer, typically a Hunter, needs to kite Drakkisath back around The Beast's room before returning to the raid. Stay behind Drakkisath to avoid being hit by {spell:9573} or {spell:20569}. Ranged damage dealers need to be at maximum distance to avoid being hit by {spell:16805} and {spell:8078}.",
			},
			{
				role = HEALER,
				"Assign a healer to your tanks and make sure someone is spreading out Healing Over Time effects on the raid. Do not cast any spells on the player who is kiting Drakkisath because you will end up generating threat and pulling the boss back in the room. The first tank that engages Drakkisath will eventually be hit by {spell:16805} and take lots of damage. Heal them up and also start healing the off tank who is now the focus of threat.",
			},
			{
				role = TANK,
				"One tank should be assigned to each of the two Chromatic Elite Gaurds. The main tank's Guard shoud be killed first so that they can be ready to pick up Drakkisath when he comes back around. Face the Drakkisath towards a wall and away from the group to avoid unnecessarily spreading damage from {spell:9573} or {spell:20569}. When Drakkisath casts {spell:16805}, the off tank needs to {spell:355} the Drakkisath onto him.",
			}
		},
		abilities = {
			
		}
	},
})
