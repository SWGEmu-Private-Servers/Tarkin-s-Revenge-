garyns_prowler_poi = Creature:new {
	objectName = "@mob/creature_names:garyn_prowler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 65,
	chanceHit = 0.65,
	damageMin = 250,
	damageMax = 300,
	baseXp = 7235,
	baseHAM = 30000,
	baseHAMmax = 34000,
	armor = 1,
	resists = {30,30,10,30,30,15,30,20,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_garyn_prowler_trandoshan_female_01.iff",
		"object/mobile/dressed_garyn_prowler_trandoshan_male_01.iff"},
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
			lootChance = 5500000,
		},
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermid,marksmanmid,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(garyns_prowler_poi, "garyns_prowler_poi")
