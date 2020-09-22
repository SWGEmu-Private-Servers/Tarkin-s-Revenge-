sennex_guard_poi = Creature:new {
	objectName = "@mob/creature_names:sennex_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sennex",
	faction = "pirate",
	level = 121,
	chanceHit = 2.0,
	damageMin = 600,
	damageMax = 745,
	baseXp = 11390,
	baseHAM = 50000,
	baseHAMmax = 51000,
	armor = 2,
	resists = {55,55,70,60,30,30,95,40,55},
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

	templates = {"object/mobile/dressed_sennex_pirate_01.iff",
		"object/mobile/dressed_sennex_pirate_02.iff",
		"object/mobile/dressed_sennex_pirate_03.iff",
		"object/mobile/dressed_sennex_pirate_04.iff",
		"object/mobile/dressed_sennex_pirate_05.iff",
		"object/mobile/dressed_sennex_pirate_06.iff",
		"object/mobile/dressed_sennex_pirate_07.iff",
		"object/mobile/dressed_sennex_pirate_08.iff",
		"object/mobile/dressed_sennex_pirate_09.iff",
		"object/mobile/dressed_sennex_pirate_10.iff",
		"object/mobile/dressed_sennex_pirate_11.iff",
		"object/mobile/dressed_sennex_pirate_12.iff"},
	lootGroups = {
		{
			groups = {
				{group = "sennex_cave_common", chance = 2000000},
				{group = "generic_consoles", chance = 900000},
				{group = "generic_tech", chance = 900000},
				{group = "pistols", chance = 900000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "heavy_weapons", chance = 500000},
				{group = "heavy_weapons_rifle", chance = 500000},
				{group = "printer_parts", chance = 600000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "tailor_components", chance = 900000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}	
			},
			lootChance = 300000
		},
		{	
			groups = {
				{group = "sennex_cave_rare", chance = 10000000},	
			},
			lootChance = 300000
		},		
	},
	weapons = {"sennex_rifle_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(sennex_guard_poi, "sennex_guard_poi")
