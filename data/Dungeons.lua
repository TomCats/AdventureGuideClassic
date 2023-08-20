--[[
Copyright (C) 2023 FooxyTV (simon@fooxy.tv)
All rights reserved.

Programming by: TomCat / TomCat's Gaming
]]
select(2, ...).SetupGlobalFacade()

Dungeons, DungeonsByInstanceID = DynamicTable.MakeDynamic(
		{
			instanceID = 1,
			name = 2,
			description = 3,
			bgImage = 4,
			buttonImage1 = 5,
			loreImage = 6,
			buttonImage2 = 7,
			dungeonAreaMapID = 8,
			link = 9,
			shouldDisplayDifficulty = 10,
			mapID = 11
		},
		{
			{ 227, "Blackfathom Deeps", "Once dedicated to the night elves' goddess Elune, Blackfathom Deeps was thought to have been destroyed during the Sundering, lost beneath the ocean. Millennia later, members of the Twilight's Hammer cult were drawn to the temple by whispers and foul dreams. After sacrificing untold numbers of innocents, the cult was rewarded with a new task: to protect one of the Old Gods' most cherished creatures, a pet that is still in need of nurturing before he can unleash his dark powers on the world.", 608156, 608195, 608234, 136325, 0, "[Blackfathom Deeps]", true, 48, false },
			{ 228, "Blackrock Depths", "The smoldering Blackrock Depths are home to the Dark Iron dwarves and their emperor, Dagran Thaurissan. Like his predecessors, he serves under the iron rule of Ragnaros the Firelord, a merciless being summoned into the world centuries ago. The presence of chaotic elementals has attracted Twilight's Hammer cultists to the mountain domain. Along with Ragnaros' servants, they have pushed the dwarves toward increasingly destructive ends that could soon spell doom for all of Azeroth.", 608157, 608196, 608235, 136326, 0, "[Blackrock Depths]", true, 230, false },
			{ 63, "Deadmines", "It is said the Deadmines' gold deposits once accounted for a third of Stormwind's treasure reserves. Amid the chaos of the First War, the mines were abandoned and later thought to be haunted, leaving them relatively untouched until the Defias Brotherhood--a group of former laborers turned brigands--claimed the labyrinth as a base of operations for its subversive activities against Stormwind.", 522336, 522352, 526404, 136332, 0, "[Deadmines]", true, 36, false },
			{ 230, "Dire Maul", "Built thousands of years ago to house the kaldorei's arcane secrets, the formerly great city of Eldre'Thalas now lies in ruin, writhing with warped, twisted forces. Competing covens once fought for control of Dire Maul's corrupted energy, but they have since settled into uneasy truces, choosing to exploit the power within their own territories rather than continue to battle over the entire complex.", 608161, 608200, 608239, 136333, 0, "[Dire Maul]", true, 429, false },
			{ 231, "Gnomeregan", "Built deep within the mountains of Dun Morogh, the wondrous city of Gnomeregan was a testament to the gnomes' intelligence and industry. But when the capital was invaded by troggs, the gnomish high tinker was betrayed by his advisor Sicco Thermaplugg. As a result, Gnomeregan was irradiated, and most of its inhabitants slain. The surviving gnomes fled, vowing to return someday and retake their home.", 608163, 608202, 608241, 136336, 0, "[Gnomeregan]", true, 90, false },
			{ 229, "Lower Blackrock Spire", "This imposing fortress, carved into the fiery core of Blackrock Mountain, represented the might of the Dark Iron clan for centuries. More recently, the black dragon Nefarian and his spawn seized the keep's upper spire and ignited a brutal war against the dwarves. The draconic armies have since allied with Warchief Rend Blackhand and his false Horde. This combined force lords over the spire, conducting horrific experiments to bolster its ranks while plotting the meddlesome Dark Irons' downfall.", 608158, 608197, 608236, 136327, 0, "[Lower Blackrock Spire]", true, 229, false },
			{ 232, "Maraudon", "According to legend, Zaetar, son of Cenarius, and the earth elemental princess Theradras begot the barbaric centaur race. Shortly after the centaur's creation, the ruthless creatures murdered their father. The grief-stricken Theradras is said to have trapped her lover's spirit within Maraudon, corrupting the region. Now, vicious centaur ghosts and twisted elemental minions roam every corner of the sprawling caves.", 608170, 608209, 608248, 136345, 0, "[Maraudon]", true, 349, false },
			{ 226, "Ragefire Chasm", "Ragefire Chasm extends deep below the city of Orgrimmar. Barbaric troggs and devious Searing Blade cultists once plagued the volcanic caves, but now a new threat has emerged: dark shaman. Although Warchief Garrosh Hellscream recently called on a number of shaman to use the elements as weapons against the Alliance, the chasm's current inhabitants appear to be renegades. Reports have surfaced that these shadowy figures are amassing a blistering army that could wreak havoc if unleashed upon Orgrimmar.", 608172, 608211, 608250, 136350, 0, "[Ragefire Chasm]", true, 389, false },
			{ 233, "Razorfen Downs", "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Recently, scouts have reported seeing undead milling about the region, engendering fears that the dreaded Scourge may be moving to conquer Kalimdor.", 608173, 608212, 608251, 136352, 0, "[Razorfen Downs]", true, 129, false },
			{ 234, "Razorfen Kraul", "Legends state that where the demigod Agamaggan fell, his blood gave rise to great masses of thorny vines. Many quilboar have taken up residence in the largest cluster of giant thorns, the Razorfen, which they revere as Agamaggan's resting place.", 608174, 608213, 608252, 136353, 0, "[Razorfen Kraul]", true, 47, false },
			{ 311, "Scarlet Halls", "The Crusade's fiercest warriors, those who have held their ground and fought to defend the monastery throughout these dark times, are rapidly preparing an army within the Scarlet Halls. These soldiers are bound by their hatred of the unliving, and they are willing to sacrifice everything for their order's righteous cause.", 643259, 643262, 643265, 643268, 0, "[Scarlet Halls]", true, 1001, false },
			{ 316, "Scarlet Monastery", "The Crusade's fanatical leaders direct their followers from the Scarlet Cathedral, at the heart of the monastery grounds. This heavily guarded location functions as the order's headquarters, and some of the most zealous and intolerant crusaders roam the halls of this once-hallowed place.", 608175, 608214, 608253, 136354, 0, "[Scarlet Monastery]", true, 1004, false },
			{ 246, "Scholomance", "Individuals seeking to master the powers of undeath know well of Scholomance, the infamous school of necromancy located in the dark and foreboding crypts beneath Caer Darrow. In recent years, several of the instructors have changed, but the institution remains under the control of Darkmaster Gandling, a particularly sadistic and insidious practitioner of necromantic magic.", 608176, 608215, 608254, 136355, 0, "[Scholomance]", true, 1007, false },
			{ 64, "Shadowfang Keep", "Looming over Pyrewood Village from the southern bluffs of Silverpine Forest, Shadowfang Keep casts a shadow as dark as its legacy. Sinister forces occupy these ruins, formerly the dwelling of the mad archmage Arugal's worgen. The restless shade of Baron Silverlaine lingers, while Lord Godfrey and his cabal of erstwhile Gilnean noblemen plot against their enemies both living and undead.", 522342, 522358, 526410, 136357, 0, "[Shadowfang Keep]", true, 33, false },
			{ 236, "Stratholme", "Stratholme was once the jewel of northern Lordaeron, but today it is remembered for its harrowing fall to ruin. It was here that Prince Arthas turned his back on the noble paladin Uther Lightbringer, slaughtering countless residents believed to be infected with the horrific plague of undeath. Ever since, cursed Stratholme has been marred by death, betrayal, and hopelessness.", 608177, 608216, 608255, 136359, 0, "[Stratholme]", true, 329, false },
			{ 238, "The Stockade", "Stormwind Stockade is a closely guarded prison built beneath the canals of Stormwind City. Warden Thelwater keeps watch over the stockade and the highly dangerous criminals who call it home. Recently, the inmates revolted, overthrowing their guards and plunging the prison into a state of pandemonium.", 608184, 608223, 608262, 136358, 0, "[The Stockade]", true, 34, false },
			{ 237, "The Temple of Atal'hakkar", "Thousands of years ago, the Gurubashi empire was plunged into a civil war by a powerful sect of priests, the Atal'ai, who sought to summon to Azeroth an avatar of their god of blood, Hakkar the Soulflayer. The Gurubashi people exiled the Atal'ai to the Swamp of Sorrows, where the priests built the Temple of Atal'Hakkar. Ysera, Aspect of the green dragonflight, sank the temple beneath the swamp and assigned wardens to ensure that the summoning rituals never be performed again.", 608178, 608217, 608256, 136360, 0, "[The Temple of Atal'hakkar]", true, 109, false },
			{ 239, "Uldaman", "Uldaman is an ancient titan vault buried deep within the earth. It is said the titans sealed away a failed experiment there and then moved on to a new project, related to the genesis of the dwarves. Tales of a fabled treasure containing great knowledge have enticed would-be treasure hunters to dig deeper into the secrets of Uldaman, a task made perilous by the presence of stone defenders, savage troggs, Dark Iron invaders, and other dangers lurking in the lost city.", 608186, 608225, 608264, 136363, 0, "[Uldaman]", true, 70, false },
			{ 240, "Wailing Caverns", "Years ago, the famed druid Naralex and his followers descended into the shadowy Wailing Caverns, named for the mournful cry one hears when steam bursts from the cave system's fissures. Naralex planned to use the underground springs to restore lushness to the arid Barrens. But upon entering the Emerald Dream, he saw his vision of regrowth turn into a waking nightmare, one that has plagued the caverns ever since.", 608190, 608229, 608313, 136364, 0, "[Wailing Caverns]", true, 43, false },
			{ 241, "Zul'Farrak", "Zul'Farrak was once the shining jewel of Tanaris, ferociously protected by the cunning Sandfury tribe. Despite the trolls' tenacity, this isolated group was forced to surrender much of its territory throughout history. Now, it appears that Zul'Farrak's inhabitants are creating a horrific army of undead trolls to conquer the surrounding region. Other disturbing rumors tell of an ancient creature sleeping within the city--one that, if awakened, will rain death and destruction across Tanaris.", 608191, 608230, 608267, 136368, 0, "[Zul'Farrak]", true, 209, false },
		}
)
