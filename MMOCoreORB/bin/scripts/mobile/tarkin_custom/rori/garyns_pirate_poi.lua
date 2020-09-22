garyns_pirate_poi = Creature:new {
	objectName = "@mob/creature_names:garyn_pirate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 100,
	chanceHit = 0.9,
	damageMin = 350,
	damageMax = 450,
	baseXp = 9803,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 1,
	resists = {50,20,5,25,70,-1,25,50,-1},
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
		"object/mobile/dressed_garyn_pirate_zabrak_female_01.iff",
		"object/mobile/dressed_garyn_pirate_zabrak_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1000000},
				{group = "misc_decoloot_schemes", chance = 1800000},
				{group = "pistols", chance = 1000000},
				{group = "tailor_components", chance = 1800000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "garyn_poi_common", chance = 2000000},
				{group = "garyn_rare", chance = 400000}
			},
			lootChance = 7500000,
		},
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(garyns_pirate_poi, "garyns_pirate_poi")
