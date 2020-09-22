garyns_mugger_poi = Creature:new {
	objectName = "@mob/creature_names:garyn_mugger",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 121,
	chanceHit = 4,
	damageMin = 445,
	damageMax = 700,
	baseXp = 11390,
	baseHAM = 50000,
	baseHAMmax = 52000,
	armor = 2,
	resists = {55,55,70,60,30,30,95,40,-1},
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

	templates = {
		"object/mobile/dressed_garyn_mugger_twk_female_01.iff",
		"object/mobile/dressed_garyn_mugger_twk_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1000000},
				{group = "misc_decoloot_schemes", chance = 1800000},
				{group = "pistols", chance = 1000000},
				{group = "tailor_components", chance = 1750000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "garyn_poi_common", chance = 2000000},
				{group = "garyn_rare", chance = 450000}
			},
			lootChance = 8500000,
		},
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(garyns_mugger_poi, "garyns_mugger_poi")
