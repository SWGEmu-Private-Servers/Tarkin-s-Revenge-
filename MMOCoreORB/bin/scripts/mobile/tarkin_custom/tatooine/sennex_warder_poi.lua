sennex_warder_poi = Creature:new {
	objectName = "@mob/creature_names:sennex_warder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sennex",
	faction = "pirate",
	level = 80,
	chanceHit = 1.0,
	damageMin = 400,
	damageMax = 500,
	baseXp = 8100,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
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
			lootChance = 100000
		},
		{	
			groups = {
				{group = "sennex_cave_rare", chance = 10000000},	
			},
			lootChance = 50000
		},		
	},
	weapons = {"sennex_melee_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sennex_warder_poi, "sennex_warder_poi")
