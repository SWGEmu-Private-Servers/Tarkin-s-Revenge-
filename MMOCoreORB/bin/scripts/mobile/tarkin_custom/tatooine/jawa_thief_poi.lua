jawa_thief_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_thief",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jawa",
	faction = "jawa",
	level = 40,
	chanceHit = 0.27,
	damageMin = 150,
	damageMax = 270,
	baseXp = 9097,
	baseHAM = 22000,
	baseHAMmax = 29000,
	armor = 1,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "jawa_common", chance = 4100000},
				{group = "armor_all", chance = 1700000},
				{group = "tailor_components", chance = 1400000},
				{group = "loot_kit_parts", chance = 1700000},
				{group = "jawa_rare", chance = 100000},
				{group = "clothing_attachments", chance = 100000},
				{group = "clothing_attachments", chance = 100000},
				{group = "color_crystals", chance = 800000}
			},
			lootChance = 5000000
		}					
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_thief_poi, "jawa_thief_poi")
