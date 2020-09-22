jawa_warlord_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_warlord",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jawa",
	faction = "jawa",
	level = 120,
	chanceHit = 0.55,
	damageMin = 400,
	damageMax = 800,
	baseXp = 25097,
	baseHAM = 40000,
	baseHAMmax = 55000,
	armor = 2,
	resists = {35,35,35,35,35,-1,35,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "jawa_common", chance = 4060000},
				{group = "armor_all", chance = 1700000},
				{group = "tailor_components", chance = 1400000},
				{group = "loot_kit_parts", chance = 1700000},
				{group = "jawa_rare", chance = 100000},
				{group = "deed_voucher", chance = 40000},
				{group = "clothing_attachments", chance = 100000},
				{group = "clothing_attachments", chance = 100000},
				{group = "color_crystals", chance = 800000}
			},
			lootChance = 7000000
		}					
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_warlord_poi, "jawa_warlord_poi")
