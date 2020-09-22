afarathu_cult_leader_poi = Creature:new {
	objectName = "@mob/creature_names:afarathu_cult_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "afarathu",
	faction = "afarathu",
	level = 190,
	chanceHit = 4.0,
	damageMin = 800,
	damageMax = 1200,
	baseXp = 30000,
	baseHAM = 250000,
	baseHAMmax = 263000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,40},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_selonian_m_01.iff",
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
			lootChance = 7000000
		},
		{	
			groups = {
				{group = "afarathu_cave_rare", chance = 10000000}
			},
			lootChance = 1500000
		},
			
	},
	weapons = {"afarathu_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(afarathu_cult_leader_poi, "afarathu_cult_leader_poi")
