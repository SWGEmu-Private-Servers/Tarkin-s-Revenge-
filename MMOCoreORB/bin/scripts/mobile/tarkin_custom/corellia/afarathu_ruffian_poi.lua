afarathu_ruffian_poi = Creature:new {
	objectName = "@mob/creature_names:afarathu_cult_ruffian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "afarathu",
	faction = "afarathu",
	level = 60,
	chanceHit = 0.6,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8100,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 0,
	resists = {50,50,60,10,40,50,20,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_selonian_f_01.iff",
		"object/mobile/dressed_selonian_f_02.iff",
		"object/mobile/dressed_selonian_f_03.iff",
		"object/mobile/dressed_selonian_f_04.iff",
		"object/mobile/dressed_selonian_f_05.iff",
		"object/mobile/dressed_selonian_f_06.iff",
		"object/mobile/dressed_selonian_f_07.iff",
		"object/mobile/dressed_selonian_f_08.iff",
		"object/mobile/dressed_selonian_f_09.iff",
		"object/mobile/dressed_selonian_f_10.iff",
		"object/mobile/dressed_selonian_f_11.iff",
		"object/mobile/dressed_selonian_f_12.iff",
		"object/mobile/dressed_selonian_m_01.iff",
		"object/mobile/dressed_selonian_m_02.iff",
		"object/mobile/dressed_selonian_m_03.iff",
		"object/mobile/dressed_selonian_m_04.iff",
		"object/mobile/dressed_selonian_m_05.iff",
		"object/mobile/dressed_selonian_m_06.iff",
		"object/mobile/dressed_selonian_m_07.iff",
		"object/mobile/dressed_selonian_m_08.iff",
		"object/mobile/dressed_selonian_m_09.iff",
		"object/mobile/dressed_selonian_m_10.iff",
		"object/mobile/dressed_selonian_m_11.iff",
		"object/mobile/dressed_selonian_m_12.iff"},
	lootGroups = {
		{
			groups = {
				{group = "afarathu_cave_common", chance = 1600000},
				{group = "generic_tech", chance = 2000000},
				{group = "generic_consoles", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "printer_parts", chance = 1600000},
				{group = "color_crystals", chance = 1600000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 50000
		},
		{	
			groups = {
				{group = "afarathu_cave_rare", chance = 10000000}
			},
			lootChance = 50000
		},
			
	},
	weapons = {"afarathu_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,carbineermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(afarathu_ruffian_poi, "afarathu_ruffian_poi")
