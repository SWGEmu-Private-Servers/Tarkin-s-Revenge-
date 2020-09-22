garyns_marauder_poi = Creature:new {
	objectName = "@mob/creature_names:garyn_marauder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 136,
	chanceHit = 4,
	damageMin = 500,
	damageMax = 750,
	baseXp = 12400,
	baseHAM = 52000,
	baseHAMmax = 58000,
	armor = 2,
	resists = {70,85,85,90,85,90,85,90,-1},
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
		"object/mobile/dressed_garyn_marauder_zabrak_male_01.iff",
		"object/mobile/dressed_garyn_marauder_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1000000},
				{group = "misc_decoloot_schemes", chance = 1800000},
				{group = "pistols", chance = 1000000},
				{group = "tailor_components", chance = 1700000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "garyn_poi_common", chance = 2000000},
				{group = "garyn_rare", chance = 500000}
			},
			lootChance = 9500000,
		},
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,bountyhuntermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(garyns_marauder_poi, "garyns_marauder_poi")
