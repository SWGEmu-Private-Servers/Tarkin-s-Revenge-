garyns_thief_poi = Creature:new {
	objectName = "@mob/creature_names:garyn_thief",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 80,
	chanceHit = 0.75,
	damageMin = 285,
	damageMax = 425,
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_garyn_theif_zabrak_male_01.iff",
		"object/mobile/dressed_garyn_theif_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1000000},
				{group = "misc_decoloot_schemes", chance = 1800000},
				{group = "pistols", chance = 1000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "garyn_poi_common", chance = 2000000},
				{group = "garyn_rare", chance = 200000}
			},
			lootChance = 6500000,
		},
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(garyns_thief_poi, "garyns_thief_poi")
