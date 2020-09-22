sennex_lookout_poi = Creature:new {
	objectName = "@mob/creature_names:sennex_lookout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sennex",
	faction = "pirate",
	level = 60,
	chanceHit = 0.6,
	damageMin = 250,
	damageMax = 300,
	baseXp = 7800,
	baseHAM = 23000,
	baseHAMmax = 35000,
	armor = 0,
	resists = {30,45,40,50,40,10,50,30,-1},
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
	},
	weapons = {"sennex_pistol_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(sennex_lookout_poi, "sennex_lookout_poi")
